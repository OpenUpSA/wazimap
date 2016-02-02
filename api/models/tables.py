import re
from itertools import groupby
from collections import OrderedDict

from sqlalchemy import Column, ForeignKey, Integer, String, Table, func

from .base import Base, geo_levels
from api.utils import get_session, get_table_model, capitalize, percent as p, add_metadata


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


def get_datatable(id):
    return DATA_TABLES[id.lower()]


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
                 year='2011', dataset='Census 2011'):
        self.id = id

        if model == 'auto':
            model = get_table_model(id)

        self.model = model
        self.universe = universe
        self.description = description
        self.year = year
        self.dataset_name = dataset
        self.total_column = total_column
        self.setup_columns()

        if not self.columns:
            raise ValueError("I couldn't work out the columns from them model.")

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

        for col in (c.name for c in self.model.columns if c.name not in ['geo_code', 'geo_level']):
            self.columns[col] = {
                'name': capitalize(col.replace('_', ' ')),
                'indent': 0 if col == self.total_column else indent
            }

    def raw_data_for_geos(self, geos):
        data = {}

        # group by geo level
        geos = sorted(geos, key=lambda g: g.level)
        for geo_level, geos in groupby(geos, lambda g: g.level):
            geo_codes = [g.code for g in geos]

            # initial values
            for geo_code in geo_codes:
                data['%s-%s' % (geo_level, geo_code)] = {
                    'estimate': {},
                    'error': {}}

            session = get_session()
            try:
                geo_values = None
                rows = session\
                    .query(self.model)\
                    .filter(self.model.c.geo_level == geo_level)\
                    .filter(self.model.c.geo_code.in_(geo_codes))\
                    .all()

                for row in rows:
                    geo_values = data['%s-%s' % (geo_level, row.geo_code)]

                    for col in self.columns.iterkeys():
                        geo_values['estimate'][col] = getattr(row, col)
                        geo_values['error'][col] = 0

            finally:
                session.close()

        return data

    def get_stat_data(self, geo_level, geo_code, fields=None, order_by=None,
                      percent=True, total=None, recode=None):
        """ Get a data dictionary for a place from this table.

        This fetches the values for each column in this table and returns a data
        dictionary for those values, with appropriate names and metadata.

        :param str geo_level: the geographical level
        :param str geo_code: the geographical code
        :param str or list fields: the columns to fetch stats for. By default, all columns except
                                   geo-related and the total column (if any) are used.
        :param str order_by: how to order the columns in the dictonary. Either 'key' or '-key' to
                             order alphabetically based on (possibly re-coded) key, or 'value' or '-value'
                             to order by the value for that column. Defaults to 'key'.
        :param bool percent: should we calculate percentages, or just include raw values?
        :param int total: the total value to use for percentages, name of a
                          field, or None to use the table's total column, or the sum of
                          all fields if the table has no total column
        :param dict recode: map from field names to strings to recode column names.

        :return: (data-dictionary, total)
        """

        session = get_session()
        try:
            if fields is not None and not isinstance(fields, list):
                fields = [fields]
            if fields:
                for f in fields:
                    if f not in self.columns:
                        raise ValueError('Invalid field/column for %s: %s' % (self.id, f))
            else:
                fields = self.columns.keys()

            recode = recode or {}
            if recode:
                # change lambda to dicts
                if not isinstance(recode, dict):
                    recode = {f: recode(f) for f in fields}

            if total is None:
                total = self.total_column

            # table columns to fetch
            if total is None:
                # get everything, since we need to sum up to get a total
                cols = self.columns.keys()
            else:
                cols = [self.model.columns[c] for c in fields]
                if isinstance(total, basestring) and total not in cols:
                    cols.append(total)

            # do the query
            row = session\
                .query(*cols)\
                .filter(self.model.c.geo_level == geo_level,
                        self.model.c.geo_code == geo_code)\
                .first()
            if not row:
                raise ValueError("No data in %s for %s-%s" % (self.id, geo_level, geo_code))

            if percent:
                # what's our denominator?
                if total is None:
                    # sum of all columns
                    total = sum(getattr(row, f) for f in fields)
                elif isinstance(total, basestring):
                    total = getattr(row, total)

            # TODO: ordering
            results = OrderedDict()
            for field in fields:
                results[field] = {'name': recode.get(field, self.columns[field]['name'])}
                val = getattr(row, field)
                add_metadata(results[field], self)

                if percent:
                    results[field]['values'] = {'this': p(val, total)}
                    results[field]['numerators'] = {'this': val}
                else:
                    results[field]['values'] = {'this': val}

            return results
        finally:
            session.close()

    def as_dict(self, columns=True):
        return {
            'title': self.description,
            'universe': self.universe,
            'denominator_column_id': self.total_column,
            'columns': self.columns,
            'table_id': self.id.upper(),
        }


