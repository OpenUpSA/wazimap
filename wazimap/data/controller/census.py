from collections import OrderedDict

from sqlalchemy import func

from ..models import get_model_from_fields
from ..models.tables import get_datatable, get_table_id
from ..controller.geography import get_geography

from ...geo import get_summary_geo_info

from ..utils import (get_session, add_metadata, collapse_categories, calculate_median,
                     calculate_median_stat, merge_dicts, group_remainder,
                     get_stat_data, get_objects_by_geo, percent)


PROFILE_SECTIONS = (
    'demographics',  # population group, age group in 5 years, age in completed years
    'economics',  # individual monthly income, type of sector, official employment status
    'service_delivery',  # source of water, refuse disposal
    'education',  # highest educational level
    'households',  # household heads, etc.
    'children',  # child-related stats
    'child_households',  # households headed by children
)

# Education categories

COLLAPSED_EDUCATION_CATEGORIES = {
    'Gade 0': 'Some primary',
    'Grade 1 / Sub A': 'Some primary',
    'Grade 2 / Sub B': 'Some primary',
    'Grade 3 / Std 1/ABET 1Kha Ri Gude;SANLI': 'Some primary',
    'Grade 4 / Std 2': 'Some primary',
    'Grade 5 / Std 3/ABET 2': 'Some primary',
    'Grade 6 / Std 4': 'Some primary',
    'Grade 7 / Std 5/ ABET 3': 'Primary',
    'Grade 8 / Std 6 / Form 1': 'Some secondary',
    'Grade 9 / Std 7 / Form 2/ ABET 4': 'Some secondary',
    'Grade 10 / Std 8 / Form 3': 'Some secondary',
    'Grade 11 / Std 9 / Form 4': 'Some secondary',
    'Grade 12 / Std 10 / Form 5': 'Grade 12 (Matric)',
    'NTC I / N1/ NIC/ V Level 2': 'Some secondary',
    'NTC II / N2/ NIC/ V Level 3': 'Some secondary',
    'NTC III /N3/ NIC/ V Level 4': 'Grade 12 (Matric)',
    'N4 / NTC 4': 'N/A',
    'N5 /NTC 5': 'N/A',
    'N6 / NTC 6': 'Undergrad',
    'Certificate with less than Grade 12 / Std 10': 'Some secondary',
    'Diploma with less than Grade 12 / Std 10': 'Some secondary',
    'Certificate with Grade 12 / Std 10': 'Grade 12 (Matric)',
    'Diploma with Grade 12 / Std 10': 'Grade 12 (Matric)',
    'Higher Diploma': 'Undergrad',
    'Post Higher Diploma Masters; Doctoral Diploma': 'Post-grad',
    'Bachelors Degree': 'Undergrad',
    'Bachelors Degree and Post graduate Diploma': 'Post-grad',
    'Honours degree': 'Post-grad',
    'Higher Degree Masters / PhD': 'Post-grad',
    'Other': 'Other',
    'No schooling': 'None',
    'Unspecified': 'N/A',
    'Not applicable': 'N/A',
}
EDUCATION_GET_OR_HIGHER = set([
    'Grade 9 / Std 7 / Form 2/ ABET 4',
    'Grade 10 / Std 8 / Form 3',
    'Grade 11 / Std 9 / Form 4',
    'Grade 12 / Std 10 / Form 5',
    'NTC I / N1/ NIC/ V Level 2',
    'NTC II / N2/ NIC/ V Level 3',
    'NTC III /N3/ NIC/ V Level 4',
    'N4 / NTC 4',
    'N5 /NTC 5',
    'N6 / NTC 6',
    'Certificate with less than Grade 12 / Std 10',
    'Diploma with less than Grade 12 / Std 10',
    'Certificate with Grade 12 / Std 10',
    'Diploma with Grade 12 / Std 10',
    'Higher Diploma',
    'Post Higher Diploma Masters; Doctoral Diploma',
    'Bachelors Degree',
    'Bachelors Degree and Post graduate Diploma',
    'Honours degree',
    'Higher Degree Masters / PhD',
])
EDUCATION_FET_OR_HIGHER = set([
    'Grade 12 / Std 10 / Form 5',
    'N4 / NTC 4',
    'N5 /NTC 5',
    'N6 / NTC 6',
    'Certificate with Grade 12 / Std 10',
    'Diploma with Grade 12 / Std 10',
    'Higher Diploma',
    'Post Higher Diploma Masters; Doctoral Diploma',
    'Bachelors Degree',
    'Bachelors Degree and Post graduate Diploma',
    'Honours degree',
    'Higher Degree Masters / PhD',
])
EDUCATION_KEY_ORDER = (
    'None', 'Other',
    'Some primary', 'Primary',
    'Some secondary',
    'Grade 12 (Matric)',
    'Undergrad',
    'Post-grad'
)

