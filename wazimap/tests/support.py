from django.test import TestCase

from wazimap.data.utils import get_session, _engine
from wazimap.data.tables import DATA_TABLES, FieldTable


class WazimapTestCase(TestCase):
    def setUp(self):
        self.s = get_session()
        DATA_TABLES.clear()

    def field_table(self, fields, data_str):
        table = FieldTable(fields)
        self.load_data(table, data_str)

    def load_data(self, table, data_str):
        model = table.get_model('lev')

        for row in data_str.strip().split("\n"):
            parts = row.strip().split(",")
            entry = model(geo_level=parts[0], geo_code=parts[1])

            # set fields
            for i, field in enumerate(table.fields):
                setattr(entry, field, parts[2 + i])

            v = parts[-1]
            v = None if v == '' else int(v)
            entry.total = v

            self.s.add(entry)

        self.s.flush()

    def tearDown(self):
        self.s.close()
        _engine.dispose()
