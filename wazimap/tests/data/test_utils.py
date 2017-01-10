from wazimap.tests.support import WazimapTestCase
from wazimap.data.utils import get_stat_data
from wazimap.data.tables import FieldTable


class UtilsTestCase(WazimapTestCase):
    def test_get_stat_data_percentage(self):
        self.field_table(['gender'], """
lev,code,Male,10
lev,code,Female,20
""")
        data, total = get_stat_data(['gender'], 'lev', 'code', self.s)
        self.assertEqual(total, 30)
        self.assertEqual(data['Male']['numerators']['this'], 10)
        self.assertEqual(data['Male']['values']['this'], 33.33)
        self.assertEqual(data['Female']['numerators']['this'], 20)
        self.assertEqual(data['Female']['values']['this'], 66.67)

        data, total = get_stat_data(['gender'], 'lev', 'code', self.s, percent=False)
        self.assertEqual(total, 30)
        self.assertIsNone(data['Male']['numerators']['this'])
        self.assertEqual(data['Male']['values']['this'], 10)
        self.assertIsNone(data['Female']['numerators']['this'])
        self.assertEqual(data['Female']['values']['this'], 20)

    def test_get_stat_data_nulls(self):
        self.field_table(['gender'], """
lev,code,Male,10
lev,code,Female,
""")
        data, total = get_stat_data(['gender'], 'lev', 'code', self.s)
        self.assertEqual(total, 10)
        self.assertEqual(data['Male']['numerators']['this'], 10)
        self.assertEqual(data['Male']['values']['this'], 100)
        self.assertIsNone(data['Female']['numerators']['this'])
        self.assertIsNone(data['Female']['values']['this'])

        data, total = get_stat_data(['gender'], 'lev', 'code', self.s, percent=False)
        self.assertEqual(total, 10)
        self.assertIsNone(data['Male']['numerators']['this'])
        self.assertEqual(data['Male']['values']['this'], 10)
        self.assertIsNone(data['Female']['numerators']['this'])
        self.assertIsNone(data['Female']['values']['this'])

    def test_get_stat_data_nulls_with_denominator_key(self):
        table = FieldTable(['household goods'], universe='Households', denominator_key='total households')
        self.load_data(table, """
lev,code,fridge,10
lev,code,computer,5
lev,code,total households,
""")
        data, total = get_stat_data(['household goods'], 'lev', 'code', self.s)
        self.assertEqual(total, None)
        self.assertEqual(data['Fridge']['numerators']['this'], 10)
        self.assertIsNone(data['Fridge']['values']['this'])
        self.assertEqual(data['Computer']['numerators']['this'], 5)
        self.assertIsNone(data['Computer']['values']['this'])
