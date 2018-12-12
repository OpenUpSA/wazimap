import re
import warnings

import sqlalchemy.types

from wazimap.data.utils import get_datatable as actual_get_datatable


'''
DEPRECATED!

Legacy models for handling census data. These are deprecated and will be removed
in the next version of Wazimap. They only exist in stub form to aid with migrating
to the new, Django-based models using `manage.py upgradetables`.
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


def get_datatable(name):
    return actual_get_datatable(name)


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
        warnings.warn("SimpleTables are no longer used. Use `python manage.py upgradetables` to migrate.", DeprecationWarning)
        self.id = id.upper()
        self.db_table = db_table or self.id.lower()

        self.model = model
        self.universe = universe
        self.description = description
        self.year = year
        self.dataset_name = dataset
        self.total_column = total_column
        self.stat_type = stat_type

        DATA_TABLES[self.id] = self

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
        warnings.warn("FieldTables are no longer used. Use `python manage.py upgradetables` to migrate.", DeprecationWarning)
        description = description or (universe + ' by ' + ', '.join(fields))
        id = id or get_table_id(fields)

        self.fields = fields
        self.field_set = set(fields)
        self.denominator_key = denominator_key
        self.has_total = has_total
        self.value_type = getattr(sqlalchemy.types, value_type)

        super(FieldTable, self).__init__(
            id=id, model=None, universe=universe, description=description, stat_type=stat_type,
            db_table=db_table, **kwargs)

        FIELD_TABLE_FIELDS.update(self.fields)
        FIELD_TABLES[self.id] = self

def get_table_id(fields):
    sorted_fields = sorted(fields)
    table_id = TABLE_BAD_CHARS.sub('', '_'.join(sorted_fields))

    return table_id[:MAX_TABLE_NAME_LENGTH].upper()
