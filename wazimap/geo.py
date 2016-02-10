from django.conf import settings
from django.utils.module_loading import import_string
from django.db.models import Q

from wazimap.data.utils import LocationNotFound
from wazimap.models import Geography


class GeoData(object):
    """ General Wazimap geography helper object.
    """
    def __init__(self):
        self.geo_model = Geography

    def get_geography(self, geo_code, geo_level):
        """
        Get a geography object for this geography, or
        raise LocationNotFound if it doesn't exist.
        """
        geo = self.geo_model.objects.filter(geo_level=geo_level, geo_code=geo_code).first()
        if not geo:
            raise LocationNotFound('Invalid level and code: %s-%s' % (geo_level, geo_code))
        return geo

    def get_locations(self, search_term, levels=None, year=None):
        """
        Try to find locations based on a search term, possibly limited
        to +levels+.

        Returns an ordered list of geo models.
        """
        if levels:
            levels = [lev.strip() for lev in levels.split(',')]
            levels = [lev for lev in levels if lev]

        search_term = search_term.strip()

        query = self.geo_model.objects\
            .filter(Q(name__istartswith=search_term) |
                    Q(geo_code=search_term.upper()))\

        if levels:
            query = query.filter(geo_level__in=levels)

        if year is not None:
            query = query.filter(year=year)

        objects = query.limit(10).all()
        # TODO: order by level?
        objects = sorted(objects, key=lambda o: [o.geo_level, o.name, o.geo_code])

        return [o.as_dict() for o in objects]

    def get_locations_from_coords(self, longitude, latitude):
        '''
        Finds the place containing this point. Returns
        County and Country model instances.
        '''
        # TODO: XXX
        return []

    def get_summary_geo_info(self, geo_code=None, geo_level=None, session=None,
                             geo_object=None):
        if geo_object is not None:
            geo_level = geo_object.level

        if geo_level in set(['ward', 'municipality', 'district']):
            if geo_object is None:
                geo_object = self.get_geography(geo_code, geo_level)
            return zip(('country', 'province'), ('ZA', geo_object.province_code))
        elif geo_level == 'province':
            return zip(('country', ), ('ZA', ))
        else:
            return tuple()


geo_data = import_string(settings.WAZIMAP.get('geodata', 'wazimap.geo.GeoData'))
