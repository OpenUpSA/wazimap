from __future__ import division
from collections import OrderedDict
import threading

from sqlalchemy import create_engine, MetaData
from sqlalchemy.orm import sessionmaker

from django.conf import settings
from django.db.backends.base.creation import TEST_DATABASE_PREFIX
from django.db import connection

# See http://docs.sqlalchemy.org/en/latest/core/constraints.html#constraint-naming-conventions
naming_convention = {
    "ix": "ix_%(column_0_label)s",
    "uq": "uq_%(table_name)s_%(column_0_name)s",
    "ck": "ck_%(table_name)s_%(constraint_name)s",
    "fk": "fk_%(table_name)s_%(column_0_name)s_%(referred_table_name)s",
    "pk": "pk_%(table_name)s",
}

if settings.TESTING:
    # Hack to ensure the sqlalchemy database name matches the Django one
    # during testing
    url = settings.DATABASE_URL
    parts = url.split("/")

    # use the test database name
    db_name = connection.settings_dict.get("TEST", {}).get("NAME")
    if db_name is None:
        db_name = TEST_DATABASE_PREFIX + parts[-1]

    parts[-1] = db_name
    url = "/".join(parts)
    _engine = create_engine(url)
    _metadata = MetaData(bind=_engine, naming_convention=naming_convention)
else:
    _engine = create_engine(settings.DATABASE_URL)
    _metadata = MetaData(
        bind=_engine, naming_convention=naming_convention, reflect=True
    )


_Session = sessionmaker(bind=_engine)


# dictionaries that merge_dicts will merge
MERGE_KEYS = set(["values", "numerators", "error"])


def get_session():
    return _Session()


def capitalize(s):
    """
    Capitalize the first char of a string, without
    affecting the rest of the string.
    This differs from `str.capitalize` since the latter
    also lowercases the rest of the string.
    """
    if not s:
        return s

    return "".join([s[0].upper(), s[1:]])


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


def add_metadata(data, table, release):
    if "metadata" not in data:
        data["metadata"] = {}

    data["metadata"]["table_id"] = table.name.upper()
    if table.universe:
        data["metadata"]["universe"] = table.universe
    if release.name and release.year:
        data["metadata"]["release"] = "%s %s" % (release.name, release.year)
    if release.year:
        data["metadata"]["year"] = release.year
    if release.citation:
        data["metadata"]["citation"] = release.citation


def collapse_categories(data, categories, key_order=None):
    if key_order:
        collapsed = OrderedDict((key, {"name": key}) for key in key_order)
    else:
        collapsed = {}

    metadata = None
    if "metadata" in data:
        metadata = data["metadata"]
        del data["metadata"]

    # level 1: iterate over categories in data
    for fields in data.values():
        new_category_name = categories[fields["name"]]

        # ignore items with a None category
        if new_category_name is None:
            continue

        collapsed.setdefault(new_category_name, {"name": new_category_name})
        new_fields = collapsed[new_category_name]

        # level 2: iterate over measurement objects in category
        for measurement_key, measurement_objects in fields.items():
            if measurement_key == "name":
                continue
            new_fields.setdefault(measurement_key, {})
            new_measurement_objects = new_fields[measurement_key]

            # level 3: iterate over data points in measurement objects
            for datapoint_key, datapoint_value in measurement_objects.items():
                try:
                    new_measurement_objects.setdefault(datapoint_key, 0)
                    new_measurement_objects[datapoint_key] += float(datapoint_value)
                except (ValueError, TypeError):
                    new_measurement_objects[datapoint_key] = datapoint_value

    if metadata is not None:
        collapsed["metadata"] = metadata

    return collapsed


def calculate_median(objects, field_name):
    """
    Calculates the median where obj.total is the distribution count and
    getattr(obj, field_name) is the distribution segment.
    Note: this function assumes the objects are sorted.
    """
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
                return (
                    float(getattr(objects[i - 1], field_name))
                    + float(getattr(obj, field_name))
                ) / 2.0
            return float(getattr(obj, field_name))
        elif counter == half:
            # total must be even (otherwise half ends with .5)
            return (
                float(getattr(obj, field_name))
                + float(getattr(objects[i + 1], field_name))
            ) / 2.0


def calculate_median_stat(stats):
    """
    Calculates the stat (key) that lies at the median for stat data from the
    output of get_stat_data.
    Note: this function assumes the objects are sorted.
    """
    total = 0
    keys = [k for k in stats.keys() if k != "metadata"]
    total = sum(stats[k]["numerators"]["this"] for k in keys)
    half = total / 2.0

    counter = 0
    for key in keys:
        counter += stats[key]["numerators"]["this"]
        if counter >= half:
            return key


def merge_dicts(this, other, other_key):
    """
    Recursively merges 'other' dict into 'this' dict. In particular
    it merges the leaf nodes specified in MERGE_KEYS.
    """
    for key, values in this.items():
        if key in MERGE_KEYS:
            if key in other:
                values[other_key] = other[key]["this"]
        elif isinstance(values, dict):
            merge_dicts(values, other[key], other_key)