# Age categories

COLLAPSED_AGE_CATEGORIES = {
    '00 - 04': '0-9',
    '05 - 09': '0-9',
    '10 - 14': '10-19',
    '15 - 19': '10-19',
    '20 - 24': '20-29',
    '25 - 29': '20-29',
    '30 - 34': '30-39',
    '35 - 39': '30-39',
    '40 - 44': '40-49',
    '45 - 49': '40-49',
    '50 - 54': '50-59',
    '55 - 59': '50-59',
    '60 - 64': '60-69',
    '65 - 69': '60-69',
    '70 - 74': '70-79',
    '75 - 79': '70-79',
    '80 - 84': '80+',
    '85+': '80+',
}

# Income categories

COLLAPSED_INCOME_CATEGORIES = OrderedDict()
COLLAPSED_INCOME_CATEGORIES["No income"] = "R0"
COLLAPSED_INCOME_CATEGORIES["R 1 - R 400"] = "Under R400"
COLLAPSED_INCOME_CATEGORIES["R 401 - R 800"] = "R400 - R800"
COLLAPSED_INCOME_CATEGORIES["R 801 - R 1 600"] = "R800 - R2k"
COLLAPSED_INCOME_CATEGORIES["R 1 601 - R 3 200"] = "R2k - R3k"
COLLAPSED_INCOME_CATEGORIES["R 3 201 - R 6 400"] = "R3k - R6k"
COLLAPSED_INCOME_CATEGORIES["R 6 401 - R 12 800"] = "R6k - R13k"
COLLAPSED_INCOME_CATEGORIES["R 12 801 - R 25 600"] = "R13k - R26k"
COLLAPSED_INCOME_CATEGORIES["R 25 601 - R 51 200"] = "R26k - R51k"
COLLAPSED_INCOME_CATEGORIES["R 51 201 - R 102 400"] = "R51k - R102k"
COLLAPSED_INCOME_CATEGORIES["R 102 401 - R 204 800"] = "Over R102k"
COLLAPSED_INCOME_CATEGORIES["R 204 801 or more"] = "Over R102k"
COLLAPSED_INCOME_CATEGORIES["Unspecified"] = "Unspecified"

ESTIMATED_INCOME_CATEGORIES = {}
ESTIMATED_INCOME_CATEGORIES["R0"] = 0
ESTIMATED_INCOME_CATEGORIES["Under R400"] = 200
ESTIMATED_INCOME_CATEGORIES["R400 - R800"] = 600
ESTIMATED_INCOME_CATEGORIES["R800 - R2k"] = 1200
ESTIMATED_INCOME_CATEGORIES["R2k - R3k"] = 2400
ESTIMATED_INCOME_CATEGORIES["R3k - R6k"] = 4800
ESTIMATED_INCOME_CATEGORIES["R6k - R13k"] = 9600
ESTIMATED_INCOME_CATEGORIES["R13k - R26k"] = 19200
ESTIMATED_INCOME_CATEGORIES["R26k - R51k"] = 38400
ESTIMATED_INCOME_CATEGORIES["R51k - R102k"] = 76800
ESTIMATED_INCOME_CATEGORIES["Over R102k"] = 204800
ESTIMATED_INCOME_CATEGORIES["Unspecified"] = None

# Household income
HOUSEHOLD_INCOME_RECODE = OrderedDict()
HOUSEHOLD_INCOME_RECODE['No income'] = 'R0'
HOUSEHOLD_INCOME_RECODE['R 1 - R 4800'] = 'Under R4800'
HOUSEHOLD_INCOME_RECODE['R 4801 - R 9600'] = 'R5k - R10k'
HOUSEHOLD_INCOME_RECODE['R 9601 - R 19 600'] = 'R10k - R20k'
HOUSEHOLD_INCOME_RECODE['R 19 601 - R 38 200'] = 'R20k - R40k'
HOUSEHOLD_INCOME_RECODE['R 38 201 - R 76 400'] = 'R40k - R75k'
HOUSEHOLD_INCOME_RECODE['R 76 401 - R 153 800'] = 'R75k - R150k'
HOUSEHOLD_INCOME_RECODE['R 153 801 - R 307 600'] = 'R150k - R300k'
HOUSEHOLD_INCOME_RECODE['R 307 601 - R 614 400'] = 'R300k - R600k'
HOUSEHOLD_INCOME_RECODE['R 614 001 - R 1 228 800'] = 'R600k - R1.2M'
HOUSEHOLD_INCOME_RECODE['R 1 228 801 - R 2 457 600'] = 'R1.2M - R2.5M'
HOUSEHOLD_INCOME_RECODE['R 2 457 601 or more'] = 'Over R2.5M'

