import shutil
import tempfile
import os
import logging
import zipfile
import re

from wazimap.geo import geo_data, HAS_GDAL, gdal_missing


log = logging.getLogger(__name__)


class DownloadManager(object):
    BAD_LAYER_CHARS = re.compile('[ /#-]')

    DOWNLOAD_FORMATS = {
        'kml': {"driver": "KML", 'geometry': True, 'mime': 'application/vnd.google-earth.kml+xml'},
        'geojson': {"driver": "GeoJSON", 'geometry': True, 'mime': 'application/json'},
        'xlsx': {"driver": "XLSX", 'geometry': False, 'mime': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'},
        'csv': {"driver": "CSV", 'geometry': False, 'mime': 'text/csv'},
        'shp': {"driver": "Esri Shapefile", 'geometry': True, 'mime': 'text/csv'},
    }

    def generate_download_bundle(self, tables, geos, geo_ids, data, fmt):
        if not HAS_GDAL:
            gdal_missing(critical=True)

        from osgeo import ogr, osr
        self.ogr = ogr
        self.osr = osr
        ogr.UseExceptions()

        format = self.DOWNLOAD_FORMATS[fmt]

        # where we're going to put the data temporarily
        temp_path = tempfile.mkdtemp()
        try:
            file_ident = "%s_%s" % (
                tables[0].id.upper(),
                # The gdal KML driver doesn't like certain chars in its layer names.
                # It will replace them for you, but then subsequent calls hang.
                self.BAD_LAYER_CHARS.sub('_', geos[0].name))

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
                geoid = geo.geoid

                out_feat = ogr.Feature(out_layer.GetLayerDefn())

                if format['geometry']:
                    geom = self.get_geometry(geo.geo_level, geo.geo_code)
                    if geom:
                        out_feat.SetGeometry(geom)

                out_feat.SetField2('geo_level', geo.geo_level)
                out_feat.SetField2('geo_code', geo.geo_code)
                out_feat.SetField2('geoid', geoid)
                out_feat.SetField2('name', geo.name.encode('utf-8'))

                for table in tables:
                    table_estimates = data[geoid][table.id.upper()]['estimate']

                    for column_id, column_info in table.columns.iteritems():
                        if column_id in table_estimates:
                            est = table_estimates[column_id]
                            # None values get changed to zero, which isn't accurate
                            if est is None:
                                continue

                            # GDAL generates invalid excel spreadsheets for
                            # zero values in real columns
                            if fmt == 'xlsx' and est == 0:
                                continue
                            out_feat.SetField(str(column_id), est)

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

    def get_geometry(self, geo_level, geo_code):
        details = geo_data.get_geometry(geo_level, geo_code)
        shape = details['shape']

        if shape:
            return self.ogr.CreateGeometryFromWkb(shape.wkb)
