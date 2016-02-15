.. _data:

Statistical Data
================

TODO:

* database tables and models
* adding new data

Wazimap presents **statistical data** about **geographies**, such as the number of English speakers in a city. You need to tell Wazimap
what data is available and for which geographies.

Wazimap stores statistics in what it calls **data tables**. There are two different types of data tables: Field Tables and Simple Tables.

Field Tables
  Field Tables are more flexible than Simple Tables. They allow Wazimap to store combinations, such as the number of people in
  an area by both age and gender. Most census data is best stored using Field Tables. Field Tables almost always have
  only one column that contains a number, the ``total`` column.

Simple Tables
  Simple Tables look a lot like spreadsheet tables. Each column is a different statistic about a place. They are
  easy to think about and work with but are limited in their flexibility. Simple Tables often have many columns
  with numbers, in addition to a ``total`` column.

Both types of tables have some metadata linked to them, such as an id, year and a description of the population that it covers.

Configuring Tables
------------------

All tables are configured in your project's ``tables.py`` file. Wazimap imports this automatically. Here's a short example: ::

    from wazimap.data.tables import FieldTable

    # Define our tables so the data API can discover them.
    FieldTable(['rural or urban', 'sex', 'age in completed years'])
    FieldTable(['employment activity status', 'sex'], universe='People aged 5 years and older')
    FieldTable(['main source of water'], universe='Households')
    SimpleTable(id='votes_national_2014', universe='Valid votes', total_column='total_votes',
                description='2014 National Election votes', dataset='2014 National Elections', year='2014')

This tells Wazimap that it has three Field Tables and one Simple Table. We describe these in more detail below.

Once you have told Wazimap about your tables, it'll ensure that they exist in the database. You can then import
the raw data from CSV.

Field Tables
------------

A Field Table is a logical collection of fields and values that describe numeric facts about a geography, along with some extra metadata about the table such as a name.

A ``field`` is generally an attribute of a place or a person in that place, such as ``language`` or ``gender``. A field has corresponding ``keys`` such as ``English`` or ``Female``. Fields and their keys describe a collection of people that match those attributes, such as all the English-speaking females in a province. The ``value`` associated with a collection of fields and keys is the number of people with that attribute.

For example, here is a Field Table with two fields, ``language`` and ``gender``:

======== ======= =====
language gender  total
======== ======= =====
English  Male    298
English  Female  312
French   Male    128
French   Female  779
======== ======= =====

Most census Field Tables describe a **partitioning** of the population: the population is broken into groups (such as by language or gender) and every person is counted exactly once. If we added up all the values for all key combinations, we'd get the total population. That's useful because it means we can express the value for each combination of keys as a percentage of the total.

Each Field Table is stored in a physical PostgreSQL database table. Each entry in a Field Table is linked to a geography, since a row is a statistic about a place, and so each row has the geography level and code associated with it.

========= ======== ========= ======= =====
geo_level geo_code language  gender  total
========= ======== ========= ======= =====
province  WC       English   Male    283
province  WC       English   Female  199
province  WC       French    Male    324
province  WC       French    Female  287
province  GT       English   Male    298
province  GT       English   Female  312
province  GT       French    Male    128
province  GT       French    Female  779
========= ======== ========= ======= =====

Adding a Field Table
....................

First, you must register your Field Table in your project's ``tables.py``. When Wazimap boots, it will create
the underlying database table if it doesn't already exist.

.. automethod:: wazimap.data.tables.FieldTable.__init__

You must then import the data into the table. The easiest way of doing this is to look at the database to understand
the columns in your new table, shape your data accordingly, and import it using psql's CSV import support.

Simple Tables
-------------

TODO

Adding a Simple Table
.....................

First, you must register your Simple Table in your project's ``tables.py``. When Wazimap boots, it will create
the underlying database table if it doesn't already exist.

.. automethod:: wazimap.data.tables.SimpleTable.__init__

You must then import the data into the table. The easiest way of doing this is to look at the database to understand
the columns in your new table, shape your data accordingly, and import it using psql's CSV import support.
