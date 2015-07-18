import shutil
import tempfile
import os
import logging
import zipfile
import re
import json

import requests
from osgeo import ogr, osr
from django.core.cache import cache

# Amount of time to cache geometry data
CACHE_SECS = 24*60*60

supported_formats = {
    'kml':      {"driver": "KML",     'geometry': True, 'mime': 'application/vnd.google-earth.kml+xml'},
    'geojson':  {"driver": "GeoJSON", 'geometry': True, 'mime': 'application/json'},
    'xlsx':     {"driver": "XLSX",    'geometry': False, 'mime': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'},
    'csv':      {"driver": "CSV",     'geometry': False, 'mime': 'text/csv'},
}

log = logging.getLogger('censusreporter')

bad_layer_chars = re.compile('[ #-]')

def generate_download_bundle(tables, geos, geo_ids, data, fmt):
    ogr.UseExceptions()

    format = supported_formats[fmt]
    if format['geometry']:
        geometries = load_geometries(geo_ids)
    else:
        geometries = {}

    # where we're going to put the data temporarily
    temp_path = tempfile.mkdtemp()
    try:
        file_ident = "%s_%s" % (
                tables[0].id.upper(),
                # The gdal KML driver doesn't like certain chars in its layer names.
                # It will replace them for you, but then subsequent calls hang.
                bad_layer_chars.sub('_', geos[0].short_name))

        # where the files go, what we'll eventually zip up
        inner_path = os.path.join(temp_path, file_ident)
        log.info("Generating download in %s" % inner_path)
        os.mkdir(inner_path)
        out_filepath = os.path.join(inner_path, '%s.%s' % (file_ident, fmt))

        out_driver = ogr.GetDriverByName(format['driver'])
        out_srs = osr.SpatialReference()
        out_srs.ImportFromEPSG(4326)
        out_data = out_driver.CreateDataSource(out_filepath)

        # See http://gis.stackexchange.com/questions/53920/ogr-createlayer-returns-typeerror
        # excel limits worksheet names to 31 chars
        out_layer = out_data.CreateLayer(file_ident.encode('utf-8')[0:31], srs=out_srs, geom_type=ogr.wkbMultiPolygon)
        out_layer.CreateField(ogr.FieldDefn('geo_level', ogr.OFTString))
        out_layer.CreateField(ogr.FieldDefn('geo_code', ogr.OFTString))
        out_layer.CreateField(ogr.FieldDefn('geoid', ogr.OFTString))
        out_layer.CreateField(ogr.FieldDefn('name', ogr.OFTString))

        for table in tables:
            for column_id, column_info in table.columns.iteritems():
                out_layer.CreateField(ogr.FieldDefn(str(column_id), ogr.OFTReal))

        for geo in geos:
            geoid = geo.full_geoid

            out_feat = ogr.Feature(out_layer.GetLayerDefn())

            if format['geometry']:
                geom = geometries[geoid]
                out_feat.SetGeometry(geom.GetGeometryRef())

            out_feat.SetField2('geo_level', geo.level)
            out_feat.SetField2('geo_code', geo.code)
            out_feat.SetField2('geoid', geoid)
            out_feat.SetField2('name', geo.short_name.encode('utf-8'))

            for table in tables:
                table_estimates = data[geoid][table.id.upper()]['estimate']

                for column_id, column_info in table.columns.iteritems():
                    if column_id in table_estimates:
                        # GDAL generates invalid excel spreadsheets for
                        # zero values in real columns
                        if fmt == 'xlsx' and table_estimates[column_id] == 0:
                            continue
                        out_feat.SetField(str(column_id), table_estimates[column_id])

            out_layer.CreateFeature(out_feat)

        # this closes the object and ensure
        # the data is flushed to the file
        out_data = None

        # zip it up, they can be huge
        zfile_filename = file_ident + '.zip'
        zfile_filepath = os.path.join(temp_path, zfile_filename)
        log.info("Zipping download into %s" % zfile_filepath)

        zfile = zipfile.ZipFile(zfile_filepath, 'w', zipfile.ZIP_DEFLATED)
        for root, dirs, files in os.walk(inner_path):
            for f in files:
                zfile.write(os.path.join(root, f), os.path.join(file_ident, f))
        zfile.close()

        log.info("Zipped. Reading and streaming.")

        with open(zfile_filepath) as f:
            content = f.read()
            return content, zfile_filename, 'application/zip'

    finally:
        shutil.rmtree(temp_path)

def load_geometries(geo_ids):
    """
    Load geometries for geo_ids, and return a map
    from a feature's geoid to the feature object.
    """
    geometries = {}

    for geoid in geo_ids:
        level = geoid.split('-')[0]
        if '|' in level:
            level = level.split('|')[0]

        url = get_geometry_url(geoid)
        source = get_geojson_datasource(url)

        layer = source.GetLayer(0)
        for i in xrange(layer.GetFeatureCount()):
            feat = layer.GetFeature(i)
            # XXX: parse the codes attribute as a json string
            # XXX: GDAL 2.0 might fix this?
            code = json.loads(feat['codes'])['MDB']
            geometries[level + '-' + code] = feat

    return geometries


def get_geojson_datasource(url):
    data = cache.get(url)
    if data:
        log.info("Cache hit for %s" % url)
    else:
        log.info("Fetching %s" % url)
        resp = requests.get(url)
        log.info("Fetched")

        resp.raise_for_status()
        data = resp.text.replace('"id"', '"_id"')

        # XXX: hack around ogr not liking "id" property
        # XXX: GDAL 2.0 might fix this?
        data = data.replace('"id"', '"_id"')

        log.info("Caching")
        cache.set(url, data, CACHE_SECS)
        log.info("Cached")

    driver = ogr.GetDriverByName('GeoJSON')
    log.info("Parsing")
    ds = driver.Open(data)
    log.info("Parsed")
    return ds


MAPIT_LEVEL_TYPES = {
    'country': 'CY',
    'district': 'DC',
    'province': 'PR',
    'municipality': 'MN',
    'ward': 'WD',
}

MAPIT_LEVEL_SIMPLIFY = {
    'CY': 0.01,
    'DC': 0.01,
    'PR': 0.005,
    'MN': 0.005,
    'WD': 0.0001,
}


def get_geometry_url(geoid):
    level, code = geoid.split('-', 1)

    if level == 'country':
        # NB: no simplify_tolerance
        url = '/areas/MDB:ZA.geojson?generation=1'

    elif '|' in level:
        # ward|province-CPT
        level, filter_level = level.split('|', 1)
        url = '/areas/MDB-levels:%s-%s|%s.geojson?generation=1&simplify_tolerance=%s' % (
              MAPIT_LEVEL_TYPES[filter_level],
              code,
              MAPIT_LEVEL_TYPES[level],
              MAPIT_LEVEL_SIMPLIFY[MAPIT_LEVEL_TYPES[level]],
        )

    else:
        url = '/areas/MDB:%s.geojson?generation=1&type=%s&simplify_tolerance=%s' % (
              code,
              MAPIT_LEVEL_TYPES[level],
              MAPIT_LEVEL_SIMPLIFY[MAPIT_LEVEL_TYPES[level]],
        )

    return 'http://mapit.code4sa.org' + url