def group_remainder(data, num_items=4, make_percentage=True, remainder_name="Other"):
    """
    This function assumes data is an OrderedDict instance. It iterates
    over the dict items, grouping items with index >= num_items - 1 together
    under key remainder_name. If make_percentage = True, the 'values' dict
    contains percentages and the 'numerators' dict the totals. Otherwise
    'values' contains the totals.
    """
    num_key = "numerators" if make_percentage else "values"
    total_all = dict((k, 0.0) for k in list(data.values())[0][num_key].keys())
    total_other = total_all.copy()
    other_dict = {
        "name": remainder_name,
        "error": {"this": 0.0},
        "numerator_errors": {"this": 0.0},
        num_key: total_other,
    }
    cutoff = num_items - 2

    newdata = data.copy()
    for i, (key, values) in enumerate(newdata.items()):
        if key == "metadata":
            continue

        for k, v in values[num_key].items():
            total_all[k] += v

        if i > cutoff:
            del data[key]
            data.setdefault(remainder_name, other_dict)
            for k, v in values[num_key].items():
                total_other[k] += v

    if make_percentage:
        for key, values in data.items():
            if key != "metadata":
                values["values"] = dict(
                    (k, percent(v, total_all[k]))
                    for k, v in values["numerators"].items()
                )


def get_stat_data(
    fields,
    geo,
    session,
    table_dataset=None,
    table_universe=None,
    table_fields=None,
    table_name=None,
    **kwargs
):
    """
    This is our primary helper routine for building a dictionary suitable for
    a place's profile page, based on a statistic.

    See `wazimap.models.data.FieldTable.get_stat_data` for a full description
    of all parameters.

    :param fields: the census field to build stats for. Specify a list of fields to build
                   nested statistics. If multiple fields are specified, then the values
                   of parameters such as ``only``, ``exclude`` and ``recode`` will change.
                   These must be fields in `api.models.census.census_fields`, e.g. 'highest educational level'
    :type fields: str or list
    :param geo: the geograhy object
    :param dbsession session: sqlalchemy session
    :param list table_fields: list of fields to use to find the table, defaults to `fields`
    :param str table_universe: universe for finding a table, if the fields are ambiguous.
    :param str table_dataset: dataset name for finding a table, if the fields are ambiguous.
    :param str table_name: name of the FieldTable to use, if the fields are ambiguous.

    :return: (data-dictionary, total)
    """
    from wazimap.models import FieldTable

    if not isinstance(fields, list):
        fields = [fields]

    table_fields = table_fields or fields

    # get the table and the model
    data_table = FieldTable.for_fields(
        table_fields, universe=table_universe, dataset=table_dataset, name=table_name
    )
    if not data_table:
        ValueError("Couldn't find a table that covers these fields: %s" % table_fields)

    return data_table.get_stat_data(fields, geo, session, **kwargs)


def get_table_for_fields(fields, universe=None, dataset=None):
    from wazimap.models import FieldTable

    return FieldTable.for_fields(fields, universe=universe, dataset=dataset)


def get_simpletable(name, universe=None, dataset=None):
    from wazimap.models import SimpleTable

    return SimpleTable.find(name, universe=universe, dataset=dataset)


def get_datatable(name):
    from wazimap.models import SimpleTable, FieldTable

    for cls in [SimpleTable, FieldTable]:
        table = cls.find(name)
        if table:
            return table


def create_debug_dump(data, geo_level, name):
    import os
    import json

    debug_dir = os.path.join(os.path.dirname(__file__), "debug")
    if not os.path.exists(debug_dir):
        os.mkdir(debug_dir)
    with open(os.path.join(debug_dir, "%s_%s.json" % (name, geo_level)), "w") as f:
        f.write(json.dumps(data, indent=4))


class DatasetContext(object):
    """ Use for storing thread-local context to make it less verbose
    when building profile poges.
    """

    _threadlocal = threading.local()

    def __init__(self, **kwargs):
        self.year = kwargs.pop("year", None)

    def get(self, name):
        val = getattr(self, name, None)
        if val is None:
            raise ValueError(
                "A dataset context for %s is required. Have you specified it by calling dataset_context(%s=...)?"
                % (name, name)
            )
        return val

    def __enter__(self):
        self._prev_context = getattr(
            DatasetContext._threadlocal, "dataset_context", None
        )
        DatasetContext._threadlocal.dataset_context = self

    def __exit__(self, exc_type, exc_value, traceback):
        DatasetContext._threadlocal.dataset_context = self._prev_context

    @classmethod
    def ensure_context(cls):
        ctx = getattr(cls._threadlocal, "dataset_context", None)
        if ctx is None:
            ctx = cls()
        return ctx


def dataset_context(year=None):
    """ Sets the dataset context. Mostly used when setting the best release year to use when building
    a profile::

        with dataset_context(year='2011'):
            get_stat_data(...)

    :param str year: release year to use. Use 'latest' for the latest year.
    """
    return DatasetContext(year=year)


def current_context():
    return DatasetContext.ensure_context()


def get_page_releases(dataset_name, geo, year, filter_releases=True):
    """
    Return the active release being viewed and a list of related releases
    for a geo and dataset
    """
    from wazimap.models import Dataset

    releases = {}
    releases.setdefault("other", [])

    query = Dataset.objects.get(name=dataset_name).releases.order_by("-year")

    # Some releases don't have data for all geo_levels
    available_years = settings.WAZIMAP["available_release_years"].get(
        geo.geo_level, None
    )
    if filter_releases and available_years:
        query = query.filter(year__in=available_years)

    dataset_releases = [r.as_dict() for r in query.all()]

    if year == "latest":
        releases["active"] = dataset_releases[0]
        releases["other"] = dataset_releases[1:]
    else:
        for r in dataset_releases:
            if r["year"] == str(year):
                releases["active"] = r
            else:
                releases["other"].append(r)

    return releases
