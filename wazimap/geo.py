import json

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
        self.setup_levels()

    def setup_levels(self):
        self.comparative_levels = ['this'] + settings.WAZIMAP['comparative_levels']
        self.geo_levels = settings.WAZIMAP['levels']

        ancestors = {}
        for code, level in self.geo_levels.iteritems():
            level.setdefault('name', code)
            level.setdefault('plural', code + 's')
            level.setdefault('children', [])
            level['sumlev'] = code

            for kid in level['children']:
                ancestors.setdefault(kid, []).append(code)

        # fold in the ancestors
        for code, items in ancestors.iteritems():
            self.geo_levels[code]['ancestors'] = items

    def geo_levels_as_json(self):
        return json.dumps(self.geo_levels)

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

        # TODO: order by level?
        objects = sorted(query[:10], key=lambda o: [o.geo_level, o.name, o.geo_code])

        return [o.as_dict() for o in objects]

    def get_locations_from_coords(self, longitude, latitude):
        """
        Finds the place containing this point. Returns
        County and Country model instances.
        """
        # TODO: XXX
        return []

    def get_summary_geo_info(self, geo_code=None, geo_level=None):
        """ Get a list of (level, code) tuples of geographies that
        this geography should be compared against.

        This is the intersection of +comparative_levels+ and the
        ancestors of the geography.
        """
        geo = self.get_geography(geo_code, geo_level)
        ancestors = {g.geo_level: g for g in geo.ancestors()}

        return [(lev, ancestors[lev].geo_code) for lev in self.comparative_levels if lev in ancestors]


geo_data = import_string(settings.WAZIMAP['geodata'])()
