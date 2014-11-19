from collections import OrderedDict

from sqlalchemy import func

from api.models import get_model_from_fields
from api.utils import get_session, LocationNotFound

from .utils import (collapse_categories, calculate_median, calculate_median_stat, get_summary_geo_info,
                    merge_dicts, group_remainder, add_metadata, get_stat_data, get_objects_by_geo, percent,
                    create_debug_dump)


def get_crime_profile(geo_code, geo_level):
    session = get_session()

    try:
        geo_summary_levels = get_summary_geo_info(geo_code, geo_level, session)
        data = {}
        data['crime'] = get_crime_breakdown_profile(geo_code, geo_level, session)

        # get profiles for province and/or country
        for level, code in geo_summary_levels:
            # merge summary profile into current geo profile
            merge_dicts(data['crime'], get_crime_breakdown_profile(code, level, session), level)

        return data

    finally:
        session.close()


def get_crime_breakdown_profile(geo_code, geo_level, session):
    crime_distribution, _ = get_stat_data(
            ['crime', 'year'], geo_level, geo_code, session,
            exclude_zero=True, only={'year': ['2014']},
            order_by='-total')

    return {
        'crime_distribution': crime_distribution,
    }