HOUSEHOLD_INCOME_ESTIMATE = {}
HOUSEHOLD_INCOME_ESTIMATE['R0'] = 0
HOUSEHOLD_INCOME_ESTIMATE['Under R4800'] = 2400
HOUSEHOLD_INCOME_ESTIMATE['R5k - R10k'] = 7200
HOUSEHOLD_INCOME_ESTIMATE['R10k - R20k'] = 14600
HOUSEHOLD_INCOME_ESTIMATE['R20k - R40k'] = 29400
HOUSEHOLD_INCOME_ESTIMATE['R40k - R75k'] = 57300
HOUSEHOLD_INCOME_ESTIMATE['R75k - R150k'] = 115100
HOUSEHOLD_INCOME_ESTIMATE['R150k - R300k'] = 230700
HOUSEHOLD_INCOME_ESTIMATE['R300k - R600k'] = 461000
HOUSEHOLD_INCOME_ESTIMATE['R600k - R1.2M'] = 921400
HOUSEHOLD_INCOME_ESTIMATE['R1.2M - R2.5M'] = 1843200
HOUSEHOLD_INCOME_ESTIMATE['Over R2.5M'] = 2500000
HOUSEHOLD_INCOME_ESTIMATE['Unspecified'] = None



# Sanitation categories

SHORT_WATER_SOURCE_CATEGORIES = {
    "Regional/local water scheme (operated by municipality or other water services provider)": "Service provider",
    "Water tanker": "Tanker",
    "Spring": "Spring",
    "Other": "Other",
    "Dam/pool/stagnant water": "Dam",
    "River/stream": "River",
    "Not applicable": "N/A",
    "Borehole": "Borehole",
    "Rain water tank": "Rainwater tank",
    "Water vendor": "Vendor",
}

SHORT_REFUSE_DISPOSAL_CATEGORIES = {
    "Removed by local authority/private company less often": "Service provider (not regularly)",
    "Own refuse dump": "Own dump",
    "Communal refuse dump": "Communal dump",
    "Other": "Other",
    "Not applicable": "N/A",
    "No rubbish disposal": "None",
    "Unspecified": "Unspecified",
    "Removed by local authority/private company at least once a week": "Service provider (regularly)",
}

COLLAPSED_TOILET_CATEGORIES = {
    "Flush toilet (connected to sewerage system)": "Flush toilet",
    "Flush toilet (with septic tank)": "Flush toilet",
    "Chemical toilet": "Chemical toilet",
    "Pit toilet with ventilation (VIP)": "Pit toilet",
    "Pit toilet without ventilation": "Pit toilet",
    "Bucket toilet": "Bucket toilet",
    "Other": "Other",
    "None": "None",
    "Unspecified": "Unspecified",
    "Not applicable": "N/A",
}

HOUSEHOLD_GOODS_RECODE = {
    'cell phone': 'Cellphone',
    'computer': 'Computer',
    'dvd player': 'DVD player',
    'electric/gas stove': 'Stove',
    'landline/telephone': 'Telephone',
    'motor-car': 'Car',
    'radio': 'Radio',
    'refrigerator': 'Fridge',
    'satellite television': 'Satellite TV',
    'television': 'TV',
    'vacuum cleaner': 'Vacuum cleaner',
    'washing machine': 'Washing machine',
}


# Type of dwelling

TYPE_OF_DWELLING_RECODE = {
    'House or brick/concrete block structure on a separate stand or yard or on a farm': 'House',
    'Traditional dwelling/hut/structure made of traditional materials': 'Traditional',
    'Flat or apartment in a block of flats': 'Apartment',
    'Cluster house in complex': 'Cluster house',
    'Townhouse (semi-detached house in a complex)': 'Townhouse',
    'Semi-detached house': 'Semi-detached house',
    'House/flat/room in backyard': 'Backyard in flat',
    'Informal dwelling (shack; in backyard)': 'Shack',
    'Informal dwelling (shack; not in backyard; e.g. in an informal/squatter settlement or on a farm)': 'Shack',
    'Room/flatlet on a property or larger dwelling/servants quarters/granny flat': 'Room or flatlet',
    'Caravan/tent': 'Caravan/tent',
    'Other': 'Other',
    'Unspecified': 'Unspecified',
    'Not applicable': 'N/A',
}


COLLAPSED_EMPLOYMENT_CATEGORIES = {
    'Employed': 'In labour force',
    'Unemployed': 'In labour force',
    'Discouraged work-seeker': 'In labour force',
    'Other not economically active': 'Not in labour force',
    'Age less than 15 years': 'Not in labour force',
    'Not applicable': 'Not in labour force'
}


