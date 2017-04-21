from django.test import TestCase

from wazimap.geo import geo_data


class GeoTestCase(TestCase):
    def test_versioned_geos(self):
        # create two geos at different versions
        cpt11 = geo_data.geo_model.objects.create(geo_level='municipality', geo_code='cpt', long_name='City of Cape Town', version='2011')
        cpt16 = geo_data.geo_model.objects.create(geo_level='municipality', geo_code='cpt', long_name='City of Cape Town', version='2016')

        self.assertEquals(cpt16, geo_data.get_geography('cpt', 'municipality'))
        self.assertEquals(cpt11, geo_data.get_geography('cpt', 'municipality', '2011'))
        self.assertEquals(cpt16, geo_data.get_geography('cpt', 'municipality', '2016'))
