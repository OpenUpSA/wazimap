import os.path
import json
import logging
from itertools import chain

from django.conf import settings
from django.utils.module_loading import import_string
from django.db.models import Q
from django.contrib.staticfiles.storage import staticfiles_storage

from wazimap.data.utils import LocationNotFound
from wazimap.models import Geography

log = logging.getLogger(__name__)


# GDAL is difficult to install, so we make it an optional dependency.
# Here, we check if it's installed and warn if it isn't.
try:
    import osgeo.gdal  # noqa
    HAS_GDAL = True
except ImportError:
    HAS_GDAL = False


class GeoData(object):
    """ General Wazimap geography helper object.

    This object helps Wazimap load geographies, navigate geo level hierarchies,
    find locations, etc. It's a good place to override this functionality
    if you want to use a different geometry setup.

    To override behaviour, implement your own GeoData object (probably inheriting
    from this one), then set the `WAZIMAP['geodata']` to the dotted path of your
    new class in your `settings.py`. Wazimap will then load that class and make
    it available as `wazimap.geo.geo_data`.
    """
    def __init__(self):
        self.geo_model = Geography
        self.setup_levels()
        self.setup_geometry()

    def setup_levels(self):
        """ Setup the summary level hierarchy from the `WAZIMAP['levels']` and
        `WAZIMAP['comparative_levels']` settings.
        """
        self.comparative_levels = ['this'] + settings.WAZIMAP['comparative_levels']
        self.geo_levels = settings.WAZIMAP['levels']

        parents = {}
        for code, level in self.geo_levels.iteritems():
            level.setdefault('name', code)
            level.setdefault('plural', code + 's')
            level.setdefault('children', [])
            level['sumlev'] = code

            for kid in level['children']:
                parents.setdefault(kid, []).append(code)

        # fold in the ancestors
        def climb(code):
            return chain(parents.get(code, []), *[climb(p) for p in parents.get(code, [])])

        for code, items in parents.iteritems():
            self.geo_levels[code]['ancestors'] = list(set(climb(code)))

        # root level
        roots = [key for key, lev in self.geo_levels.iteritems() if not lev.get('ancestors')]
        if not roots or len(roots) > 1:
            raise ValueError("geo_levels must have a single root item, but we found: %s" % roots)
        self.root_level = roots[0]

    def setup_geometry(self):
        """ Load boundaries from geojson shape files.
        """
        # map from levels to a dict of geoid-keyed feature
        # objects, including their geometry as shapely shapes
        #
        # eg.
        #
        # {
        #    'province': {
        #      'GT': {
        #        'properties': { ... },
        #        'shape': <shapely shape>
        #      }
        #    }
        # }
        #
        self.geometry = {}
        self.geometry_files = settings.WAZIMAP.get('geometry_data', {})

        for level in self.geo_levels.iterkeys():
            fname, js = self.load_geojson_for_level(level)
            if not js:
                continue

            if js['type'] != 'FeatureCollection':
                raise ValueError("GeoJSON files must contain a FeatureCollection. The file %s has type %s" % (fname, js['type']))

            level_detail = self.geometry.setdefault(level, {})

            for feature in js['features']:
                props = feature['properties']
                shape = None

                if HAS_GDAL and feature['geometry']:
                    from shapely.geometry import asShape
                    try:
                        shape = asShape(feature['geometry'])
                    except ValueError as e:
                        log.error("Error parsing geometry for %s-%s from %s: %s. Feature: %s"
                                  % (level, props['code'], fname, e.message, feature), exc_info=e)
                        raise e

                level_detail[props['code']] = {
                    'properties': props,
                    'shape': shape
                }

    def load_geojson_for_level(self, level):
        fname = self.geometry_files.get(level, self.geometry_files.get(''))
        if not fname:
            return None, None

        # we have to have geojson
        name, ext = os.path.splitext(fname)
        if ext != '.geojson':
            fname = name + '.geojson'

        fname = staticfiles_storage.path(fname)

        # try load it
        try:
            with open(fname, 'r') as f:
                return fname, json.load(f)
        except IOError as e:
            if e.errno == 2:
                log.warn("Couldn't open geometry file %s -- no geometry will be available for level %s" % (fname, level))
            else:
                raise e

        return None, None

    def root_geography(self):
        """ First geography with no parents. """
        return self.geo_model.objects.filter(parent_level=None, parent_code=None, geo_level=self.root_level).first()

    def get_geography(self, geo_code, geo_level):
        """
        Get a geography object for this geography, or
        raise LocationNotFound if it doesn't exist.
        """
        geo = self.geo_model.objects.filter(geo_level=geo_level, geo_code=geo_code).first()
        if not geo:
            raise LocationNotFound('Invalid level and code: %s-%s' % (geo_level, geo_code))
        return geo

    def get_geometry(self, geo_level, geo_code):
        """ Get the geometry description for a geography. This is a dict
        with two keys, 'properties' which is a dict of properties,
        and 'shape' which is a shapely shape (may be None).
        """
        return self.geometry.get(geo_level, {}).get(geo_code)

    def get_locations(self, search_term, levels=None, year=None):
        """
        Try to find locations based on a search term, possibly limited
        to +levels+.

        Returns an ordered list of geo models.
        """
        search_term = search_term.strip()

        query = self.geo_model.objects\
            .filter(Q(name__icontains=search_term) |
                    Q(geo_code=search_term.upper()))\

        if levels:
            query = query.filter(geo_level__in=levels)

        if year is not None:
            query = query.filter(year=year)

        # TODO: order by level?
        objects = sorted(query[:10], key=lambda o: [o.geo_level, o.name, o.geo_code])
        return objects

    def get_locations_from_coords(self, longitude, latitude, levels=None):
        """
        Returns a list of geographies containing this point.
        """
        if not HAS_GDAL:
            gdal_missing(critical=True)

        from shapely.geometry import Point
        p = Point(float(longitude), float(latitude))
        geos = []

        for features in self.geometry.itervalues():
            for feature in features.itervalues():
                if feature['shape'] and feature['shape'].contains(p):
                    geo = self.get_geography(feature['properties']['code'],
                                             feature['properties']['level'])
                    if not levels or geo.geo_level in levels:
                        geos.append(geo)
        return geos

    def get_summary_geo_info(self, geo_code=None, geo_level=None):
        """ Get a list of (level, code) tuples of geographies that
        this geography should be compared against.

        This is the intersection of +comparative_levels+ and the
        ancestors of the geography.
        """
        geo = self.get_geography(geo_code, geo_level)
        ancestors = {g.geo_level: g for g in geo.ancestors()}

        return [(lev, ancestors[lev].geo_code) for lev in self.comparative_levels if lev in ancestors]

    def first_child_level(self):
        # first child level in the hierarchy
        return self.geo_levels[self.root_level]['children'][0]


geo_data = import_string(settings.WAZIMAP['geodata'])()


def gdal_missing(critical=False):
    log.warn("NOTE: Wazimap is unable to load GDAL, it's probably not installed. "
             "Some functionality such as data downloads and geolocation won't work. This is ok in development, but "
             "is a problem in production. For more information on installing GDAL, see http://wazimap.readthedocs.io/en/latest/")

    if critical:
        raise StandardError("GDAL must be installed for this functionality to work.")
