# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import wazimap.models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Geography',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('geo_level', models.CharField(max_length=15)),
                ('geo_code', models.CharField(max_length=10)),
                ('name', models.CharField(max_length=20, db_index=True)),
                ('year', models.IntegerField(null=True, db_index=True)),
                ('osm_area_id', models.IntegerField(null=True, db_index=True)),
                ('square_kms', models.FloatField(null=True)),
                ('parent_level', models.CharField(max_length=15, null=True)),
                ('parent_code', models.CharField(max_length=10, null=True)),
            ],
            bases=(models.Model, wazimap.models.GeoMixin),
        ),
        migrations.AlterUniqueTogether(
            name='geography',
            unique_together=set([('geo_level', 'geo_code')]),
        ),
    ]
