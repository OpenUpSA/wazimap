from django.test import TransactionTestCase
from wazimap.data.utils import dataset_context
from django.db import transaction

from wazimap.data.utils import get_session, _engine
from wazimap.models import FieldTable, Dataset, Release, DBTable


class WazimapTestCase(TransactionTestCase):
    def setUp(self):
        self.s = get_session()
        self.ctxt = dataset_context(year='latest')
        self.ctxt.__enter__()

    def tearDown(self):
        self.s.close()
        _engine.dispose()
        self.ctxt.__exit__(None, None, None)

    def field_table(self, fields, data_str, **kwargs):
        with transaction.atomic():
            dataset, _ = Dataset.objects.get_or_create(name="Test Dataset")
            release, _ = Release.objects.get_or_create(name="Test release", year="2000", dataset=dataset)
            table = FieldTable(fields=fields, dataset=dataset, **kwargs)
            table.clean()
            table.save()

            db_table, _ = DBTable.objects.get_or_create(name=table.name.lower())
            table.release_class.objects.create(data_table=table, db_table=db_table, release=release)

            table.ensure_db_tables_exist()

        if data_str:
            self.load_data(table, data_str)

        return table

    def load_data(self, table, data_str):
        db_table = table.get_db_table(year='latest')
        model = db_table.model

        for row in data_str.strip().split("\n"):
            parts = row.strip().split(",")
            entry = model(geo_level=parts[0], geo_code=parts[1], geo_version='')

            # set fields
            for i, field in enumerate(table.fields):
                setattr(entry, field, parts[2 + i])

            v = parts[-1]
            v = None if v == '' else int(v)
            entry.total = v

            self.s.add(entry)

        self.s.flush()