def get_census_profile(geo_code, geo_level):
    session = get_session()

    try:
        geo_summary_levels = get_summary_geo_info(geo_code, geo_level, session)
        data = {}

        sections = list(PROFILE_SECTIONS)
        if geo_level in ['country', 'province']:
            sections.append('crime')

        for section in sections:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo_code, geo_level, session)

                # get profiles for province and/or country
                for level, code in geo_summary_levels:
                    # merge summary profile into current geo profile
                    merge_dicts(data[section], func(code, level, session), level)

        # tweaks to make the data nicer
        # show 3 largest groups on their own and group the rest as 'Other'
        group_remainder(data['service_delivery']['water_source_distribution'], 5)
        group_remainder(data['service_delivery']['refuse_disposal_distribution'], 5)
        group_remainder(data['service_delivery']['toilet_facilities_distribution'], 5)
        group_remainder(data['demographics']['language_distribution'], 7)
        group_remainder(data['demographics']['province_of_birth_distribution'], 7)
        group_remainder(data['demographics']['region_of_birth_distribution'], 5)
        group_remainder(data['households']['type_of_dwelling_distribution'], 5)
        group_remainder(data['child_households']['type_of_dwelling_distribution'], 5)
        
        return data

    finally:
        session.close()


def get_demographics_profile(geo_code, geo_level, session):
    # population group
    pop_dist_data, total_pop = get_stat_data(
            ['population group'], geo_level, geo_code, session)

    # language
    language_data, _ = get_stat_data(
            ['language'], geo_level, geo_code, session, order_by='-total')
    language_most_spoken = language_data[language_data.keys()[0]]

    # age groups
    age_dist_data, total_age = get_stat_data(
            ['age groups in 5 years'], geo_level, geo_code, session,
            recode=COLLAPSED_AGE_CATEGORIES,
            key_order=('0-9', '10-19',
                       '20-29', '30-39',
                       '40-49', '50-59',
                       '60-69', '70-79',
                       '80+'))

    # sex
    db_model_sex = get_model_from_fields(['gender'], geo_level, table_name='gender_%s' % geo_level)
    query = session.query(func.sum(db_model_sex.total)) \
                   .filter(db_model_sex.gender == 'Male')
    geo_attr = '%s_code' % geo_level
    query = query.filter(getattr(db_model_sex, geo_attr) == geo_code)
    total_male = query.one()[0]

    sex_data = OrderedDict((  # census data refers to sex as gender
            ('Female', {
                "name": "Female",
                "values": {"this": round((total_pop - total_male) / total_pop * 100, 2)},
                "numerators": {"this": total_pop - total_male},
            }),
            ('Male', {
                "name": "Male",
                "values": {"this": round(total_male / total_pop * 100, 2)},
                "numerators": {"this": total_male},
            }),
        ))

    add_metadata(sex_data, db_model_sex)

    final_data = {
        'language_distribution': language_data,
        'language_most_spoken': language_most_spoken,
        'population_group_distribution': pop_dist_data,
        'age_group_distribution': age_dist_data,
        'sex_ratio': sex_data,
        'total_population': {
            "name": "People",
            "values": {"this": total_pop},
        }
    }

    geo = get_geography(geo_code, geo_level)
    if geo.square_kms:
        final_data['population_density'] = {
            'name': "people per square kilometre",
            'values': {"this": total_pop / geo.square_kms},
        }

    # median age/age category
    db_model_age = get_model_from_fields(
        ['age in completed years'], geo_level,
        table_name='ageincompletedyears_%s' % geo_level
    )
    objects = sorted(
        get_objects_by_geo(db_model_age, geo_code, geo_level, session),
        key=lambda x: int(getattr(x, 'age in completed years'))
    )
    # median age
    median = calculate_median(objects, 'age in completed years')
    final_data['median_age'] = {
        "name": "Median age",
        "values": {"this": median},
    }

    # age category
    age_dist, _ = get_stat_data(
        ['age in completed years'], geo_level, geo_code, session,
        table_name='ageincompletedyearssimplified_%s' % geo_level,
        key_order=['Under 18', '18 to 64', '65 and over'],
        recode={'< 18': 'Under 18',
                '>= 65': '65 and over'})
    final_data['age_category_distribution'] = age_dist

    # citizenship
    citizenship_dist, _ = get_stat_data(
            ['citizenship'], geo_level, geo_code, session,
            order_by='-total')

    sa_citizen = citizenship_dist['Yes']['numerators']['this']

    final_data['citizenship_distribution'] = citizenship_dist
    final_data['citizenship_south_african'] = {
            'name': 'South African citizens',
            'values': {'this': percent(sa_citizen, total_pop)},
            'numerators': {'this': sa_citizen},
            }

    # migration
    province_of_birth_dist, _ = get_stat_data(
            ['province of birth'], geo_level, geo_code, session,
            exclude_zero=True, order_by='-total')

    final_data['province_of_birth_distribution'] = province_of_birth_dist

    def region_recode(field, key):
        if key == 'Born in South Africa':
            return 'South Africa'
        else:
            return key

    region_of_birth_dist, _ = get_stat_data(
            ['region of birth'], geo_level, geo_code, session,
            exclude_zero=True, order_by='-total',
            recode=region_recode)

    if 'South Africa' in region_of_birth_dist:
        born_in_sa = region_of_birth_dist['South Africa']['numerators']['this']
    else:
        born_in_sa = 0

    final_data['region_of_birth_distribution'] = region_of_birth_dist
    final_data['born_in_south_africa'] = {
            'name': 'Born in South Africa',
            'values': {'this': percent(born_in_sa, total_pop)},
            'numerators': {'this': born_in_sa},
            }

    return final_data


