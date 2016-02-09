from ...geo import get_summary_geo_info

from ..utils import get_session, merge_dicts, get_stat_data


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


CRIME_CLASSES = {
    'contact': [
        'Murder',
        'Total Sexual Offences',
        'Attempted murder',
        'Assault with the intent to inflict grievous bodily harm',
        'Common assault',
        'Robbery with aggravating circumstances',
        'Common robbery',
        'Arson',
        'Malicious damage to property',
    ],
    'property': [
        'Burglary at non-residential premises',
        'Burglary at residential premises',
        'Theft of motor vehicle and motorcycle',
        'Theft out of or from motor vehicle',
        'Stock-theft',
    ],
    'policeaction': [
        'Unlawful possession of firearms and ammunition',
        'Drug-related crime',
        'Driving under the influence of alcohol or drugs',
    ],
    'otherserious': [
        'All theft not mentioned elsewhere',
        'Commercial crime',
        'Shoplifting',
    ],
    'aggravatedrobbery': [
        'Carjacking',
        'Truck hijacking',
        'Robbery at residential premises',
        'Robbery at non-residential premises',
    ],
    'other': [
        'Culpable homicide',
        'Public violence',
        'Crimen injuria',
        'Neglect and ill-treatment of children',
        'Kidnapping',
    ]
}


def get_crime_breakdown_profile(geo_code, geo_level, session):
    crime_distribution, _ = get_stat_data(
            ['crime'], geo_level, geo_code, session,
            percent=False, exclude_zero=True, order_by='-total')

    classes = {}
    for name, crimes in CRIME_CLASSES.iteritems():
        classes[name], _ = get_stat_data(
            ['crime'], geo_level, geo_code, session,
            only=crimes,
            percent=False, exclude_zero=True, order_by='-total')

    classes['crime_distribution'] = crime_distribution

    return classes
