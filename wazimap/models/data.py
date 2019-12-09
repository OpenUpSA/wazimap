"""
Models for handling census and other data tables.

`SimpleTable` and `FieldTable` instances describe an underlying Postgres table
and have extra metadata associated with them, such as the universe they cover.
All tables have an `id` which identifies them internally to the user when
exploring datasets.

A `SimpleTable` is like a spreadsheet, with one row per geography. It has
no concept of fields and the table id is set manually. Simple tables are
not split by geography, for no particular reason. Hence, simple table ids
are the same as the underlying Postgres table name.

A `FieldTable` is for census data and may have multiple rows per geography.
The id for a table is derived from the table's fields. The underlying
database has one table (and hence model) per geography, and the name of those
tables is derived from the id and the geography level. Each model is created
dynamically and linked back to its data table.

A `FieldTable` can be looked up based on a required set of fields. This
means that the census controller doesn't care about table names, only
about what fields it requires. If more than one FieldTable could serve
for a set of fields, the one with the fewest extraneous fields is chosen.
"""

from collections import OrderedDict
import re

from django.db import models
from django.utils.text import slugify
from django.contrib.postgres.fields import ArrayField
from django.db.models.signals import post_save
from django.dispatch import receiver

from itertools import groupby
from wazimap.data.base import Base
from wazimap.data.utils import (
    get_session,
    capitalize,
    percent as p,
    add_metadata,
    current_context,
)
from sqlalchemy import Column, String, Table, or_, and_, func, text
from sqlalchemy.exc import NoSuchTableError
from sqlalchemy.orm import class_mapper
import sqlalchemy.types


class DataNotFound(Exception):
    pass


class Dataset(models.Model):
    """ Over-arching collection of data tables, spanning many releases.
    Such as a census that happens every decade. Two data tables from the
    same dataset and using the same universe, are comparable over time.
    """

    name = models.CharField(
        max_length=100,
        null=False,
        blank=False,
        unique=True,
        help_text="Friendly name of this dataset.",
    )

    def __str__(self):
        return self.name

    class Meta:
        ordering = ["name"]


class Release(models.Model):
    name = models.CharField(
        max_length=100,
        null=False,
        blank=False,
        help_text="Name of this release, excluding the year.",
    )
    year = models.CharField(
        max_length=50,
        null=False,
        blank=False,
        help_text="Primary year of this release. Will be used for sorting.",
    )
    citation = models.TextField(
        max_length=None,
        null=True,
        blank=True,
        help_text="What the user should use when citing this data.",
    )
    dataset = models.ForeignKey(
        Dataset, related_name="releases", null=False, on_delete=models.CASCADE
    )

    class Meta:
        unique_together = ("year", "dataset")
        ordering = ["name", "year"]

    def __str__(self):
        return "%s - %s" % (self.name, self.year)

    def as_dict(self):
        return {"name": self.name, "year": self.year, "citation": self.citation}


class DBTable(models.Model):
    """ Pointer to a table in the database that contains actual data.
    """

    # TODO: validator on name
    name = models.CharField(
        max_length=100,
        null=False,
        unique=True,
        blank=False,
        help_text="Name of the physical database table containing data for this DB table.",
    )
    # Cache of SQLALchemy models for each db table
    MODELS = {}

    class Meta:
        ordering = ["name"]

    def __init__(self, *args, **kwargs):
        super(DBTable, self).__init__(*args, **kwargs)
        self._model = None

    @property
    def model(self):
        if not self._model:
            self._model = DBTable.MODELS.get(self.name)
        # Could be None, in which case the caller must create a model
        return self._model

    @model.setter
    def model(self, model):
        DBTable.MODELS[self.name] = model
        self._model = model

    def __str__(self):
        return "DBTable<%s>" % self.name


