# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2017-04-24 10:09


from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wazimap', '0007_fieldtable_geoversion'),
    ]

    operations = [
        migrations.AlterField(
            model_name='geography',
            name='version',
            field=models.CharField(db_index=True, default=b'', max_length=100),
        ),
    ]
