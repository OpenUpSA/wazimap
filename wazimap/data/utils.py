from __future__ import division
from collections import OrderedDict

from sqlalchemy import create_engine, MetaData, Table, func
from sqlalchemy.orm import sessionmaker, class_mapper
from django.conf import settings


_engine = create_engine(settings.DATABASE_URL)
_metadata = MetaData()
_Session = sessionmaker(bind=_engine)


def get_session():
    return _Session()


def get_table_model(name):
    return Table(name, _metadata, autoload=True, autoload_with=_engine)


class LocationNotFound(Exception):
    pass


class Location(object):
    '''
    Simple object to represent a location in the South African
    context.
    '''
    def __init__(self, address, province_code, ward_code, ward_no,
                 municipality, coordinates):
        self.address = address
        self.province_code = province_code
        # Northern Province is now called Limpopo
        if self.province_code == 'NP':
            self.province_code = 'LIM'
        self.ward_code = ward_code
        self.ward_no = ward_no
        self.municipality = municipality
        self.latitude = coordinates[0]
        self.longitude = coordinates[1]

    def __repr__(self):
        return 'Location(address="%s", ward_code="%s", ' \
               'municipality="%s", province_code="%s", ' \
               'latitude=%s, longitude=%s, ward_no=%s)' \
               % (self.address, self.ward_code, self.municipality,
                  self.province_code, self.latitude, self.longitude,
                  self.ward_no)


def capitalize(s):
    """
    Capitalize the first char of a string, without
    affecting the rest of the string.
    This differs from `str.capitalize` since the latter
    also lowercases the rest of the string.
    """
    if not s:
        return s

    return ''.join([s[0].upper(), s[1:]])


def percent(num, denom, places=2):
    if denom == 0:
        return 0
    else:
        return round(num / denom * 100, places)


def ratio(num, denom, places=2):
    if denom == 0:
        return 0
    else:
        return round(num / denom, places)


def add_metadata(data, table):
    if 'metadata' not in data:
        data['metadata'] = {}

    # this might be a SQLAlchemy model that is linked back to
    # a data table
    if hasattr(table, 'data_table'):
        table = table.data_table

    data['metadata']['table_id'] = table.id
    if table.universe:
        data['metadata']['universe'] = table.universe
    if table.year:
        data['metadata']['year'] = table.year


# dictionaries that merge_dicts will merge
MERGE_KEYS = set(['values', 'numerators', 'error'])


def collapse_categories(data, categories, key_order=None):
    if key_order:
        collapsed = OrderedDict((key, {'name': key}) for key in key_order)
    else:
        collapsed = {}

    metadata = None
    if 'metadata' in data:
        metadata = data['metadata']
        del data['metadata']

    # level 1: iterate over categories in data
    for fields in data.values():
        new_category_name = categories[fields['name']]

        # ignore items with a None category
        if new_category_name is None:
            continue

        collapsed.setdefault(new_category_name, {'name': new_category_name})
        new_fields = collapsed[new_category_name]

        # level 2: iterate over measurement objects in category
        for measurement_key, measurement_objects in fields.iteritems():
            if measurement_key == 'name':
                continue
            new_fields.setdefault(measurement_key, {})
            new_measurement_objects = new_fields[measurement_key]

            # level 3: iterate over data points in measurement objects
            for datapoint_key, datapoint_value in measurement_objects.iteritems():
                try:
                    new_measurement_objects.setdefault(datapoint_key, 0)
                    new_measurement_objects[datapoint_key] += float(datapoint_value)
                except (ValueError, TypeError):
                    new_measurement_objects[datapoint_key] = datapoint_value

    if metadata is not None:
        collapsed['metadata'] = metadata

    return collapsed