def get_households_profile(geo_code, geo_level, session):
    # head of household
    # gender
    head_gender_dist, total_households = get_stat_data(
            ['gender of household head'], geo_level, geo_code, session,
            order_by='gender of household head')
    female_heads = head_gender_dist['Female']['numerators']['this']

    # age
    db_model_u18 = get_model_from_fields(
        ['gender of head of household'], geo_level,
        table_name='genderofheadofhouseholdunder18_%s' % geo_level
    )
    objects = get_objects_by_geo(db_model_u18, geo_code, geo_level, session)
    total_under_18 = float(sum(o[0] for o in objects))

    # tenure
    tenure_data, _ = get_stat_data(
            ['tenure status'], geo_level, geo_code, session,
            order_by='tenure status')
    owned = 0
    for key, data in tenure_data.iteritems():
        if key.startswith('Owned'):
            owned += data['numerators']['this']

    # annual household income
    income_dist_data, _ = get_stat_data(
            ['annual household income'], geo_level, geo_code, session,
            exclude=['Unspecified'],
            recode=HOUSEHOLD_INCOME_RECODE,
            key_order=HOUSEHOLD_INCOME_RECODE.values(),
            table_name='annualhouseholdincome_genderofhouseholdhead_%s' % geo_level)

    # median income
    median = calculate_median_stat(income_dist_data)
    median_income = HOUSEHOLD_INCOME_ESTIMATE[median]

    # type of dwelling
    type_of_dwelling_dist, _ = get_stat_data(
            ['type of dwelling'], geo_level, geo_code, session,
            recode=TYPE_OF_DWELLING_RECODE,
            order_by='-total')
    informal = type_of_dwelling_dist['Shack']['numerators']['this']

    # household goods
    household_goods, _ = get_stat_data(
            ['household goods'], geo_level, geo_code, session,
            total=total_households,
            recode=HOUSEHOLD_GOODS_RECODE,
            exclude=['total households'],
            key_order=sorted(HOUSEHOLD_GOODS_RECODE.values()))

    return {'total_households': {
                'name': 'Households',
                'values': {'this': total_households},
                },
            'owned': {
                'name': 'Households fully owned or being paid off',
                'values': {'this': percent(owned, total_households)},
                'numerators': {'this': owned},
                },
            'type_of_dwelling_distribution': type_of_dwelling_dist,
            'informal': {
                'name': 'Households that are informal dwellings (shacks)',
                'values': {'this': percent(informal, total_households)},
                'numerators': {'this': informal},
                },
            'tenure_distribution': tenure_data,
            'household_goods': household_goods,
            'annual_income_distribution': income_dist_data,
            'median_annual_income': {
                'name': 'Average annual household income',
                'values': {'this': median_income},
                },
            'head_of_household': {
                'gender_distribution': head_gender_dist,
                'female': {
                    'name': 'Households with women as their head',
                    'values': {'this': percent(female_heads, total_households)},
                    'numerators': {'this': female_heads},
                    },
                'under_18': {
                    'name': 'Households with heads under 18 years old',
                    'values': {'this': total_under_18},
                    }
                },
           }