FIELD_TABLE_FIELDS = set()
FIELD_TABLES = {}


class FieldTable(SimpleTable):
    """
    A field table is an 'inverted' simple table that has only one numeric figure
    per row, but allows multiple combinations of classifying fields for each row.

    It shares functionality with a `SimpleTable` but handles the more complex
    column definitions and raw data extraction.

    For example:

        geo_code  gender  age group   total
        ZA        female  < 18        100
        ZA        female  > 18        200
        ZA        male    < 18        80
        ZA        male    > 18        20

    What are called +columns+ here are actually an abstraction used by the
    data API. They are nested combinations of field values, such as:

        col0: total
        col1: female
        col2: female, < 18
        col3: female, > 18
        col4: male
        col5: male < 18
        col6: male > 18

    """
    def __init__(self, fields, id=None, universe='Population', description=None, denominator_key=None,
                 table_per_level=True, **kwargs):
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
        :param bool table_per_level: is there a separate database table for each geo level,
                                     or are all levels in one table (default: separate per level)
        """
        description = description or (universe + ' by ' + ', '.join(fields))
        id = id or get_table_id(fields)

        self.fields = fields
        self.field_set = set(fields)
        self.denominator_key = denominator_key
        self.table_per_level = table_per_level

        super(FieldTable, self).__init__(id=id, model=None, universe=universe, description=description, **kwargs)

        FIELD_TABLE_FIELDS.update(self.fields)
        FIELD_TABLES[self.id] = self

    def build_models(self):
        """
        Build models that correspond to the tables underlying this data table.
        """
        self.models = {}

        if self.table_per_level:
            for level in DATASET_GEO_LEVELS[self.dataset_name]:
                model = self._build_model_from_fields(self.fields, self._table_name(level), level)
                model.data_table = self
                self.models[level] = model
        else:
            self.model = self._build_model_from_fields(self.fields, self.id)
            self.model.data_table = self

    def get_model(self, geo_level):
        if self.table_per_level:
            return self.models[geo_level]
        else:
            return self.model

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
        self.total_column = self.column_id([self.denominator_key or 'total'])
        self.columns = OrderedDict()
        self.columns[self.total_column] = {'name': 'Total', 'indent': 0}

        session = get_session()
        try:
            model = self.get_model('country')
            fields = [getattr(model, f) for f in self.fields]

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
        return '-'.join(field_values)

    def raw_data_for_geos(self, geos):
        """
        Pull raw data for a list of geo models.

        Returns a dict mapping the geo ids to table data.
        """
        data = {}

        # group by geo level
        geos = sorted(geos, key=lambda g: g.level)
        for geo_level, geos in groupby(geos, lambda g: g.level):
            model = self.get_model(geo_level)
            geo_codes = [g.code for g in geos]

            if self.table_per_level:
                code = '%s_code' % geo_level
            else:
                code = 'geo_code'
            code_attr = getattr(model, code)

            # initial values
            for geo_code in geo_codes:
                data['%s-%s' % (geo_level, geo_code)] = {
                    'estimate': {},
                    'error': {}}

            session = get_session()
            try:
                geo_values = None
                fields = [getattr(model, f) for f in self.fields]
                rows = session\
                    .query(code_attr,
                           func.sum(model.total).label('total'),
                           *fields)\
                    .group_by(code_attr, *fields)\
                    .order_by(code_attr, *fields)\
                    .filter(code_attr.in_(geo_codes))

                if not self.table_per_level:
                    rows = rows.filter(model.geo_level == geo_level)

                rows = rows.all()

                def permute(level, field_keys, rows):
                    field = self.fields[level]
                    total = 0
                    denominator = 0

                    for key, rows in groupby(rows, lambda r: getattr(r, field)):
                        new_keys = field_keys + [key]
                        col_id = self.column_id(new_keys)

                        if level + 1 < len(self.fields):
                            count = permute(level + 1, new_keys, rows)
                        else:
                            # we've bottomed out
                            count = sum(row.total for row in rows)

                            if self.denominator_key and self.denominator_key == key:
                                # this row must be used as the denominator total,
                                # rather than as an entry in the table
                                denominator = count
                                continue

                        total += count
                        geo_values['estimate'][col_id] = count
                        geo_values['error'][col_id] = 0

                    if self.denominator_key:
                        total = denominator

                    return total

                # rows for each geo
                for geo_code, geo_rows in groupby(rows, lambda r: getattr(r, code)):
                    geo_values = data['%s-%s' % (geo_level, geo_code)]
                    total = permute(0, [], geo_rows)

                    # total
                    geo_values['estimate'][self.total_column] = total
                    geo_values['error'][self.total_column] = 0

            finally:
                session.close()

        return data

    def _build_model_from_fields(self, fields, table_name, geo_level=None):
        '''
        Generates an ORM model for arbitrary census fields by geography.

        :param list fields: the census fields in `api.models.tables.FIELD_TABLE_FIELDS`, e.g. ['highest educational level', 'type of sector']
        :param str table_name: the name of the database table
        :param str geo_level: one of the geographics levels defined in `api.base.geo_levels`, e.g. 'province', or None if the table doesn't use them
        :return: ORM model class containing the given fields with type String(128), a 'total' field
        with type Integer and '%(geo_level)s_code' with type ForeignKey('%(geo_level)s.code')
        :rtype: Model
        '''
        if table_name in _census_table_models:
            return _census_table_models[table_name]

        # We build this array in a particular order, with the geo-related fields first,
        # to ensure that SQLAlchemy creates the underlying table with the compound primary
        # key columns in the correct order:
        #
        #  geo_level, geo_code, field, [field, field, ...]
        #
        # This means postgresql will use the first two elements of the compound primary
        # key -- geo_level and geo_code -- when looking up values for a particular
        # geograhy. This saves us from having to create a secondary index.
        table_args = []

        if geo_level:
            # primary/foreign keys
            table_args.append(Column('%s_code' % geo_level, String(10),
                                     ForeignKey('%s.code' % geo_level),
                                     primary_key=True, index=True))
        else:
            # will form a compound primary key on the fields, and the geo id
            table_args.append(Column('geo_level', String(15), nullable=False, primary_key=True))
            table_args.append(Column('geo_code', String(10), nullable=False, primary_key=True))

        # Now add the columns
        table_args.extend(Column(field, String(128), primary_key=True) for field in fields)

        # and the value column
        table_args.append(Column('total', Integer, nullable=False))

        # create the table model
        class Model(Base):
            __table__ = Table(table_name, Base.metadata, *table_args)
        _census_table_models[table_name] = Model

        # ensure it exists in the DB
        session = get_session()
        try:
            Model.__table__.create(session.get_bind(), checkfirst=True)
        finally:
            session.close()

        return Model

    def _table_name(self, geo_level=None):
        """ What is the name for the underlying database table for this table,
        for the given geo_level?
        """
        if geo_level is not None and geo_level not in geo_levels:
            raise ValueError('Invalid geo_level: %s' % geo_level)

        if self.table_per_level:
            if geo_level is None:
                raise ValueError('Expected a geo_level')
            return '%s_%s' % (self.id, geo_level)

        return self.id


_census_table_models = {}


def get_model_by_name(name):
    return _census_table_models[name]


def get_model_from_fields(fields, geo_level, table_name=None, table_dataset=None):
    """
    Find a model that can provide us these fields, at this level.
    TODO: If table_name = None, give preference to tables with an
    autogenerated id.
    """
    if table_name:
        return get_model_by_name(table_name)

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

    if not table:
        ValueError("Couldn't find a table that covers these fields: %s" % fields)

    return table.get_model(geo_level)


def get_table_id(fields):
    sorted_fields = sorted(fields)
    table_id = TABLE_BAD_CHARS.sub('', '_'.join(sorted_fields))

    return table_id[:MAX_TABLE_NAME_LENGTH]


# the geo levels applicable to different datasets
DATASET_GEO_LEVELS = {
    'Census 2011': ['country', 'province', 'municipality', 'ward'],
    '2011 Municipal Elections': ['country', 'province', 'municipality', 'ward'],
    '2014 National Elections': ['country', 'province', 'municipality', 'ward'],
    '2014 Provincial Elections': ['country', 'province', 'municipality', 'ward'],
    'Police Crime Statistics 2014': ['country', 'province'],
}


# Define our tables so the data API can discover them.
FieldTable(['access to internet'])
FieldTable(['age groups in 5 years'])
FieldTable(['age in completed years'])
FieldTable(['electricity for cooking', 'electricity for heating', 'electricity for lighting'])
FieldTable(['energy or fuel for cooking'])
FieldTable(['energy or fuel for heating'])
FieldTable(['energy or fuel for lighting'])
FieldTable(['gender'])
FieldTable(['gender', 'marital status'])
FieldTable(['gender', 'population group'])
FieldTable(['highest educational level'])
FieldTable(['highest educational level 20 and older'], universe='Individuals 20 and older')
FieldTable(['language'], description='Population by primary language spoken at home')
FieldTable(['employed individual monthly income'], universe='Employed individuals')
FieldTable(['official employment status'], universe='Workers 15 and over')
FieldTable(['type of sector'], universe='Workers 15 and over')
FieldTable(['population group'], table_per_level=False)
FieldTable(['refuse disposal'])
FieldTable(['source of water'])
FieldTable(['toilet facilities'])

FieldTable(['citizenship'])
FieldTable(['province of birth'])
FieldTable(['region of birth'])

FieldTable(['gender of household head', 'age of household head'], universe='Households')
FieldTable(['annual household income', 'gender of household head'], universe='Households')
FieldTable(['household goods'], universe='Households', denominator_key='total households')
FieldTable(['tenure status'], universe='Households')
FieldTable(['type of dwelling'], universe='Households')
FieldTable(['age of household head', 'household size'], universe='Households')

# child-specific tables
FieldTable(['age in completed years'], id='ageincompletedyearssimplified')
FieldTable(['present school attendance', 'age in completed years'], universe='Children 5 to 17')
FieldTable(['parents alive'], universe='Children 14 and under')
FieldTable(['official employment status'], id="officialemploymentstatus15to17", universe="Children 15 to 17")
FieldTable(['highest educational level'], id="highesteducationallevel17", universe="17-year-old children")
FieldTable(['level of education'], id="levelofeducation17labourforce", universe="17-year-old children in the labour force")
FieldTable(['individual monthly income'], id="individualmonthlyincome15to17", universe="Children 15 to 17 who are employed")
FieldTable(['gender'], id='genderunder18', universe='Children under 18')

# child-headed households
FieldTable(['gender of head of household'], id="genderofheadofhouseholdunder18", universe='Households headed by children under 18')
FieldTable(['annual household income'], id="annualhouseholdincomeunder18", universe='Households headed by children under 18')
FieldTable(['type of main dwelling'], id='typeofmaindwellingunder18', universe='Households headed by children under 18')

# Crime
FieldTable(['crime'], universe='Crimes', dataset='Police Crime Statistics 2014', year='2014')

# Elections
FieldTable(['party'], universe='Votes', id='party_votes_national_2014', description='2014 National Election results',
           dataset='2014 National Elections', year='2014')
FieldTable(['party'], universe='Votes', id='party_votes_provincial_2014', description='2014 Provincial Election results',
           dataset='2014 Provincial Elections', year='2014')
FieldTable(['party'], universe='Votes', id='party_votes_municipal_2011', description='2011 Municipal Election results',
           dataset='2011 Municipal Elections', year='2011', table_per_level=False)

# Simple Tables
SimpleTable(
    id='population',
    universe='Population',
    total_column=None,
    description='Total population',
    dataset='Census 2011',
    year='2011'
)
SimpleTable(
    id='voter_turnout_national_2014',
    universe='Registered voters',
    total_column='registered_voters',
    description='2014 National Election voter turnout',
    dataset='2014 National Elections',
    year='2014'
)
SimpleTable(
    id='voter_turnout_provincial_2014',
    universe='Registered voters',
    total_column='registered_voters',
    description='2014 Provincial Election voter turnout',
    dataset='2014 Provincial Elections',
    year='2014'
)
SimpleTable(
    id='votes_provincial_2014',
    universe='Valid votes',
    total_column='total_votes',
    description='2014 Provincial Election votes',
    dataset='2014 Provincial Elections',
    year='2014'
)
SimpleTable(
    id='votes_national_2014',
    universe='Valid votes',
    total_column='total_votes',
    description='2014 National Election votes',
    dataset='2014 National Elections',
    year='2014'
)
SimpleTable(
    id='voter_turnout_municipal_2011',
    universe='Registered and MEC7 voters',
    total_column='registered_voters',
    description='2011 Municipal Election voter turnout',
    dataset='2011 Municipal Elections',
    year='2011'
)
