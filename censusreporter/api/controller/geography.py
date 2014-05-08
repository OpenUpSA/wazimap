from sqlalchemy.orm import joinedload
from sqlalchemy.sql.expression import or_
from sqlalchemy import func

from api.models import Ward, District, Municipality, Province, Subplace, Country
from api.utils import (get_session, ward_search_api, geo_levels,
                       LocationNotFound)


def get_geography(geo_code, geo_level):
    """
    Get a geography model (Ward, Province, etc.) for this geography, or
    raise LocationNotFound if it doesn't exist.
    """
    session = get_session()

    try:
        try:
            model = {
                'ward': Ward,
                'district': District,
                'municipality': Municipality,
                'province': Province,
                'country': Country,
            }[geo_level]
        except KeyError:
            raise LocationNotFound(geo_code)

        geo = session.query(model).get(geo_code)
        if not geo:
            raise LocationNotFound(geo_code)

        return geo
    finally:
        session.close()


def get_locations(search_term, geo_level=None, year='2011'):
    if geo_level is not None and geo_level not in geo_levels:
        raise ValueError('Invalid geo_level: %s' % geo_level)

    session = get_session()
    try:
        if geo_level:
            levels = [geo_level]
        else:
            levels = ['province', 'municipality', 'subplace']

        objects = set()

        # search at each level
        for level in levels:
            # already checked that geo_level is valid
            model = {
                'municipality': Municipality,
                'province': Province,
                'subplace': Subplace,
            }[level]

            if level == 'subplace':
                # check mainplace and subplace names
                objects.update(session
                    .query(Ward)
                    .join(model)
                    .filter(model.year == year)
                    .filter(or_(model.subplace_name.ilike(search_term + '%'),
                                model.subplace_name.ilike('City of %s' % search_term + '%'),
                                model.mainplace_name.ilike(search_term + '%'),
                                model.code == search_term))
                    .limit(10)
                )

            else:
                objects.update(session
                    .query(model)
                    .filter(model.year == year)
                    .filter(or_(model.name.ilike(search_term + '%'),
                                model.name.ilike('City of %s' % search_term + '%'),
                                model.code == search_term.upper()))
                    .limit(10)
                )


        order_map = {Ward: 3, Municipality: 2, Province: 1}
        objects = sorted(objects, key=lambda o: [order_map[o.__class__], getattr(o, 'name', getattr(o, 'code'))])

        return serialize_demarcations(objects[0:10])
    finally:
        session.close()


def get_locations_from_coords(longitude, latitude):
    '''
    Calls the Wards API to get a single ward containing the coordinates.
    Returns the serialized ward, municipality and province.
    '''
    location = ward_search_api.search("%s,%s" % (latitude, longitude))
    if len(location) == 0:
        return []
    # there should only be 1 ward since wards don't overlap
    location = location[0]

    session = get_session()
    try:
        ward = session.query(Ward).get(location.ward_code)
        if ward is None:
            return []

        # this is the reverse order of a normal search - the
        # narrowest location match comes first.
        objects = [ward, ward.municipality, ward.province]
        objects = filter(lambda o: bool(o), objects)  # remove None

        return serialize_demarcations(objects)

    finally:
        session.close()


def serialize_demarcations(objects):
    return [{
            'full_name': obj.long_name,
            'full_geoid': '%s-%s' % (obj.level, obj.code),
            'geo_level': obj.level,
            'geo_code': obj.code,
            } for obj in objects]