def get_economics_profile(geo_code, geo_level, session):
    # income
    income_dist_data, total_workers = get_stat_data(
            ['employed individual monthly income'], geo_level, geo_code, session,
            exclude=['Not applicable'],
            recode=COLLAPSED_INCOME_CATEGORIES,
            key_order=COLLAPSED_INCOME_CATEGORIES.values())

    # median income
    median = calculate_median_stat(income_dist_data)
    median_income = ESTIMATED_INCOME_CATEGORIES[median]

    # employment status
    employ_status, total_workers = get_stat_data(
            ['official employment status'], geo_level, geo_code, session,
            exclude=['Age less than 15 years', 'Not applicable'],
            order_by='official employment status',
            table_name='officialemploymentstatus_%s' % geo_level)

    # sector
    sector_dist_data, _ = get_stat_data(
            ['type of sector'], geo_level, geo_code, session,
            exclude=['Not applicable'],
            order_by='type of sector')

    # access to internet
    internet_access_dist, total_with_access = get_stat_data(
            ['access to internet'], geo_level, geo_code, session, exclude=['No access to internet'],
            order_by='access to internet')
    _, total_without_access = get_stat_data(
            ['access to internet'], geo_level, geo_code, session, only=['No access to internet'])
    total_households = total_with_access + total_without_access

    return {'individual_income_distribution': income_dist_data,
            'median_individual_income': {
                'name': 'Average monthly income',
                'values': {'this': median_income},
                },
            'employment_status': employ_status,
            'sector_type_distribution': sector_dist_data,
            'internet_access_distribution': internet_access_dist,
            'internet_access': {
                'name': 'Households with internet access',
                'values': {'this': percent(total_with_access, total_households)},
                'numerators': {'this': total_with_access},
                }
            }


def get_service_delivery_profile(geo_code, geo_level, session):
    # water source
    water_src_data, total_wsrc = get_stat_data(
            ['source of water'], geo_level, geo_code, session,
            recode=SHORT_WATER_SOURCE_CATEGORIES,
            order_by='-total')
    if 'Service provider' in water_src_data:
        total_water_sp = water_src_data['Service provider']['numerators']['this']
    else:
        total_water_sp = 0.0

    # refuse disposal
    db_model_ref = get_model_from_fields(['refuse disposal'], geo_level)
    objects = get_objects_by_geo(db_model_ref, geo_code, geo_level, session,
                                 order_by='-total')
    refuse_disp_data = OrderedDict()
    total_ref = 0.0
    total_ref_sp = 0.0
    for obj in objects:
        attr = getattr(obj, 'refuse disposal')
        disp = SHORT_REFUSE_DISPOSAL_CATEGORIES[attr]
        refuse_disp_data[disp] = {
            "name": disp,
            "numerators": {"this": obj.total},
        }
        total_ref += obj.total
        if attr.startswith('Removed by local authority'):
            total_ref_sp += obj.total

    # electricity
    elec_attrs = ['electricity for cooking',
                  'electricity for heating',
                  'electricity for lighting']
    db_model_elec = get_model_from_fields(elec_attrs, geo_level)
    objects = get_objects_by_geo(db_model_elec, geo_code, geo_level, session)
    total_elec = 0.0
    total_some_elec = 0.0
    elec_access_data = {
        'total_all_elec': {
            "name": "Have electricity for everything",
            "numerators": {"this": 0.0},
        },
        'total_some_not_all_elec': {
            "name": "Have electricity for some things",
            "numerators": {"this": 0.0},
        },
        'total_no_elec': {
            "name": "No electricity",
            "numerators": {"this": 0.0},
        }
    }
    for obj in objects:
        total_elec += obj.total
        has_some = False
        has_all = True
        for attr in elec_attrs:
            val = not getattr(obj, attr).startswith('no ')
            has_all = has_all and val
            has_some = has_some or val
        if has_some:
            total_some_elec += obj.total
        if has_all:
            elec_access_data['total_all_elec']['numerators']['this'] += obj.total
        elif has_some:
            elec_access_data['total_some_not_all_elec']['numerators']['this'] += obj.total
        else:
            elec_access_data['total_no_elec']['numerators']['this'] += obj.total

    for data, total in zip((refuse_disp_data, elec_access_data),
                           (total_ref, total_elec)):
        for fields in data.values():
            fields["values"] = {"this": percent(fields["numerators"]["this"], total)}

    add_metadata(refuse_disp_data, db_model_ref)
    add_metadata(elec_access_data, db_model_elec)

    # toilets
    toilet_data, total_toilet = get_stat_data(
            ['toilet facilities'], geo_level, geo_code, session,
            exclude_zero=True,
            recode=COLLAPSED_TOILET_CATEGORIES,
            order_by='-total')

    total_flush_toilet = 0.0
    total_no_toilet = 0.0
    for key, data in toilet_data.iteritems():
        if key.startswith('Flush') or key.startswith('Chemical'):
            total_flush_toilet += data['numerators']['this']
        if key == 'None':
            total_no_toilet += data['numerators']['this']

    return {'water_source_distribution': water_src_data,
            'percentage_water_from_service_provider': {
                "name": "Are getting water from a regional or local service provider",
                "numerators": {"this": total_water_sp},
                "values": {"this": percent(total_water_sp, total_wsrc)},
            },
            'refuse_disposal_distribution': refuse_disp_data,
            'percentage_ref_disp_from_service_provider': {
                "name": "Are getting refuse disposal from a local authority or private company",
                "numerators": {"this": total_ref_sp},
                "values": {"this": percent(total_ref_sp, total_ref)},
            },
            'percentage_electricity_access': {
                "name": "Have electricity for at least one of cooking, heating or lighting",
                "numerators": {"this": total_some_elec},
                "values": {"this": percent(total_some_elec, total_elec)},
            },
            'electricity_access_distribution': elec_access_data,
            'percentage_flush_toilet_access': {
                "name": "Have access to flush or chemical toilets",
                "numerators": {"this": total_flush_toilet},
                "values": {"this": percent(total_flush_toilet, total_toilet)},
            },
            'percentage_no_toilet_access': {
                "name": "Have no access to any toilets",
                "numerators": {"this": total_no_toilet},
                "values": {"this": percent(total_no_toilet, total_toilet)},
            },
            'toilet_facilities_distribution': toilet_data,
    }


