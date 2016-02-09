from data.models import Ward, Municipality, District, Province


def get_summary_geo_info(geo_code=None, geo_level=None, session=None,
                         geo_object=None):
    if geo_object is not None:
        geo_level = geo_object.level

    if geo_level in set(['ward', 'municipality', 'district']):
        if geo_object is None:
            geo_object = get_geo_object(geo_code, geo_level, session)
        return zip(('country', 'province'), ('ZA', geo_object.province_code))
    elif geo_level == 'province':
        return zip(('country', ), ('ZA', ))
    else:
        return tuple()


def get_geo_object(geo_code, geo_level, session):
    model = {
        'ward': Ward,
        'district': District,
        'municipality': Municipality,
        'province': Province,
        'country': None,
    }[geo_level]

    if model is None:
        return None
    return session.query(model).get(geo_code)
