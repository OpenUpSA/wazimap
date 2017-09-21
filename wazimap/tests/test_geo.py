from django.test import TestCase
from django.conf import settings

from wazimap.geo import geo_data, GeoData


class GeoTestCase(TestCase):
    def test_versioned_geos(self):
        # create two geos at different versions
        cpt11 = geo_data.geo_model.objects.create(geo_level='municipality', geo_code='cpt', long_name='City of Cape Town', version='2011')
        cpt16 = geo_data.geo_model.objects.create(geo_level='municipality', geo_code='cpt', long_name='City of Cape Town', version='2016')

        self.assertEquals(cpt16, geo_data.get_geography('cpt', 'municipality'))
        self.assertEquals(cpt11, geo_data.get_geography('cpt', 'municipality', '2011'))
        self.assertEquals(cpt16, geo_data.get_geography('cpt', 'municipality', '2016'))

    def test_geometry(self):
        # if the geometry_data is missing the version, we should raise an error
        settings.WAZIMAP['geometry_data'] = {'country': 'geo/country.geojson'}

        with self.assertRaises(ValueError):
            GeoData()

        # if the geometry_data is missing the version, we should raise an error
        settings.WAZIMAP['geometry_data'] = {'': 'geo/country.geojson'}

        with self.assertRaises(ValueError):
            GeoData()
