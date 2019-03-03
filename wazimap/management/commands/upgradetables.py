from django.core.management.base import BaseCommand

from wazimap.models import FieldTable, SimpleTable, Dataset, Release, FieldTableRelease, SimpleTableRelease, DBTable


class Command(BaseCommand):
    help = "Upgrades old-style Wazimap FieldTables to the version 2.0"

    def handle(self, *args, **options):
        from wazimap.data.tables import FIELD_TABLES, DATA_TABLES

        for table in FIELD_TABLES.values():
            self.upgrade_field_table(table)

        for table in DATA_TABLES.values():
            if not hasattr(table, 'fields'):
                self.upgrade_simple_table(table)

    def upgrade_field_table(self, table):
        # does it need upgrading?
        existing = FieldTable.objects.filter(
            fields=table.fields,
            universe=table.universe,
            dataset__name=table.dataset_name,
        ).first()

        if existing:
            self.stdout.write(self.style.WARNING("Ignoring already upgraded table '%s' that matches '%s'" % (
                table.id, existing)))
        else:
            # upgrade it
            self.stdout.write(self.style.SUCCESS("Upgrading table '%s'..." % table.id))

            dataset, created = Dataset.objects.get_or_create(name=table.dataset_name)
            if created:
                self.stdout.write(self.style.SUCCESS("Created dataset %s" % dataset.name))

            new_table = FieldTable(
                name=table.id,
                fields=table.fields,
                universe=table.universe,
                denominator_key=table.denominator_key,
                has_total=table.has_total,
                value_type=table.value_type.__name__,
                stat_type=table.stat_type,
                description=table.description,
                dataset=dataset,
            )
            new_table.clean()
            new_table.save()

            release, created = Release.objects.get_or_create(
                dataset=dataset,
                year=table.year,
                name=dataset.name,
            )
            if created:
                self.stdout.write(self.style.SUCCESS("Created release %s for dataset %s" % (release.year, dataset.name)))

            db_table, created = DBTable.objects.get_or_create(name=table.db_table)
            if created:
                self.stdout.write(self.style.SUCCESS("Created db_table entry for %s" % db_table.name))

            ft_release = FieldTableRelease.objects.create(data_table=new_table, db_table=db_table, release=release)
            self.stdout.write(self.style.SUCCESS("Created field table release %s" % ft_release))

            self.stdout.write(self.style.SUCCESS("Finished upgrading table '%s'" % table.id))

    def upgrade_simple_table(self, table):
        # does it need upgrading?
        existing = SimpleTable.objects.filter(name__iexact=table.id).first()

        if existing:
            self.stdout.write(self.style.WARNING("Ignoring already upgraded table '%s' that matches '%s'" % (
                table.id, existing)))
        else:
            # upgrade it
            self.stdout.write(self.style.SUCCESS("Upgrading table '%s'..." % table.id))

            dataset, created = Dataset.objects.get_or_create(name=table.dataset_name)
            if created:
                self.stdout.write(self.style.SUCCESS("Created dataset %s" % dataset.name))

            new_table = SimpleTable(
                name=table.id.lower(),
                universe=table.universe,
                stat_type=table.stat_type,
                description=table.description,
                dataset=dataset,
            )
            new_table.clean()
            new_table.save()

            release, created = Release.objects.get_or_create(
                dataset=dataset,
                year=table.year,
                name=dataset.name,
            )
            if created:
                self.stdout.write(self.style.SUCCESS("Created release %s for dataset %s" % (release.year, dataset.name)))

            db_table, created = DBTable.objects.get_or_create(name=table.db_table)
            if created:
                self.stdout.write(self.style.SUCCESS("Created db_table entry for %s" % db_table.name))

            ft_release = SimpleTableRelease.objects.create(data_table=new_table, db_table=db_table, release=release)
            self.stdout.write(self.style.SUCCESS("Created simple table release %s" % ft_release))

            self.stdout.write(self.style.SUCCESS("Finished upgrading table '%s'" % table.id))