def get_education_profile(geo_code, geo_level, session):
    db_model = get_model_from_fields(['highest educational level 20 and older'], geo_level)
    objects = get_objects_by_geo(db_model, geo_code, geo_level, session)

    edu_dist_data = {}
    get_or_higher = 0.0
    fet_or_higher = 0.0
    total = 0.0
    for i, obj in enumerate(objects):
        category_val = getattr(obj, 'highest educational level 20 and older')
        # increment counters
        total += obj.total
        if category_val in EDUCATION_GET_OR_HIGHER:
            get_or_higher += obj.total
            if category_val in EDUCATION_FET_OR_HIGHER:
                fet_or_higher += obj.total
        # add data points for category
        edu_dist_data[str(i)] = {
            "name": category_val,
            "numerators": {"this": obj.total},
        }
    edu_dist_data = collapse_categories(edu_dist_data,
                                        COLLAPSED_EDUCATION_CATEGORIES,
                                        key_order=EDUCATION_KEY_ORDER)
    edu_split_data = {
        'percent_get_or_higher': {
            "name": "Completed Grade 9 or higher",
            "numerators": {"this": get_or_higher},
        },
        'percent_fet_or_higher': {
            "name": "Completed Matric or higher",
            "numerators": {"this": fet_or_higher},
        }
    }
    # calculate percentages
    for data in (edu_dist_data, edu_split_data):
        for fields in data.values():
            fields["values"] = {"this": round(fields["numerators"]["this"]
                                              / total * 100, 2)}

    edu_dist_data['metadata'] = {'universe': 'Invididuals aged 20 and older'}
    edu_split_data['metadata'] = {'universe': 'Invididuals aged 20 and older'}

    add_metadata(edu_dist_data, db_model)

    return {'educational_attainment_distribution': edu_dist_data,
            'educational_attainment': edu_split_data}


def get_children_profile(geo_code, geo_level, session):
    # age
    child_adult_dist, _ = get_stat_data(
            ['age in completed years'], geo_level, geo_code, session,
            table_name='ageincompletedyearssimplified_%s' % geo_level,
            recode={'< 18': 'Children (< 18)',
                    '18 to 64': 'Adults (>= 18)',
                    '>= 65': 'Adults (>= 18)'})

    # parental survival
    parental_survival_dist, _ = get_stat_data(['parents alive'],
                                              geo_level, geo_code, session)

    # gender
    gender_dist, _ = get_stat_data(
            ['gender'], geo_level, geo_code, session,
            table_name='genderunder18_%s' % geo_level)

    # school

    # NOTE: this data is incompatible with some views (check out
    # https://github.com/censusreporter/censusreporter/issues/78)
    #
    # school_attendance_dist, total_school_aged = get_stat_data(
    #     ['present school attendance', 'age in completed years'],
    #     geo_level, geo_code, session,
    # )
    # school_attendance_dist['Yes']['metadata'] = \
    #         school_attendance_dist['metadata']
    # school_attendance_dist = school_attendance_dist['Yes']
    # total_attendance = sum(d['numerators']['this'] for d in
    #                        school_attendance_dist.values()
    #                        if 'numerators' in d)

    # school attendance
    school_attendance_dist, total_school_aged = get_stat_data(
        ['present school attendance'],
        geo_level, geo_code, session,
    )
    total_attendance = school_attendance_dist['Yes']['numerators']['this']

    # education level
    education17_dist, _ = get_stat_data(
        ['highest educational level'],
        geo_level, geo_code, session,
        recode=COLLAPSED_EDUCATION_CATEGORIES,
        table_name='highesteducationallevel17_%s' % geo_level,
        key_order=EDUCATION_KEY_ORDER,
    )

    # employment
    employment_dist, total_15to17 = get_stat_data(
        ['official employment status'],
        geo_level, geo_code, session,
        table_name='officialemploymentstatus15to17_%s' % geo_level,
        exclude=['Not applicable']
    )
    total_in_labour_force = float(sum(v["numerators"]["this"] for k, v
                                      in employment_dist.iteritems()
                                      if COLLAPSED_EMPLOYMENT_CATEGORIES.get(k, None)
                                      == 'In labour force'))

    # median income
    income_dist_data, total_workers = get_stat_data(
        ['individual monthly income'], geo_level, geo_code, session,
        exclude=['Not applicable'],
        recode=COLLAPSED_INCOME_CATEGORIES,
        key_order=COLLAPSED_INCOME_CATEGORIES.values(),
        table_name='individualmonthlyincome15to17_%s' % geo_level
    )
    median = calculate_median_stat(income_dist_data)
    median_income = ESTIMATED_INCOME_CATEGORIES[median]

    return {
        'demographics': {
            'child_adult_distribution': child_adult_dist,
            'total_children': {
                "name": "Children",
                "values": {"this": child_adult_dist['Children (< 18)']['numerators']['this']}
            },
            'gender_distribution': gender_dist,
            'parental_survival_distribution': parental_survival_dist,
            'percent_no_parent': {
                "name": "Of children 14 and under have no living biological parents",
                "values": parental_survival_dist["Neither parent (or uncertain)"]['values'],
                "numerators": parental_survival_dist["Neither parent (or uncertain)"]['numerators'],
            },
        },
        'school': {
            'school_attendance_distribution': school_attendance_dist,
            'percent_school_attendance': {
                "name": "School-aged children (5 to 17 years old) are in school",
                "numerators": {"this": total_school_aged},
                "values": {"this": percent(float(total_attendance),
                                           float(total_school_aged))}
            },
            'education17_distribution': education17_dist,
        },
        'employment': {
            'percent_in_labour_force': {
                "name": "Of children between 15 and 17 are in the labour force",
                "numerators": {"this": total_in_labour_force},
                "values": {"this": percent(total_in_labour_force, total_15to17)}
            },
            'employment_distribution': employment_dist,
            'median_income': {
                'name': 'Average monthly income of employed children between 15 and 17',
                'values': {'this': median_income},
            },
        }
    }


