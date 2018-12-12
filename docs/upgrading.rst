Upgrading
=========

Upgrading from 1.x to 2.x
-------------------------

As of version 2.0.0, Wazimap supports multiple releases of a dataset. This means that you can, for example, have two releases of a national census in Wazimap at the same time. You will need to make some changes to how you declare your tables and build profile pages.

* Data table management is done through the Django admin interface.
* Datasets are a concrete concept, they bring together a collection of related data tables. A dataset can have multiple releases (ie. updates) over the years. A good example of a dataset is a national census, which could be released every few years.
* Data tables must have at least one release, which is a set of data for that table, released at a particular point in time.

Run migrations
..............

Before anything else, run migrations::

    python manage.py migrate

Upgrade existing tables
.......................

The old way of declaring tables in ``tables.py`` is no longer used. Before you remove those declarations, use them to upgrade your table descriptions into the new format. Run::

    python manage.py upgradetables

This will upgrade the tables into the database.

.. note::

    Do not delete the data tables from the database, they are still needed and will be used by the upgraded tables.

Visit the admin area
....................

Create a superuser so you can login to the admin area::

    python manage.py createsuperuser

Visit http://localhost:8000/admin to log in and check that your tables are correct.

Remove the old table descriptions
.................................

If you're happy that your tables have been imported correctly, you can remove them from your ``tables.py`` file.