class DataTable(models.Model):
    NUMBER = "number"
    PERC = "percentage"
    CHOICES = ((NUMBER, NUMBER), (PERC, PERC))

    name = models.SlugField(
        max_length=1024,
        null=False,
        blank=False,
        unique=True,
        help_text="Name for this table. No spaces.",
    )
    universe = models.CharField(
        max_length=1024,
        null=False,
        blank=False,
        help_text="Universe this table describes, such as 'Population', 'Households', or 'Youth aged 15-24'.",
    )
    dataset = models.ForeignKey(Dataset, null=False, on_delete=models.CASCADE)
    stat_type = models.CharField(
        max_length=10, null=False, default=NUMBER, choices=CHOICES
    )
    description = models.CharField(
        max_length=1024,
        null=True,
        blank=True,
        help_text="Helpful description of this table (optional). Generated automatically for FieldTables if left blank.",
    )

    release_class = None

    class Meta:
        abstract = True
        ordering = ("name",)

    def clean(self):
        if not self.description:
            self.description = self._build_description()
        if self.name:
            self.name = self.name.upper()

    def get_release(self, year):
        """ Get the Release description for the specified year.
        """
        query = self.release_class.objects.filter(data_table=self)

        if year == "latest":
            query = query.order_by("-release__year")
        else:
            query = query.filter(release__year=year)

        result = query.first()
        if result:
            return result.release

    def get_db_table(self, release=None, year=None):
        """ Get a DBTable instance for a particular year or release,
        or the latest if neither are specified.
        """
        if year is None and release is None:
            from wazimap.data.utils import current_context

            # use the current context
            year = current_context().get("year")

        if year:
            release = self.get_release(year)

        if not release:
            raise ValueError(
                "Unclear which release year to use. Specify a release or a year, or use dataset_context(year=...)"
            )

        # get the db_table
        fieldname = self.release_class.__name__.lower() + "__release"
        query = self.db_table_releases.filter(**{fieldname: release})

        db_table = query.first()
        db_table.active_release = release
        self.setup_model(db_table)

        return db_table

    def setup_model(self, db_table):
        pass

    def _build_description(self):
        pass

    def _build_model_columns(self):
        # We build this array in a particular order, with the geo-related fields first,
        # to ensure that SQLAlchemy creates the underlying table with the compound primary
        # key columns in the correct order:
        #
        #  geo_level, geo_code, geo_version, field, [field, field, ...]
        #
        # This means postgresql will use the first two elements of the compound primary
        # key -- geo_level and geo_code -- when looking up values for a particular
        # geograhy. This saves us from having to create a secondary index.
        columns = []

        # will form a compound primary key on the fields, and the geo id
        columns.append(
            Column("geo_level", String(15), nullable=False, primary_key=True)
        )
        columns.append(Column("geo_code", String(10), nullable=False, primary_key=True))
        columns.append(
            Column(
                "geo_version",
                String(100),
                nullable=False,
                primary_key=True,
                server_default="",
            )
        )

        return columns

    def as_dict(self):
        return {
            "id": self.id,
            "title": self.description or self.name,
            "universe": self.universe,
            "denominator_column_id": self.total_column,
            "table_id": self.name.upper(),
            "stat_type": self.stat_type,
            "releases": [r.as_dict() for r in self.releases()],
        }

    def releases(self):
        return list(
            set(
                r.release
                for r in self.release_class.objects.filter(data_table=self)
                .prefetch_related("release")
                .all()
            )
        )

    def ensure_db_tables_exist(self):
        for release in self.release_class.objects.all():
            release.ensure_db_table_exists()

    @classmethod
    def find(cls, name, universe=None, dataset=None):
        candidates = cls.objects.filter(name__iexact=name)
        if universe:
            candidates = candidates.filter(universe__iexact=universe)
        if dataset:
            candidates = candidates.filter(dataset__name__iexact=dataset)
        return candidates.first()


