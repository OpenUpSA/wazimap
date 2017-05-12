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
    _versions = None

    def __init__(self):
        self.geo_model = Geography
        self.setup_levels()
        self.setup_geometry()
        self._default_version = None
        self._versions = None
        self._global_latest_version = None

    def _setup_versions(self):
        """ Find all the geography versions.
        """
        self._versions = [x['version'] for x in self.geo_model.objects.values('version').distinct().all()]
        self._global_latest_version = sorted(self.versions)[-1]
        # _default_version = None means fall back to whatever is latest for geography
        self._default_version = settings.WAZIMAP['default_geo_version']

    @property
    def versions(self):
        if self._versions is None:
            self._setup_versions()

        return self._versions

    @property
    def global_latest_version(self):
        if self._global_latest_version is None:
            self._setup_versions()

        return self._global_latest_version

    @property
    def default_version(self):
        if self._default_version is None:
            self._setup_versions()
        return self._default_version

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
            # sanity check for geo version
            if level in self.geometry_files or self.geometry_files.keys() == [''] and isinstance(self.geometry_files[''], basestring):
                # The geometry_data must include a version key. For example:
                #
                # geometry_data = {
                #   '2011': {
                #     'province': 'geo/2011/country.geojson',
                #     'country': 'geo/2011/country.geojson',
                #   }, {
                #   '2016': {
                #     'province': 'geo/2016/country.geojson',
                #     'country': 'geo/2016/country.geojson',
                #   }
                # }
                #
                # If you aren't using geo versioning, then use the default geo
                # version '' as the first key:
                #
                # geometry_data = {
                #   '': {
                #     'province': 'geo/2011/country.geojson',
                #     'country': 'geo/2011/country.geojson',
                #   }
                # }
                suggestion = {'': self.geometry_files}
                raise ValueError("The geometry_data setting is missing a geometry version key. You probably aren't using geometry versions just need to " +
                                 "change WAZIMAP['geometry_data'] to be: %s" % suggestion)

            for version in self.geometry_files.iterkeys():
                fname, js = self.load_geojson_for_level(level, version)
                if not js:
                    continue

                if js['type'] != 'FeatureCollection':
                    raise ValueError("GeoJSON files must contain a FeatureCollection. The file %s has type %s" % (fname, js['type']))

                level_detail = self.geometry.setdefault(version, {}).setdefault(level, {})

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

    def load_geojson_for_level(self, level, version):
        files = self.geometry_files[version]
        fname = files.get(level, files.get(''))
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
                log.warn("Couldn't open geometry file %s -- no geometry will be available for level %s and version '%s'" % (fname, level, version))
            else:
                raise e

        return None, None

    def root_geography(self, version=None):
        """ First geography with no parents. """
        query = self.geo_model.objects.filter(parent_level=None, parent_code=None, geo_level=self.root_level)
        if version is None:
            version = self.default_version
        if version is None:
            query = query.order_by("-version")
        else:
            query = query.filter(version=version)
        return query.first()

    def get_geography(self, geo_code, geo_level, version=None):
        """ Get a geography object for this geography, or raise LocationNotFound if it doesn't exist.
        If a version is given, find a geography with that version. Otherwise find the most recent version.
        """
        query = self.geo_model.objects.filter(geo_level=geo_level, geo_code=geo_code)
        if version is None:
            version = self.default_version
        if version is None:
            query = query.order_by("-version")
        else:
            query = query.filter(version=version)
        geo = query.first()
        if not geo:
            raise LocationNotFound("Invalid level, code and version: %s-%s '%s'" % (geo_level, geo_code, version))
        return geo

    def get_geometry(self, geo):
        """ Get the geometry description for a geography. This is a dict
        with two keys, 'properties' which is a dict of properties,
        and 'shape' which is a shapely shape (may be None).
        """
        return self.geometry.get(geo.version, {}).get(geo.geo_level, {}).get(geo.geo_code)

    def get_locations(self, search_term, levels=None, version=None):
        """
        Try to find locations based on a search term, possibly limited
        to +levels+.

        Returns an ordered list of geo models.
        """
        search_term = search_term.strip()

        query = self.geo_model.objects\
            .filter(Q(name__icontains=search_term) |
                    Q(geo_code=search_term.upper()))

        if version is None:
            version = self.default_version
        if version is None:
            version = self.global_latest_version

        if levels:
            query = query.filter(geo_level__in=levels)

        # TODO: order by level?
        objects = sorted(query[:10], key=lambda o: [o.geo_level, o.name, o.geo_code])
        return objects

    def get_locations_from_coords(self, longitude, latitude, levels=None, version=None):
        """
        Returns a list of geographies containing this point.
        """
        if not HAS_GDAL:
            gdal_missing(critical=True)

        from shapely.geometry import Point
        p = Point(float(longitude), float(latitude))
        geos = []

        if version is None:
            version = self.default_version
        if version is None:
            version = self.global_latest_version

        for features in self.geometry.itervalues():
            for feature in features.itervalues():
                if feature['shape'] and feature['shape'].contains(p):
                    geo = self.get_geography(feature['properties']['code'],
                                             feature['properties']['level'],
                                             version)
                    if not levels or geo.geo_level in levels:
                        geos.append(geo)
        return geos

    def get_summary_geo_info(self, geo):
        """ Get a list of (level, code) tuples of geographies that
        this geography should be compared against.

        This is the intersection of +comparative_levels+ and the
        ancestors of the geography.
        """
        ancestors = {g.geo_level: g for g in geo.ancestors()}

        return [(lev, ancestors[lev].geo_code) for lev in self.comparative_levels if lev in ancestors]

    def get_comparative_geos(self, geo):
        """ Get a list of geographies to be used as comparisons for +geo+.
        """
        return [self.get_geography(code, level, geo.version) for level, code in self.get_summary_geo_info(geo)]

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
