import re
from itertools import groupby
from collections import OrderedDict

from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_
import sqlalchemy.types

from wazimap.data.base import Base
from wazimap.data.utils import get_session, capitalize, percent as p, add_metadata


'''
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
'''


# Postgres has a max name length of 63 by default, reserving up to
# 13 chars for the _municipality ending
MAX_TABLE_NAME_LENGTH = 63 - 13

# Characters we strip from table names
TABLE_BAD_CHARS = re.compile('[ /-]')

# All SimpleTable and FieldTable instances by id
DATA_TABLES = {}

# Map from database table to SQLAlchemy model
DB_MODELS = {}

INT_RE = re.compile("^[0-9]+$")


def get_datatable(id):
    return DATA_TABLES[id.upper()]


class ZeroRow(object):
    # object that acts as a SQLAlchemy row of zeros
    def __getattribute__(self, attr):
        return 0


class SimpleTable(object):
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

    def __init__(self, id, universe, description, model='auto', total_column='total',
                 year='2011', dataset='Census 2011', stat_type='number', db_table=None):
        """
        Describe a new simple table.

        :param str id: table id, or None (default) to determine it based on `fields`
        :param str universe: a description of the universe this table covers (default: "Population")
        :param str description: a description of this table. If None, this is derived from
                                `universe` and the `fields`.
        :param str object model: the SQLAlchemy table model to use, or 'auto' to generate
                                 one (recommended).
        :param str total_column: the name of the column that represents the total value
                                 of all the columns in the row. This allows Wazimap to express
                                 column values as a percentage. If this is None, then
                                 the table doesn't have the concept of a total and only
                                 absolute values (not percentages) are used.
        :param str year: the year the table belongs to
        :param str dataset: the name of the dataset the table belongs to
        :param str stat_type: used to determine how the values should be displayed in the templates.
                              'number' or 'percentage'
        :param str db_table: name of an existing database table to use for this data table.
        """
        self.id = id.upper()
        self.db_table = db_table or self.id.lower()

        if model == 'auto':
            model = self._build_model(self.db_table)

        self.model = model
        self.universe = universe
        self.description = description
        self.year = year
        self.dataset_name = dataset
        self.total_column = total_column
        self.stat_type = stat_type
        self.setup_columns()

        if self.total_column and self.total_column not in self.columns:
            raise ValueError("Total column is not in the column list. Given '%s', column list: %s" % (self.total_column, self.columns.keys()))

        DATA_TABLES[self.id] = self

    def setup_columns(self):
        """
        Work out our columns by finding those that aren't geo columns.
        """
        self.columns = OrderedDict()
        indent = 0
        if self.total_column:
            indent = 1

        for col in (c.name for c in self.model.__table__.columns if c.name not in ['geo_code', 'geo_level', 'geo_version']):
            self.columns[col] = {
                'name': capitalize(col.replace('_', ' ')),
                'indent': 0 if col == self.total_column else indent
            }

    def raw_data_for_geos(self, geos):
        # initial values
        data = {('%s-%s' % (geo.geo_level, geo.geo_code)): {
                'estimate': {},
                'error': {}}
                for geo in geos}

        session = get_session()
        try:
            geo_values = None
            rows = session\
                .query(self.model)\
                .filter(or_(and_(
                    self.model.geo_level == g.geo_level,
                    self.model.geo_code == g.geo_code,
                    self.model.geo_version == g.version)
                    for g in geos))\
                .all()

            for row in rows:
                geo_values = data['%s-%s' % (row.geo_level, row.geo_code)]

                for col in self.columns.iterkeys():
                    geo_values['estimate'][col] = getattr(row, col)
                    geo_values['error'][col] = 0

        finally:
            session.close()

        return data

    def get_stat_data(self, geo, fields=None, key_order=None, percent=True, total=None, recode=None):
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

        :return: (data-dictionary, total)
        """

        session = get_session()
        try:
            if fields is not None and not isinstance(fields, list):
                fields = [fields]
            if fields:
                for f in fields:
                    if f not in self.columns:
                        raise ValueError("Invalid field/column '%s' for table '%s'. Valid columns are: %s" % (
                            f, self.id, ', '.join(self.columns.keys())))
            else:
                fields = self.columns.keys()
                if self.total_column:
                    fields.remove(self.total_column)

            recode = recode or {}
            if recode:
                # change lambda to dicts
                if not isinstance(recode, dict):
                    recode = {f: recode(f) for f in fields}

            # is the total column valid?
            if isinstance(total, basestring) and total not in self.columns:
                raise ValueError("Total column '%s' isn't one of the columns for table '%s'. Valid columns are: %s" % (
                    total, self.id, ', '.join(self.columns.keys())))

            # table columns to fetch
            cols = [self.model.__table__.columns[c] for c in fields]

            if total is not None and isinstance(total, basestring) and total not in cols:
                cols.append(total)

            # do the query. If this returns no data, row is None
            row = session\
                .query(*cols)\
                .filter(self.model.geo_level == geo.geo_level,
                        self.model.geo_code == geo.geo_code,
                        self.model.geo_version == geo.version)\
                .first()

            if row is None:
                row = ZeroRow()

            # what's our denominator?
            if total is None:
                # sum of all columns
                total = sum(getattr(row, f) or 0 for f in fields)
            elif isinstance(total, basestring):
                total = getattr(row, total)

            # Now build a data dictionary based on the columns in +row+.
            # Multiple columns may be recoded into one, so we have to
            # accumulate values as we go.
            results = OrderedDict()

            key_order = key_order or fields  # default key order is just the list of fields

            for field in key_order:
                val = getattr(row, field) or 0

                # recode the key for this field, default is to keep it the same
                key = recode.get(field, field)

                # set the recoded field name, noting that the key may already
                # exist if another column recoded to it
                field_info = results.setdefault(key, {'name': recode.get(field, self.columns[field]['name'])})

                if percent:
                    # sum up existing values, if any
                    val = val + field_info.get('numerators', {}).get('this', 0)
                    field_info['values'] = {'this': p(val, total)}
                    field_info['numerators'] = {'this': val}
                else:
                    # sum up existing values, if any
                    val = val + field_info.get('values', {}).get('this', 0)
                    field_info['values'] = {'this': val}

            add_metadata(results, self)
            return results, total
        finally:
            session.close()

    def as_dict(self, columns=True):
        return {
            'title': self.description,
            'universe': self.universe,
            'denominator_column_id': self.total_column,
            'columns': self.columns,
            'table_id': self.id.upper(),
            'stat_type': self.stat_type,
        }

    def _build_model(self, db_table):
        # does it already exist?
        model = get_model_for_db_table(db_table)
        if model:
            return model

        columns = self._build_model_columns()

        class Model(Base):
            __table__ = Table(db_table, Base.metadata, *columns, autoload=True, extend_existing=True)

        return Model

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
        columns.append(Column('geo_level', String(15), nullable=False, primary_key=True))
        columns.append(Column('geo_code', String(10), nullable=False, primary_key=True))
        columns.append(Column('geo_version', String(100), nullable=False, primary_key=True, server_default=''))

        return columns


FIELD_TABLE_FIELDS = set()
FIELD_TABLES = {}


class FieldTable(SimpleTable):
    """
    A field table is an 'inverted' simple table that has only one numeric figure
    per row, but allows multiple combinations of classifying fields for each row.

    It shares functionality with a `SimpleTable` but handles the more complex
    column definitions and raw data extraction.

    For example: ::

        geo_code  gender  age group   total
        ZA        female  < 18        100
        ZA        female  > 18        200
        ZA        male    < 18        80
        ZA        male    > 18        20

    What are called +columns+ here are actually an abstraction used by the
    data API. They are nested combinations of field values, such as: ::

        col0: total
        col1: female
        col2: female, < 18
        col3: female, > 18
        col4: male
        col5: male < 18
        col6: male > 18

    """
    def __init__(self, fields, id=None, universe='Population', description=None, denominator_key=None,
                 has_total=True, value_type='Integer', stat_type='number', db_table=None, **kwargs):
        """
        Describe a new field table.

        :param list fields: list of field names, in nesting order
        :param str id: table id, or None (default) to determine it based on `fields`
        :param str universe: a description of the universe this table covers (default: "Population")
        :param str description: a description of this table. If None, this is derived from
                                `universe` and the `fields`.
        :param str denominator_key: the key value of the rightmost field that should be
                                    used as the "total" column, instead of summing over
                                    the values for each row. This is necessary when the
                                    table doesn't describe a true partitioning of the
                                    dataset (ie. the row values sum to more than the
                                    total population).
                                    This will be used as the total column once
                                    the id of the column has been calculated.
        :param bool has_total: does it make sense to calculate a total column and express percentages
                                  for values in this table? (default: True)
        :param str value_type: the data type for the total column (default: 'Integer')
        :param str stat_type: used to determine how the values should be displayed in the templates.
                              'number' or 'percentage'
        :param str db_table: name of an existing database table to use for this data table.
                             Used when a model has two fields, e.g. `gender` and `population group`,
                             and we would like two data tables, with a different ordering of fields,
                             i.e. `population group` by `gender`, and `gender` by `population group`,
                             to use the same database table.
        """
        description = description or (universe + ' by ' + ', '.join(fields))
        id = id or get_table_id(fields)

        self.fields = fields
        self.field_set = set(fields)
        self.denominator_key = denominator_key
        self.has_total = has_total
        self.value_type = getattr(sqlalchemy.types, value_type)

        if db_table:
            model = get_model_for_db_table(db_table)
            other_data_table = model.data_tables[0]

            if model and set(fields) != set(other_data_table.fields):
                raise ValueError("The fields should match those of the existing model you wish to use. The fields are: %s" % (
                    ', '.join(f for f in other_data_table.fields)))

        super(FieldTable, self).__init__(
            id=id, model=None, universe=universe, description=description, stat_type=stat_type,
            db_table=db_table, **kwargs)

        FIELD_TABLE_FIELDS.update(self.fields)
        FIELD_TABLES[self.id] = self

    def build_models(self):
        """
        Build models that correspond to the tables underlying this data table.
        """
        self.model = self._build_model_from_fields(self.fields, self.db_table, value_type=self.value_type)

        if not hasattr(self.model, 'data_tables'):
            self.model.data_tables = []
        self.model.data_tables.append(self)

    def setup_columns(self):
        """
        Prepare our columns for use by +as_dict+ and the data API.

        Each 'column' is actually a unique value for each of this table's +fields+.
        """
        self.build_models()

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
        self.columns = OrderedDict()

        if self.has_total:
            self.total_column = self.column_id([self.denominator_key or 'total'])
            self.columns[self.total_column] = {'name': 'Total', 'indent': 0}
        else:
            self.total_column = None

        session = get_session()
        try:
            fields = [getattr(self.model, f) for f in self.fields]

            # get distinct permutations for all fields
            rows = session\
                .query(*fields)\
                .order_by(*fields)\
                .distinct()\
                .all()

            def permute(indent, field_values, rows):
                field = self.fields[indent - 1]
                last = indent == len(self.fields)

                for val, rows in groupby(rows, lambda r: getattr(r, field)):
                    # this is used to calculate the column id
                    new_values = field_values + [val]
                    col_id = self.column_id(new_values)

                    self.columns[col_id] = {
                        'name': capitalize(val) + ('' if last else ':'),
                        'indent': 0 if col_id == self.total_column else indent,
                    }

                    if not last:
                        permute(indent + 1, new_values, rows)

            permute(1, [], rows)
        finally:
            session.close()

    def column_id(self, field_values):
        if len(field_values) == 1 and INT_RE.match(field_values[0]):
            # javascript re-orders keys that are pure integers, so force it to be a string
            return field_values[0] + "_"
        else:
            return '-'.join(field_values)

    def raw_data_for_geos(self, geos):
        """
        Pull raw data for a list of geo models.

        Returns a dict mapping the geo ids to table data.
        """
        data = {('%s-%s' % (geo.geo_level, geo.geo_code)): {
                'estimate': {},
                'error': {}}
                for geo in geos}

        session = get_session()
        try:
            geo_values = None
            fields = [getattr(self.model, f) for f in self.fields]
            rows = session\
                .query(self.model.geo_level,
                       self.model.geo_code,
                       func.sum(self.model.total).label('total'),
                       *fields)\
                .group_by(self.model.geo_level, self.model.geo_code, *fields)\
                .order_by(self.model.geo_level, self.model.geo_code, *fields)\
                .filter(or_(and_(
                    self.model.geo_level == geo.geo_level,
                    self.model.geo_code == geo.geo_code,
                    self.model.geo_version == geo.version)
                    for geo in geos))\
                .all()

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
                    geo_values['estimate'][col_id] = value
                    geo_values['error'][col_id] = 0

                if self.denominator_key:
                    total = denominator

                return total

            # rows for each geo
            for geo_id, geo_rows in groupby(rows, lambda r: (r.geo_level, r.geo_code)):
                geo_values = data['%s-%s' % geo_id]
                total = permute(0, [], geo_rows)

                # total
                if self.total_column:
                    geo_values['estimate'][self.total_column] = total
                    geo_values['error'][self.total_column] = 0

        finally:
            session.close()

        return data

    def _build_model_from_fields(self, fields, db_table, value_type=Integer):
        '''
        Generates an ORM model for arbitrary census fields by geography.

        :param list fields: the table fields e.g. ['highest educational level', 'type of sector']
        :param str db_table: the name of the database table
        :param value_type: The value type of the total column.
        :return: ORM model class
        :rtype: Model
        '''
        # does it already exist?
        model = get_model_for_db_table(db_table)
        if model:
            return model

        columns = self._build_model_columns(fields, value_type)

        # create the table model
        class Model(Base):
            __table__ = Table(db_table, Base.metadata, *columns, extend_existing=True)

        # ensure it exists in the DB
        session = get_session()
        try:
            Model.__table__.create(session.get_bind(), checkfirst=True)
        finally:
            session.close()

        DB_MODELS[db_table] = Model

        return Model

        # Now add the field columns
        columns.extend(Column(field, String(128), primary_key=True) for field in fields)
        # and the value column
        columns.append(Column('total', value_type, nullable=True))

    def _build_model_columns(self, fields, value_type):
        columns = super(FieldTable, self)._build_model_columns()

        # field columns
        columns.extend(Column(field, String(128), primary_key=True) for field in fields)
        # total column
        columns.append(Column('total', value_type, nullable=True))

        return columns

    @classmethod
    def for_fields(cls, fields, table_dataset=None):
        """ Find a model that can provide us these fields, at this level.

        :param fields: list of fields to find a table for
        :param str table_dataset: dataset for the FieldTable, if the fields are ambiguous (optional)

        :return: a FieldTable instance, or None
        """
        # lookup based on fields
        for field in fields:
            if field not in FIELD_TABLE_FIELDS:
                raise ValueError('Invalid field: %s' % field)

        # try find it based on fields
        field_set = set(fields)

        candidates = FIELD_TABLES.values()
        if table_dataset:
            candidates = [t for t in candidates if t.dataset_name == table_dataset]

        possibilities = [
            (t, len(t.field_set - field_set))
            for t in candidates if len(t.field_set) >= len(field_set) and len(field_set - t.field_set) == 0]
        table, _ = min(possibilities, key=lambda p: p[1])

        return table

    @classmethod
    def get(cls, table_name):
        return get_datatable(table_name)


def get_model_for_db_table(db_table):
    """ Lookup the SQLAlchemy model for a particular database table.
    """
    return DB_MODELS.get(db_table)


def get_model_from_fields(fields, geo_level, table_name=None, table_dataset=None):
    """ Find a model that can provide us these fields, at this level.

    :param fields: list of fields to find a table for
    :param str geo_level: geography level required
    :param str table_name: name of the FieldTable if the fields are ambiguous (optional)
    :param str table_dataset: dataset for the FieldTable, if the fields are ambiguous (optional)

    :return: SQLAlchemy model
    """
    if table_name:
        table = FieldTable.get(table_name)
    else:
        table = FieldTable.for_fields(fields, table_dataset)
        if not table:
            ValueError("Couldn't find a table that covers these fields: %s" % fields)

    return table.model


def get_table_id(fields):
    sorted_fields = sorted(fields)
    table_id = TABLE_BAD_CHARS.sub('', '_'.join(sorted_fields))

    return table_id[:MAX_TABLE_NAME_LENGTH].upper()


# the geo levels applicable to different datasets
DATASET_GEO_LEVELS = {
    'Census 2011': ['country', 'province', 'municipality', 'ward'],
    '2011 Municipal Elections': ['country', 'province', 'municipality', 'ward'],
    '2014 National Elections': ['country', 'province', 'municipality', 'ward'],
    '2014 Provincial Elections': ['country', 'province', 'municipality', 'ward'],
    'Police Crime Statistics 2014': ['country', 'province'],
}