class SimpleTable(DataTable):
    """ A Simple data table follows a normal spreadsheet format. Each row
    has one or more numeric values, one for each column. Each geography
    has only one row.

    A table can optionally have a total column, either named 'total' or
    controlled with the +total_column+ parameter. Without a total column,
    table values won't be shown as a percentage.

    In the web view, the total column is removed from the view and is not
    shown in the display.

    There is no way to have field combinations, such as 'Female, Age 18+'. For that,
    use a `FieldTable` below.
    """

    total_column = models.CharField(
        max_length=50,
        null=True,
        blank=True,
        help_text="Name of the column that contains the total value of all the columns in the row. Wazimap usse this to express column values as a percentage. If this is not set, the table doesn't have the concept of a total and only absolute values (not percentages) will be displayed.",
    )
    db_table_releases = models.ManyToManyField(
        DBTable, through="SimpleTableRelease", through_fields=("data_table", "db_table")
    )

    def __init__(self, *args, **kwargs):
        super(SimpleTable, self).__init__(*args, **kwargs)
        self.release_class = SimpleTableRelease

    def get_stat_data(
        self,
        geo,
        fields=None,
        key_order=None,
        percent=True,
        total=None,
        recode=None,
        year=None,
    ):
        """ Get a data dictionary for a place from this table.

        This fetches the values for each column in this table and returns a data
        dictionary for those values, with appropriate names and metadata.

        :param geo: the geography
        :param str or list fields: the columns to fetch stats for. By default, all columns except
                                   geo-related and the total column (if any) are used.
        :param str key_order: explicit ordering of (recoded) keys, or None for the default order.
                              Default order is the order in +fields+ if given, otherwise
                              it's the natural column order from the DB.
        :param bool percent: should we calculate percentages, or just include raw values?
        :param int total: the total value to use for percentages, name of a
                          field, or None to use the sum of all retrieved fields (default)
        :param dict recode: map from field names to strings to recode column names. Many fields
                            can be recoded to the same thing, their values will be summed.
        :param str year: release year to use. None will try to use the current dataset context, and 'latest'
                         will use the latest release.

        :return: (data-dictionary, total)
        """
        db_table = self.get_db_table(year=year or current_context().get("year"))
        model = db_table.model
        columns = self.columns(db_table)

        session = get_session()
        try:
            if fields is not None and not isinstance(fields, list):
                fields = [fields]
            if fields:
                for f in fields:
                    if f not in columns:
                        raise ValueError(
                            "Invalid field/column '%s' for table '%s'. Valid columns are: %s"
                            % (f, self.id, ", ".join(columns.keys()))
                        )
            else:
                fields = columns.keys()
                if self.total_column:
                    fields.remove(self.total_column)

            recode = recode or {}
            if recode:
                # change lambda to dicts
                if not isinstance(recode, dict):
                    recode = {f: recode(f) for f in fields}

            # is the total column valid?
            if isinstance(total, str) and total not in columns:
                raise ValueError(
                    "Total column '%s' isn't one of the columns for table '%s'. Valid columns are: %s"
                    % (total, self.id, ", ".join(columns.keys()))
                )

            # table columns to fetch
            cols = [model.__table__.columns[c] for c in fields]

            if total is not None and isinstance(total, str) and total not in cols:
                cols.append(total)

            # do the query. If this returns no data, row is None
            row = (
                session.query(*cols)
                .filter(
                    model.geo_level == geo.geo_level,
                    model.geo_code == geo.geo_code,
                    model.geo_version == geo.version,
                )
                .first()
            )

            if row is None:
                row = ZeroRow()

            # what's our denominator?
            if total is None:
                # sum of all columns
                total = sum(getattr(row, f) or 0 for f in fields)
            elif isinstance(total, str):
                total = getattr(row, total)

            # Now build a data dictionary based on the columns in +row+.
            # Multiple columns may be recoded into one, so we have to
            # accumulate values as we go.
            results = OrderedDict()

            key_order = (
                key_order or fields
            )  # default key order is just the list of fields

            for field in key_order:
                val = getattr(row, field) or 0

                # recode the key for this field, default is to keep it the same
                key = recode.get(field, field)

                # set the recoded field name, noting that the key may already
                # exist if another column recoded to it
                field_info = results.setdefault(
                    key, {"name": recode.get(field, columns[field]["name"])}
                )

                if percent:
                    # sum up existing values, if any
                    val = val + field_info.get("numerators", {}).get("this", 0)
                    field_info["values"] = {"this": p(val, total)}
                    field_info["numerators"] = {"this": val}
                else:
                    # sum up existing values, if any
                    val = val + field_info.get("values", {}).get("this", 0)
                    field_info["values"] = {"this": val}

            add_metadata(results, self, db_table.active_release)
            return results, total
        finally:
            session.close()

    def raw_data_for_geos(self, geos, release=None, year=None):
        # initial values
        data = {
            ("%s-%s" % (geo.geo_level, geo.geo_code)): {"estimate": {}, "error": {}}
            for geo in geos
        }

        db_table = self.get_db_table(release=release, year=year)
        columns = self.columns(db_table)

        session = get_session()
        try:
            geo_values = None
            rows = (
                session.query(db_table.model)
                .filter(
                    or_(
                        and_(
                            db_table.model.geo_level == g.geo_level,
                            db_table.model.geo_code == g.geo_code,
                            db_table.model.geo_version == g.version,
                        )
                        for g in geos
                    )
                )
                .all()
            )

            for row in rows:
                geo_values = data["%s-%s" % (row.geo_level, row.geo_code)]

                for col in columns.keys():
                    geo_values["estimate"][col] = getattr(row, col)
                    geo_values["error"][col] = 0

        finally:
            session.close()

        return data

    def columns(self, db_table=None, year=None, release=None):
        """ Work out our columns by finding those that aren't geo columns.
        """
        db_table = db_table or self.get_db_table(year=year, release=release)

        columns = OrderedDict()
        indent = 0
        if self.total_column:
            indent = 1

        for col in (
            c.name
            for c in db_table.model.__table__.columns
            if c.name not in ["geo_code", "geo_level", "geo_version"]
        ):
            columns[col] = {
                "name": capitalize(col.replace("_", " ")),
                "indent": 0 if col == self.total_column else indent,
            }

        # TODO: cache it?

        return columns

    def setup_model(self, db_table):
        model = db_table.model
        if not model:
            columns = self._build_model_columns()

            try:
                # We have to find out the other columns from the table itself.
                # First, assume it exists. If not, we'll create it with our default columns.
                table = Table(
                    db_table.name,
                    Base.metadata,
                    *columns,
                    autoload=True,
                    extend_existing=True
                )
            except NoSuchTableError:
                # Create it
                table = Table(
                    db_table.name,
                    Base.metadata,
                    *columns,
                    autoload=False,
                    extend_existing=True
                )

            class Model(Base):
                __table__ = table

            model = Model
            db_table.model = model

    def __str__(self):
        return self.name


