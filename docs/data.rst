.. _data:

Statistical Data
================

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

Datasets and Releases
---------------------

In Wazimap, a **dataset** is a collection of related **data tables**, such as a national census. A dataset can be updated with new **releases** every few years. Not all data data tables will always be updated in every release, so Wazimap lets you link data tables to releases individually.

Sometimes a release has a different name to the original dataset. For example, South Africa conducts a full census every decade, but releases a community survey in between each full census. A community survey is a statistical sampling and is not a full census, so it would be incorrect to call them both "census". The results of the community survey are very similar to the census and are directly comparable. We consider census and community surveys to be different **releases** of the same **dataset**.

.. important::

    You must add at least one **dataset** and one **release** before you can add any data tables. See below
    for details on how to do this.

.. _create-dataset:
    
Create a Dataset and Release
............................

1. Go to the Django admin section at http://localhost:8000/admin and log in.
2. Under **Wazimap**, click the **Add** button alongside **Datasets**.
3. Give your dataset a name.
4. Under **Releases**, fill in the name and the year of your first release. For example, you could use ``Census`` and ``2017``.
5. Click **Save**.

Configuring Tables
------------------

Datasets, releases and data tables are configured through the Django admin interface, at http://localhost:8000/admin.

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

Each Field Table is stored in a physical PostgreSQL database table. Each entry in a Field Table is linked to a geography, since a row is a statistic about a place, and so each row has the geography level, code and version associated with it.

========= ======== =========== ========= ======= =====
geo_level geo_code geo_version language  gender  total
========= ======== =========== ========= ======= =====
province  WC                   English   Male    283
province  WC                   English   Female  199
province  WC                   French    Male    324
province  WC                   French    Female  287
province  GT                   English   Male    298
province  GT                   English   Female  312
province  GT                   French    Male    128
province  GT                   French    Female  779
========= ======== =========== ========= ======= =====

Adding a Field Table
....................

First, ensure that you have :ref:`created at least one dataset and release <create-dataset>`.

1. Go to the Django admin section at http://localhost:8000/admin and log in.
2. Under **Wazimap**, click the **Add** button alongside **Field tables**.
3. Choose the dataset the table belongs to.
4. Name the **Universe** this table describes, such as ``Population``, ``Households`` or ``Youth aged 14 to 25``.
5. Provide a comma-separated list of the **Fields** in your table.
6. Leave the **Description** blank and it will be generated for you.
7. Click **Save**.

Now import the data into the table. The easiest way of doing this is to look at the database to understand
the columns in your new table, shape your data accordingly, and import it using psql's CSV import support.

Simple Tables
-------------

A Simple Table looks a lot like a spreadsheet. It contains statistics for many places, one geography per row. Each column has
a name and the cell values are the numerical statistics for that row's geography. Each Simple Table is stored in a physical PostgreSQL database table.

For example, here is a Simple Table with two columns, ``votes_cast`` and ``registered_voters``.

========= ======== =========== ========== =================
geo_level geo_code geo_version votes_cast registered_voters
========= ======== =========== ========== =================
province  WC                   829        1024
province  GT                   773        990
========= ======== =========== ========== =================

You can see that in contrast with a Field Table, a Simple Table can have multiple statistics per geography.

A Simple Tables usually has a column which represents a **total value**, usually (but not always) called ``total``.
It is used to calculate percentages for other columns in the table. In the
example above, the ``registered_voters`` column is the **total column**,
because we can express ``votes_cast`` as a percentage of the registered voters
in each province.

Wazimap uses this to allow the user to switch between absolute values and percentages when viewing data
for the table. You can also tell Wazimap that a table doesn't have a total column, in which case it always
shows absolute values.

.. note::

    If your table has a total column, it's important that all the statistics in it are related.
    If it doesn't make sense to express a column as a percentage, put it in another table
    that doesn't have a total column.

Adding a Simple Table
.....................

First, ensure that you have :ref:`created at least one dataset and release <create-dataset>`.

1. Go to the Django admin section at http://localhost:8000/admin and log in.
2. Under **Wazimap**, click the **Add** button alongside **Simple tables**.
3. Give your table a descriptive name.
4. Choose the dataset the table belongs to.
5. Name the **Universe** this table describes, such as ``Population``, ``Households`` or ``Youth aged 14 to 25``.
6. Add a **Description** of your table.
7. Click **Save**.

Now import the data into the table. The easiest way of doing this is to look at the database to understand
the columns in your new table, shape your data accordingly, and import it using psql's CSV import support.