def calculate_median(objects, field_name):
    '''
    Calculates the median where obj.total is the distribution count and
    getattr(obj, field_name) is the distribution segment.
    Note: this function assumes the objects are sorted.
    '''
    total = 0
    for obj in objects:
        total += obj.total
    half = total / 2.0

    counter = 0
    for i, obj in enumerate(objects):
        counter += obj.total
        if counter > half:
            if counter - half == 1:
                # total must be even (otherwise counter - half ends with .5)
                return (float(getattr(objects[i - 1], field_name)) +
                        float(getattr(obj, field_name))) / 2.0
            return float(getattr(obj, field_name))
        elif counter == half:
            # total must be even (otherwise half ends with .5)
            return (float(getattr(obj, field_name)) +
                    float(getattr(objects[i + 1], field_name))) / 2.0


def calculate_median_stat(stats):
    '''
    Calculates the stat (key) that lies at the median for stat data from the
    output of get_stat_data.
    Note: this function assumes the objects are sorted.
    '''
    total = 0
    keys = [k for k in stats.iterkeys() if k != 'metadata']
    total = sum(stats[k]['numerators']['this'] for k in keys)
    half = total / 2.0

    counter = 0
    for key in keys:
        counter += stats[key]['numerators']['this']
        if counter >= half:
            return key


def merge_dicts(this, other, other_key):
    '''
    Recursively merges 'other' dict into 'this' dict. In particular
    it merges the leaf nodes specified in MERGE_KEYS.
    '''
    for key, values in this.iteritems():
        if key in MERGE_KEYS:
            if key in other:
                values[other_key] = other[key]['this']
        elif isinstance(values, dict):
            merge_dicts(values, other[key], other_key)


def group_remainder(data, num_items=4, make_percentage=True,
                    remainder_name="Other"):
    '''
    This function assumes data is an OrderedDict instance. It iterates
    over the dict items, grouping items with index >= num_items - 1 together
    under key remainder_name. If make_percentage = True, the 'values' dict
    contains percentages and the 'numerators' dict the totals. Otherwise
    'values' contains the totals.
    '''
    num_key = 'numerators' if make_percentage else 'values'
    total_all = dict((k, 0.0) for k in data.values()[0][num_key].keys())
    total_other = total_all.copy()
    other_dict = {
        "name": remainder_name,
        "error": {"this": 0.0},
        "numerator_errors": {"this": 0.0},
        num_key: total_other,
    }
    cutoff = num_items - 2

    for i, (key, values) in enumerate(data.items()):
        if key == 'metadata':
            continue

        for k, v in values[num_key].iteritems():
            total_all[k] += v

        if i > cutoff:
            del data[key]
            data.setdefault(remainder_name, other_dict)
            for k, v in values[num_key].iteritems():
                total_other[k] += v

    if make_percentage:
        for key, values in data.iteritems():
            if key != 'metadata':
                values['values'] = dict((k, percent(v, total_all[k]))
                                        for k, v in values['numerators'].iteritems())


def get_objects_by_geo(db_model, geo_code, geo_level, session, fields=None, order_by=None,
                       only=None, exclude=None):
    """ Get rows of statistics from the stats mode +db_model+ at a particular
    geo_code and geo_level, summing over the 'total' field and grouping by
    +fields+. Filters to include +only+ and ignore +exclude+, if given.
    """
    if db_model.data_table.table_per_level:
        geo_attr = '%s_code' % geo_level
    else:
        geo_attr = 'geo_code'

    if fields is None:
        fields = [c.key for c in class_mapper(db_model).attrs if c.key not in [geo_attr, 'geo_level', 'total']]

    fields = [getattr(db_model, f) for f in fields]

    objects = session\
        .query(func.sum(db_model.total).label('total'), *fields)\
        .group_by(*fields)\
        .filter(getattr(db_model, geo_attr) == geo_code)

    if only:
        for k, v in only.iteritems():
            objects = objects.filter(getattr(db_model, k).in_(v))

    if exclude:
        for k, v in exclude.iteritems():
            objects = objects.filter(getattr(db_model, k).notin_(v))

    if not db_model.data_table.table_per_level:
        objects = objects.filter(db_model.geo_level == geo_level)

    if order_by is not None:
        attr = order_by
        is_desc = False
        if order_by[0] == '-':
            is_desc = True
            attr = attr[1:]

        if attr == 'total':
            if is_desc:
                attr = attr + ' DESC'
        else:
            attr = getattr(db_model, attr)
            if is_desc:
                attr = attr.desc()

        objects = objects.order_by(attr)

    objects = objects.all()
    if len(objects) == 0:
        raise LocationNotFound("%s for geography '%s-%s' not found"
                               % (db_model.__table__.name, geo_level, geo_code))
    return objects


