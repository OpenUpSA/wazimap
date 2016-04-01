Getting Started
===============

Wazimap is a Django application that you'll need to configure correctly before you can use it.
You're going to need to import place metadata, census data and write some code to tell Wazimap
what census data you want to show.

Wazimap is a bit different to most Django applications. It comes with all the URLs and most
of the settings that you're going to need, so you need to tell Django to load the details
from the Wazimap application, rather than your Django application like normal.

.. note:: 

    You'll need to choose a short name for your application. In these examples,
    we'll be using ``wazimap_ex`` for Wazimap Example. We suggest using
    the `two-letter country code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2>`_ of your
    country in place of the ``ex``.

1. Setup a python virtual environment, we recommend using `virtualenv <https://virtualenv.readthedocs.org/en/latest/>`_.

2. Install Django (version 1.8.0 or newer) and start a new Django project. ::

    pip install django
    django-admin startproject wazimap_ex
    cd wazimap_ex

3. This will have created some files that are unnecessary because Wazimap already provides them.
   You can safely delete them. ::

    rm wazimap_ex/urls.py wazimap_ex/wsgi.py

4. Install Wazimap and its dependencies ::

    pip install wazimap

5. At this point you have the absolute basics in place. We're now going to configure
   your Django application to load its settings from Wazimap.

   Change your ``settings.py`` file to import most settings from Wazimap, and then
   override the settings that you want to change. Replace the contents of
   your file with the following: ::



      # pull in the default wazimap settings
      from wazimap.settings import *  # noqa

      # install this app before Wazimap
      INSTALLED_APPS = ['wazimap_ex'] + INSTALLED_APPS

      # Localise this instance of Wazimap
      WAZIMAP['name'] = 'Wazimap Example'
      # NB: this must be https if your site supports HTTPS.
      WAZIMAP['url'] = 'http://wazimap.example.com'
      WAZIMAP['country_code'] = 'EX'

   .. seealso::

       See the :ref:`config` section for more details on configuration options.

6. You'll need a running PostgreSQL server. The default database settings are:

   * Username: wazimap
   * Password: wazimap
   * Database: wazimap
   * Hostname: localhost

   So create the user and database locally: ::

       createuser -P wazimap
       createdb -O wazimap wazimap

   Or alternatively from inside psql: ::

       CREATE USER wazimap WITH PASSWORD 'wazimap';
       CREATE DATABASE wazimap OWNER wazimap;

   .. note::

       If you want to use a different database, configure the default database
       as you normally would for a Django application.

7. Run migrations to setup the database: ::

    python manage.py migrate

8. You now have a Wazimap application and matching database ready to load
   geographies and data into. Those steps are covered in the rest of this
   guide.
