from collections import OrderedDict

from ...geo import get_summary_geo_info
from ..utils import get_session, get_stat_data, merge_dicts, group_remainder
from ..models.tables import get_datatable


ELECTIONS = [
    {
        'name': 'National 2014',
        'table_code': 'national_2014',
        'dataset': '2014 National Elections',
    },
    {
        'name': 'Provincial 2014',
        'table_code': 'provincial_2014',
        'dataset': '2014 Provincial Elections',
    },
    {
        'name': 'Municipal 2011',
        'table_code': 'municipal_2011',
        'dataset': '2011 Municipal Elections',
    },
]


def make_party_acronym(name):
    '''
    This is good enough since only 2 parties have the same acronym,
    and these are local parties in different provinces.
    '''
    exceptions = {
        "AFRICAN CHRISTIAN ALLIANCE-AFRIKANER CHRISTEN ALLIANSIE": "ACA",
        "DEMOCRATIC ALLIANCE/DEMOKRATIESE ALLIANSIE": "DA",
        "CAPE PARTY/ KAAPSE PARTY": "CP",
        "KOUGA 2000": "K2000",
        "CONGRESS  OF THE PEOPLE": "COPE",
        "AGANG SOUTH AFRICA": "AGANG",
        "VRYHEIDSFRONT PLUS": "VF+",
        "PAN AFRICANIST CONGRESS OF AZANIA": "PAC",
        "FRONT NASIONAAL/FRONT NATIONAL": "FN",
        "INDEPENDENT": "INDEP.",
    }
    try:
        return exceptions[name]
    except KeyError:
        ignore = set(('AND', 'BY', 'FOR', 'IN', 'OF', 'TO'))
        acronym = ''.join([w.lstrip()[0] for w in name.split(' ')
                           if w.strip() and w.upper() not in ignore])
        return acronym


def get_elections_profile(geo_code, geo_level):
    data = OrderedDict()
    session = get_session()
    try:
        geo_summary_levels = get_summary_geo_info(geo_code, geo_level, session)

        for election in ELECTIONS:
            section = election['name'].lower().replace(' ', '_')
            data[section] = get_election_data(geo_code, geo_level, election, session)

            # get profiles for province and/or country
            for level, code in geo_summary_levels:
                # merge summary profile into current geo profile
                merge_dicts(data[section], get_election_data(code, level, election, session), level)

            # tweaks to make the data nicer
            # show 8 largest parties on their own and group the rest as 'Other'
            group_remainder(data[section]['party_distribution'], 9)

        if geo_level == 'country':
            add_elections_media_coverage(data)

        return data
    finally:
        session.close()


def get_election_data(geo_code, geo_level, election, session):
    party_data, total_valid_votes = get_stat_data(
        ['party'], geo_level, geo_code, session,
        table_dataset=election['dataset'],
        recode=lambda f, v: make_party_acronym(v),
        order_by='-total')

    results = {
        'name': election['name'],
        'party_distribution': party_data,
    }

    # voter registration and turnout
    table = get_datatable('voter_turnout_%s' % election['table_code'])
    data, _ = table.get_stat_data(geo_level, geo_code, 'registered_voters', percent=False,
                                  recode={'registered_voters': 'Number of registered voters'})
    results['registered_voters'] = data['Number of registered voters']

    data, _ = table.get_stat_data(geo_level, geo_code, 'total_votes', percent=True,
                                  total='registered_voters',
                                  recode={'total_votes': 'Of registered voters cast their vote'})
    results['total_votes'] = data['Of registered voters cast their vote']

    return results


def add_elections_media_coverage(data):
    party_coverage = [
        ('ANC', 37.78),
        ('DA', 25.51),
        ('EFF', 13.30),
        ('COPE', 4.15),
        ('AGANG', 3.24),
        ('IFP', 2.55),
        ('Other', 13.47),
    ]

    gender_coverage = [
        ('Female', 22.02),
        ('Male', 77.98),
    ]

    # fold them in
    parties = OrderedDict()
    for key, perc in party_coverage:
        parties[key] = {
            'name': key,
            'values': {'this': perc}
        }

    genders = OrderedDict()
    for key, perc in gender_coverage:
        genders[key] = {
            'name': key,
            'values': {'this': perc}
        }

    data['national_2014']['media_coverage'] = {
        'parties': parties,
        'genders': genders,
    }