def get_child_households_profile(geo_code, geo_level, session):
    # head of household
    # gender
    head_gender_dist, total_households = get_stat_data(
            ['gender of head of household'], geo_level, geo_code, session,
            order_by='gender of head of household',
            table_name='genderofheadofhouseholdunder18_%s' % geo_level)
    female_heads = head_gender_dist['Female']['numerators']['this']

    # annual household income
    income_dist_data, _ = get_stat_data(
            ['annual household income'], geo_level, geo_code, session,
            exclude=['Unspecified'],
            recode=HOUSEHOLD_INCOME_RECODE,
            key_order=HOUSEHOLD_INCOME_RECODE.values(),
            table_name='annualhouseholdincomeunder18_%s' % geo_level)

    # median income
    median = calculate_median_stat(income_dist_data)
    median_income = HOUSEHOLD_INCOME_ESTIMATE[median]

    # type of dwelling
    type_of_dwelling_dist, _ = get_stat_data(
            ['type of main dwelling'], geo_level, geo_code, session,
            recode=TYPE_OF_DWELLING_RECODE,
            order_by='-total')
    informal = type_of_dwelling_dist['Shack']['numerators']['this']

    # size of household
    household_size_dist, _ = get_stat_data(
        ['household size', 'age of household head'],
        geo_level, geo_code, session
    )

    return {
        'total_households': {
            'name': 'Households with heads under 18 years old',
            'values': {'this': total_households},
        },
        'type_of_dwelling_distribution': type_of_dwelling_dist,
        'informal': {
            'name': 'Child-headed households that are informal dwellings (shacks)',
            'values': {'this': percent(informal, total_households)},
            'numerators': {'this': informal},
        },
        'annual_income_distribution': income_dist_data,
        'median_annual_income': {
            'name': 'Average annual child-headed household income',
            'values': {'this': median_income},
        },
        'household_size_distribution': household_size_dist,
        'head_of_household': {
            'gender_distribution': head_gender_dist,
            'female': {
                'name': 'Child-headed households with women as their head',
                'values': {'this': percent(female_heads, total_households)},
                'numerators': {'this': female_heads},
                },
        },
    }


def get_crime_profile(geo_code, geo_level, session):
    child_crime, total = get_stat_data(
        ['crime'], geo_level, geo_code, session,
        only=['Neglect and ill-treatment of children'],
        percent=False)

    table = get_datatable(get_table_id(['crime']))

    return {
        'dataset': table.dataset_name,
        'crime_against_children': {
            'name': 'Crimes of neglect and ill-treatment of children in 2014',
            'values': {'this': total},
            'metadata': {'universe': 'Crimes in 2014'},
        },
    }