def get_stat_data(fields, geo_level, geo_code, session, order_by=None,
                  percent=True, total=None, table_fields=None,
                  table_name=None, only=None, exclude=None, exclude_zero=False,
                  recode=None, key_order=None, table_dataset=None,
                  percent_grouping=None, slices=None):
    """
    This is our primary helper routine for building a dictionary suitable for
    a place's profile page, based on a statistic.

    It sums over the data for ``fields`` in the database for the place identified by
    ``geo_level`` and ``geo_code`` and calculates numerators and values. If multiple
    fields are given, it creates nested result dictionaries.

    Control the rows that are included or ignored using ``only``, ``exclude`` and ``exclude_zero``.

    The field values can be recoded using ``recode`` and and re-ordered using ``key_order``.

    :param fields: the census field to build stats for. Specify a list of fields to build
                   nested statistics. If multiple fields are specified, then the values
                   of parameters such as ``only``, ``exclude`` and ``recode`` will change.
                   These must be fields in `api.models.census.census_fields`, e.g. 'highest educational level'
    :type fields: str or list
    :param str geo_level: the geographical level
    :param str geo_code: the geographical code
    :param dbsession session: sqlalchemy session
    :param str order_by: field to order by, or None for default, eg. '-total'
    :param bool percent: should we calculate percentages, or just sum raw values?
    :param list percent_grouping: when calculating percentages, which fields should rows be grouped by?
                                  Default: none of them -- calculate each entry as a percentage of the
                                  whole dataset. Ignored unless ``percent`` is ``True``.
    :param list table_fields: list of fields to use to find the table, defaults to `fields`
    :param int total: the total value to use for percentages, or None to total columns automatically
    :param str table_name: override the table name, otherwise it's calculated from the fields and geo_level
    :param list only: only include these field values. If ``fields`` has many items, this must be a dict
                      mapping field names to a list of strings.
    :type only: dict or list
    :param exclude: ignore these field values. If ``fields`` has many items, this must be a dict
                    mapping field names to a list of strings. Field names are checked
                    before any recoding.
    :type exclude: dict or list
    :param bool exclude_zero: ignore fields that have a zero total
    :param recode: function or dict to recode values of ``key_field``. If ``fields`` is a singleton,
                   then the keys of this dict must be the values to recode from, otherwise
                   they must be the field names and then the values. If this is a lambda,
                   it is called with the field name and its value as arguments.
    :type recode: dict or lambda
    :param key_order: ordering for keys in result dictionary. If ``fields`` has many items,
                      this must be a dict from field names to orderings.
                      The default ordering is determined by ``order``.
    :type key_order: dict or list
    :param str table_dataset: dataset used to help find the table if ``table_name`` isn't given.
    :param list slices: return only a slice of the final data, by choosing a single value for each
                       field in the field list, as specified in the slice list.

    :return: (data-dictionary, total)
    """
    from .tables import get_model_from_fields

    if not isinstance(fields, list):
        fields = [fields]

    n_fields = len(fields)
    many_fields = n_fields > 1

    if order_by is None:
        order_by = fields[0]

    if only is not None:
        if not isinstance(only, dict):
            if many_fields:
                raise ValueError("If many fields are given, then only must be a dict. I got %s instead" % only)
            else:
                only = {fields[0]: set(only)}

    if exclude is not None:
        if not isinstance(exclude, dict):
            if many_fields:
                raise ValueError("If many fields are given, then exclude must be a dict. I got %s instead" % exclude)
            else:
                exclude = {fields[0]: set(exclude)}

    if key_order:
        if not isinstance(key_order, dict):
            if many_fields:
                raise ValueError("If many fields are given, then key_order must be a dict. I got %s instead" % key_order)
            else:
                key_order = {fields[0]: key_order}
    else:
        key_order = {}

    if recode:
        if not isinstance(recode, dict) or not many_fields:
            recode = dict((f, recode) for f in fields)

    model = get_model_from_fields(table_fields or fields, geo_level, table_name, table_dataset)
    objects = get_objects_by_geo(model, geo_code, geo_level, session, fields=fields, order_by=order_by,
                                 only=only, exclude=exclude)

    if total is not None and many_fields:
        raise ValueError("Cannot specify a total if many fields are given")

    if total and percent_grouping:
        raise ValueError("Cannot specify a total if percent_grouping is given")

    if total is None and percent and model.data_table.total_column is None:
        # The table doesn't support calculating percentages, but the caller
        # has asked for a percentage without providing a total value to use.
        # Either specify a total, or specify percent=False
        raise ValueError("Asking for a percent on table %s that doesn't support totals and no total parameter specified." % model.data_table.id)

    # sanity check the percent grouping
    if percent:
        if percent_grouping:
            for field in percent_grouping:
                if field not in fields:
                    raise ValueError("Field '%s' specified in percent_grouping must be in the fields list." % field)
            # re-order percent grouping to be same order as in the field list
            percent_grouping = [f for f in fields if f in percent_grouping]
    else:
        percent_grouping = None

    denominator_key = getattr(model.data_table, 'denominator_key')
    root_data = OrderedDict()
    running_total = 0
    group_totals = {}

    def get_data_object(obj):
        """ Recurse down the list of fields and return the
        final resting place for data for this stat. """
        data = root_data

        for i, field in enumerate(fields):
            key = getattr(obj, field)

            if recode and field in recode:
                recoder = recode[field]
                if isinstance(recoder, dict):
                    key = recoder.get(key, key)
                else:
                    key = recoder(field, key)
            else:
                key = capitalize(key)

            # enforce key ordering the first time we see this field
            if (not data or data.keys() == ['metadata']) and field in key_order:
                for fld in key_order[field]:
                    data[fld] = OrderedDict()

            # ensure it's there
            if key not in data:
                data[key] = OrderedDict()

            data = data[key]

            # default values for intermediate fields
            if data is not None and i < n_fields - 1:
                data['metadata'] = {'name': key}

        # data is now the dict where the end value is going to go
        if not data:
            data['name'] = key
            data['numerators'] = {'this': 0.0}

        return data

    # run the stats for the objects
    for obj in objects:
        if obj.total == 0 and exclude_zero:
            continue

        if denominator_key and getattr(obj, model.data_table.fields[-1]) == denominator_key:
            total = obj.total
            # don't include the denominator key in the output
            continue

        # get the data dict where these values must go
        data = get_data_object(obj)
        if not data:
            continue

        data['numerators']['this'] += obj.total
        running_total += obj.total
        if percent_grouping:
            key = tuple(getattr(obj, field) for field in percent_grouping)
            data['_group_key'] = key
            group_totals[key] = group_totals.get(key, 0) + obj.total

    if total is not None:
        grand_total = total
    else:
        grand_total = running_total

    # add in percentages
    def calc_percent(data):
        for key, data in data.iteritems():
            if not key == 'metadata':
                if 'numerators' in data:
                    if percent:
                        if '_group_key' in data:
                            total = group_totals[data.pop('_group_key')]
                        else:
                            total = grand_total

                        perc = 0 if total == 0 else (data['numerators']['this'] / total * 100)
                        data['values'] = {'this': round(perc, 2)}
                    else:
                        data['values'] = dict(data['numerators'])
                        data['numerators']['this'] = None
                else:
                    calc_percent(data)

    calc_percent(root_data)

    if slices:
        for v in slices:
            root_data = root_data[v]

    add_metadata(root_data, model)

    return root_data, grand_total


def create_debug_dump(data, geo_level, name):
    import os
    import json
    debug_dir = os.path.join(os.path.dirname(__file__), 'debug')
    if not os.path.exists(debug_dir):
        os.mkdir(debug_dir)
    with open(os.path.join(debug_dir, '%s_%s.json' % (name, geo_level)), 'w') as f:
        f.write(json.dumps(data, indent=4))