class FieldTable(DataTable):
    INT_RE = re.compile("^[0-9]+$")

    INTEGER = "Integer"
    FLOAT = "Float"
    CHOICES = ((INTEGER, INTEGER), (FLOAT, FLOAT))

    fields = ArrayField(
        models.CharField(max_length=150, null=False, unique=True),
        help_text="Comma-separated ordered list of fields this table describes.",
    )
    db_table_releases = models.ManyToManyField(
        DBTable, through="FieldTableRelease", through_fields=("data_table", "db_table")
    )
    denominator_key = models.CharField(
        max_length=150,
        null=True,
        blank=True,
        help_text='The key value of the rightmost field that should be used as the "total" column, '
        + "instead of summing over the values for each row. This is necessary when the "
        + "table doesn't describe a true partitioning of the dataset (ie. the row values "
        + "sum to more than the total population).  This will be used as the total column once "
        + "the id of the column has been calculated.",
    )
    has_total = models.BooleanField(
        default=True,
        null=False,
        help_text="Does it make sense to calculate a total column and express percentages for values in this table?",
    )
    value_type = models.CharField(
        max_length=20, null=False, blank=False, default=INTEGER, choices=CHOICES
    )

    def __init__(self, *args, **kwargs):
        super(FieldTable, self).__init__(*args, **kwargs)
        self.release_class = FieldTableRelease
        self._field_set = None
        if self.has_total:
            self.total_column = self.column_id([self.denominator_key or "total"])
        else:
            self.total_column = None

    def clean(self):
        if not self.name:
            self.name = slugify("".join(self.fields))

        super(FieldTable, self).clean()
        self._field_set = None

    @property
    def field_set(self):
        if self._field_set is None:
            self._field_set = set(self.fields)
        return self._field_set

    def setup_model(self, db_table):
        """ Build the model that corresponds to the table underlying this data table.
        """
        model = db_table.model
        if not model:
            columns = self._build_model_columns()

            # create the table model
            class Model(Base):
                __table__ = Table(
                    db_table.name, Base.metadata, *columns, extend_existing=True
                )

            db_table.model = Model

    def _build_model_columns(self):
        columns = super(FieldTable, self)._build_model_columns()
        value_type = getattr(sqlalchemy.types, self.value_type)

        # field columns
        columns.extend(
            Column(field, String(128), primary_key=True) for field in self.fields
        )
        # total column
        columns.append(Column("total", value_type, nullable=True))

        return columns

    def columns(self, db_table=None, year=None, release=None):
        """ Prepare a description of our columns for use by the data API.

        Each 'column' is actually a unique value for each of this table's +fields+.
        """
        # Each "column" is a unique permutation of the values
        # of this table's fields, including rollups. The ordering of the
        # columns is important since columns heirarchical, but are returned
        # "flat".
        #
        # Here's an example. Suppose our table has the following values:
        #
        #     5 years, male, 129
        #     5 years, female, 131
        #     10 years, male, 221
        #     10 years, female, 334
        #
        # This would produce the following columns (indented to show nesting)
        #
        # 5 years:
        #   male
        # 5 years:
        #   female
        # 10 years:
        #   male
        # 10 years:
        #   female

        # map from column id to column info.
        columns = OrderedDict()
        db_table = db_table or self.get_db_table(year=year, release=release)

        # TODO: cache this

        if self.has_total:
            columns[self.total_column] = {"name": "Total", "indent": 0}

        session = get_session()
        try:
            fields = [getattr(db_table.model, f) for f in self.fields]

            # get distinct permutations for all fields
            rows = session.query(*fields).order_by(*fields).distinct().all()

            def permute(indent, field_values, rows):
                field = self.fields[indent - 1]
                last = indent == len(self.fields)

                for val, rows in groupby(rows, lambda r: getattr(r, field)):
                    # this is used to calculate the column id
                    new_values = field_values + [val]
                    col_id = self.column_id(new_values)

                    columns[col_id] = {
                        "name": capitalize(val) + ("" if last else ":"),
                        "indent": 0 if col_id == self.total_column else indent,
                    }

                    if not last:
                        permute(indent + 1, new_values, rows)

            permute(1, [], rows)
        finally:
            session.close()

        return columns

    def column_id(self, field_values):
        if len(field_values) == 1 and self.INT_RE.match(field_values[0]):
            # javascript re-orders keys that are pure integers, so force it to be a string
            return field_values[0] + "_"
        else:
            return "-".join(field_values)

    def get_stat_data(
        self,
        fields,
        geo,
        session,
        order_by=None,
        percent=True,
        total=None,
        only=None,
        exclude=None,
        exclude_zero=False,
        recode=None,
        key_order=None,
        percent_grouping=None,
        slices=None,
        year=None,
        db_table=None,
    ):
        """
        This is our primary helper routine for building a dictionary suitable for
        a place's profile page, based on a statistic.

        It sums over the data for ``fields`` in the database for the place identified by
        ``geo`` and calculates numerators and values. If multiple fields are given,
        it creates nested result dictionaries.

        Control the rows that are included or ignored using ``only``, ``exclude`` and ``exclude_zero``.

        The field values can be recoded using ``recode`` and and re-ordered using ``key_order``.

        :param fields: the census field to build stats for. Specify a list of fields to build
                       nested statistics. If multiple fields are specified, then the values
                       of parameters such as ``only``, ``exclude`` and ``recode`` will change.
                       These must be fields in `api.models.census.census_fields`, e.g. 'highest educational level'
        :type fields: str or list
        :param geo: the geograhy object
        :param dbsession session: sqlalchemy session
        :param str order_by: field to order by, or None for default, eg. '-total'
        :param bool percent: should we calculate percentages, or just sum raw values?
        :param list percent_grouping: when calculating percentages, which fields should rows be grouped by?
                                      Default: none of them -- calculate each entry as a percentage of the
                                      whole dataset. Ignored unless ``percent`` is ``True``.
        :param int total: the total value to use for percentages, or None to total columns automatically
        :param list only: only include these field values. If ``fields`` has many items, this must be a dict
                          mapping field names to a list of strings.
        :type only: dict or list
        :param exclude: ignore these field values. If ``fields`` has many items, this must be a dict
                        mapping field names to a list of strings. Field names are checked
                        before any recoding.
        :type exclude: dict or list
        :param bool exclude_zero: ignore fields that have a zero or null total
        :param recode: function or dict to recode values of ``key_field``. If ``fields`` is a singleton,
                       then the keys of this dict must be the values to recode from, otherwise
                       they must be the field names and then the values. If this is a lambda,
                       it is called with the field name and its value as arguments.
        :type recode: dict or lambda
        :param key_order: ordering for keys in result dictionary. If ``fields`` has many items,
                          this must be a dict from field names to orderings.
                          The default ordering is determined by ``order``.
        :type key_order: dict or list
        :param list slices: return only a slice of the final data, by choosing a single value for each
                           field in the field list, as specified in the slice list.
        :param str year: release year to use. None will try to use the current dataset context, and 'latest'
                         will use the latest release.
        :param str db_table: database table and release to use. None will try
                             to use `year` if given, and the current dataset context.

        :return: (data-dictionary, total)
        """
        if not isinstance(fields, list):
            fields = [fields]

        n_fields = len(fields)
        many_fields = n_fields > 1

        if order_by is None:
            order_by = fields[0]

        if only is not None:
            if not isinstance(only, dict):
                if many_fields:
                    raise ValueError(
                        "If many fields are given, then only must be a dict. I got %s instead"
                        % only
                    )
                else:
                    only = {fields[0]: set(only)}

        if exclude is not None:
            if not isinstance(exclude, dict):
                if many_fields:
                    raise ValueError(
                        "If many fields are given, then exclude must be a dict. I got %s instead"
                        % exclude
                    )
                else:
                    exclude = {fields[0]: set(exclude)}

        if key_order:
            if not isinstance(key_order, dict):
                if many_fields:
                    raise ValueError(
                        "If many fields are given, then key_order must be a dict. I got %s instead"
                        % key_order
                    )
                else:
                    key_order = {fields[0]: key_order}
        else:
            key_order = {}

        if recode:
            if not isinstance(recode, dict) or not many_fields:
                recode = dict((f, recode) for f in fields)

        # get the release and underlying database table
        db_table = db_table or self.get_db_table(year=year)
        objects = self.get_rows_for_geo(
            geo,
            session,
            fields=fields,
            order_by=order_by,
            only=only,
            exclude=exclude,
            db_table=db_table,
        )

        if total is not None and many_fields:
            raise ValueError("Cannot specify a total if many fields are given")

        if total and percent_grouping:
            raise ValueError("Cannot specify a total if percent_grouping is given")

        if total is None and percent and self.total_column is None:
            # The table doesn't support calculating percentages, but the caller
            # has asked for a percentage without providing a total value to use.
            # Either specify a total, or specify percent=False
            raise ValueError(
                "Asking for a percent on table %s that doesn't support totals and no total parameter specified."
                % self.name
            )

        # sanity check the percent grouping
        if percent:
            if percent_grouping:
                for field in percent_grouping:
                    if field not in fields:
                        raise ValueError(
                            "Field '%s' specified in percent_grouping must be in the fields list."
                            % field
                        )
                # re-order percent grouping to be same order as in the field list
                percent_grouping = [f for f in fields if f in percent_grouping]
        else:
            percent_grouping = None

        root_data = OrderedDict()
        running_total = 0
        group_totals = {}
        grand_total = -1

        def get_recoded_key(recode, field, key):
            recoder = recode[field]
            if isinstance(recoder, dict):
                return recoder.get(key, key)
            else:
                return recoder(field, key)

        def get_data_object(obj):
            """ Recurse down the list of fields and return the
            final resting place for data for this stat. """
            data = root_data

            for i, field in enumerate(fields):
                key = getattr(obj, field)

                if recode and field in recode:
                    key = get_recoded_key(recode, field, key)
                else:
                    key = capitalize(key)

                # enforce key ordering the first time we see this field
                if (not data or data.keys() == ["metadata"]) and field in key_order:
                    for fld in key_order[field]:
                        data[fld] = OrderedDict()

                # ensure it's there
                if key not in data:
                    data[key] = OrderedDict()

                data = data[key]

                # default values for intermediate fields
                if data is not None and i < n_fields - 1:
                    data["metadata"] = {"name": key}

            # data is now the dict where the end value is going to go
            if not data:
                data["name"] = key
                data["numerators"] = {"this": 0.0}

            return data

        # run the stats for the objects
        for obj in objects:
            if not obj.total and exclude_zero:
                continue

            if (
                self.denominator_key
                and getattr(obj, self.fields[-1]) == self.denominator_key
            ):
                grand_total = obj.total
                # don't include the denominator key in the output
                continue

            # get the data dict where these values must go
            data = get_data_object(obj)
            if not data:
                continue

            if obj.total is not None:
                data["numerators"]["this"] += obj.total
                running_total += obj.total
            else:
                # TODO: sanity check this is the right thing to do for multiple fields with
                # nested nulls -- does aggregating over nulls treat them as zero, or should we
                # treat them as null?
                data["numerators"]["this"] = None

            if percent_grouping:
                if obj.total is not None:
                    group_key = tuple()
                    for field in percent_grouping:
                        key = getattr(obj, field)
                        if recode and field in recode:
                            # Group by recoded keys
                            key = get_recoded_key(recode, field, key)
                        group_key = group_key + (key,)

                    data["_group_key"] = group_key
                    group_totals[group_key] = group_totals.get(group_key, 0) + obj.total

        if grand_total == -1:
            grand_total = running_total if total is None else total

        # add in percentages
        def calc_percent(data):
            for key, data in data.items():
                if not key == "metadata":
                    if "numerators" in data:
                        if percent:
                            if "_group_key" in data:
                                total = group_totals[data.pop("_group_key")]
                            else:
                                total = grand_total

                            if (
                                total is not None
                                and data["numerators"]["this"] is not None
                            ):
                                perc = (
                                    0
                                    if total == 0
                                    else (data["numerators"]["this"] / total * 100)
                                )
                                data["values"] = {"this": round(perc, 2)}
                            else:
                                data["values"] = {"this": None}
                        else:
                            data["values"] = dict(data["numerators"])
                            data["numerators"]["this"] = None
                    else:
                        calc_percent(data)

        calc_percent(root_data)

        if slices:
            for v in slices:
                root_data = root_data[v]

        add_metadata(root_data, self, db_table.active_release)

        return root_data, grand_total

    def get_rows_for_geo(
        self,
        geo,
        session,
        fields=None,
        order_by=None,
        only=None,
        exclude=None,
        db_table=None,
    ):
        """ Get rows of statistics from the stats model +db_model+ for a particular
        geography, summing over the 'total' field and grouping by +fields+. Filters
        to include +only+ and ignore +exclude+, if given.
        """
        db_table = db_table or self.get_db_table()
        db_model = db_table.model

        if fields is None:
            fields = [
                c.key
                for c in class_mapper(db_model).attrs
                if c.key not in ["geo_code", "geo_level", "geo_version", "total"]
            ]

        fields = [getattr(db_model, f) for f in fields]

        objects = (
            session.query(func.sum(db_model.total).label("total"), *fields)
            .group_by(*fields)
            .filter(db_model.geo_code == geo.geo_code)
            .filter(db_model.geo_level == geo.geo_level)
            .filter(db_model.geo_version == geo.version)
        )

        if only:
            for k, v in only.items():
                objects = objects.filter(getattr(db_model, k).in_(v))

        if exclude:
            for k, v in exclude.items():
                objects = objects.filter(getattr(db_model, k).notin_(v))

        if order_by is not None:
            attr = order_by
            is_desc = False
            if order_by[0] == "-":
                is_desc = True
                attr = attr[1:]

            if attr == "total":
                if is_desc:
                    attr = text(attr + " DESC")
            else:
                attr = getattr(db_model, attr)
                if is_desc:
                    attr = attr.desc()

            objects = objects.order_by(attr)

        objects = objects.all()
        if len(objects) == 0:
            raise DataNotFound(
                "Entry in %s for geography %s version '%s' not found"
                % (db_table.name, geo.geoid, geo.version)
            )
        return objects

    def raw_data_for_geos(self, geos, db_table=None):
        """ Pull raw data for a list of geo models.

        Returns a dict mapping the geo ids to table data.
        """
        # initial values
        data = {
            ("%s-%s" % (geo.geo_level, geo.geo_code)): {"estimate": {}, "error": {}}
            for geo in geos
        }

        db_table = db_table or self.get_db_table()

        session = get_session()
        try:
            geo_values = None
            fields = [getattr(db_table.model, f) for f in self.fields]
            rows = (
                session.query(
                    db_table.model.geo_level,
                    db_table.model.geo_code,
                    func.sum(db_table.model.total).label("total"),
                    *fields
                )
                .group_by(db_table.model.geo_level, db_table.model.geo_code, *fields)
                .order_by(db_table.model.geo_level, db_table.model.geo_code, *fields)
                .filter(
                    or_(
                        and_(
                            db_table.model.geo_level == geo.geo_level,
                            db_table.model.geo_code == geo.geo_code,
                            db_table.model.geo_version == geo.version,
                        )
                        for geo in geos
                    )
                )
                .all()
            )

            def permute(level, field_keys, rows):
                field = self.fields[level]
                total = None
                denominator = 0

                for key, rows in groupby(rows, lambda r: getattr(r, field)):
                    new_keys = field_keys + [key]
                    col_id = self.column_id(new_keys)

                    if level + 1 < len(self.fields):
                        value = permute(level + 1, new_keys, rows)
                    else:
                        # we've bottomed out

                        rows = list(rows)
                        if all(row.total is None for row in rows):
                            value = None
                        else:
                            value = sum(row.total or 0 for row in rows)

                        if self.denominator_key and self.denominator_key == key:
                            # this row must be used as the denominator total,
                            # rather than as an entry in the table
                            denominator = value
                            continue

                    if value is not None:
                        total = (total or 0) + value
                    geo_values["estimate"][col_id] = value
                    geo_values["error"][col_id] = 0

                if self.denominator_key:
                    total = denominator

                return total

            # rows for each geo
            for geo_id, geo_rows in groupby(rows, lambda r: (r.geo_level, r.geo_code)):
                geo_values = data["%s-%s" % geo_id]
                total = permute(0, [], geo_rows)

                # total
                if self.total_column:
                    geo_values["estimate"][self.total_column] = total
                    geo_values["error"][self.total_column] = 0

        finally:
            session.close()

        return data

    def _build_description(self):
        return self.universe + " by " + ", ".join(self.fields)

    def __str__(self):
        return self.name

    @classmethod
    def for_fields(cls, fields, universe=None, dataset=None, name=None):
        """ Lookup a FieldTable that is suitable for a set of fields.

        If there are multiple tables that support these fields, the one with
        the least number of additional different fields is use.
        """
        # try find it based on fields
        field_set = set(fields)

        candidates = cls.objects.filter(fields__contains=list(field_set))
        if name:
            candidates = candidates.filter(name__iexact=name)
        if universe:
            candidates = candidates.filter(universe=universe)
        if dataset:
            candidates = candidates.filter(dataset__name=dataset)

        possibilities = [
            (t, len(t.field_set - field_set))
            for t in candidates
            if len(t.field_set) >= len(field_set) and len(field_set - t.field_set) == 0
        ]
        table, _ = min(possibilities, key=lambda p: p[1])

        return table


class BaseRelease(object):
    def ensure_db_table_exists(self):
        """ Ensure that the actual database table behind the db_table link to this
        release exists.
        """
        if not (self.db_table and self.data_table and self.release):
            return

        db_table = self.data_table.get_db_table(release=self.release)

        # ensure it exists in the DB
        session = get_session()
        try:
            db_table.model.__table__.create(session.get_bind(), checkfirst=True)
        finally:
            session.close()


class SimpleTableRelease(models.Model, BaseRelease):
    data_table = models.ForeignKey(SimpleTable, on_delete=models.CASCADE)
    db_table = models.ForeignKey(DBTable, on_delete=models.CASCADE)
    release = models.ForeignKey(Release, on_delete=models.CASCADE)

    def __str__(self):
        return "%s for %s in %s" % (self.db_table, self.data_table, self.release)


class FieldTableRelease(models.Model, BaseRelease):
    data_table = models.ForeignKey(FieldTable, on_delete=models.CASCADE)
    db_table = models.ForeignKey(DBTable, on_delete=models.CASCADE)
    release = models.ForeignKey(Release, on_delete=models.CASCADE)

    def __str__(self):
        return "%s for %s in %s" % (self.db_table, self.data_table, self.release)


@receiver(post_save, sender=SimpleTable)
def ensure_simple_table_db_tables_exist(sender, **kwargs):
    kwargs["instance"].ensure_db_tables_exist()


@receiver(post_save, sender=FieldTable)
def ensure_field_table_db_tables_exist(sender, **kwargs):
    kwargs["instance"].ensure_db_tables_exist()


class ZeroRow(object):
    # object that acts as a SQLAlchemy row of zeros
    def __getattribute__(self, attr):
        return 0
