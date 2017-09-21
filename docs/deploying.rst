.. _deploying:

Deploying
=========

Wazimap can be deployed like any Django application. It's particularly easy to deploy on `Heroku <https://www.heroku.com/>`_ or a
Heroku-like environment such as `Dokku <http://dokku.viewdocs.io/dokku/>`_. You
can use the Wazimap WSGI ``application`` variable from ``wazimap.wsgi``.

.. important::

    Always ensure that you set the ``DJANGO_SETTINGS_MODULE`` environment variable to the module path of your ``settings.py`` file.

Deploying on Heroku or Dokku
----------------------------

.. seealso::

    You can find example of the files necessary to deploy on Dokku or Heroku
    in the `Wazimap deploy <https://github.com/OpenUpSA/wazimap/tree/master/deploy>`_ directory.

To deploy on Heroku on Dokku, create your application in the normal way. Then set these config variables:

* ``DATABASE_URL=<your database URL>``
* ``DJANGO_SECRET_KEY=<a random secret key>``
* ``DJANGO_DEBUG=False``
* ``DJANGO_SETTINGS_MODULE=<your settings module>``
* ``DISABLE_COLLECTSTATIC=1=``

You'll need a Procfile, too: ::

    web: gunicorn --worker-class gevent wazimap.wsgi:application -t 120 --log-file -

GDAL
....

Wazimap requires `GDAL <http://www.gdal.org/>`_ to support data downloads in formats like KML.
The easiet way to get these installed on Heroku or Dokku is to use multiple
buildpacks. Create a file ``.buildpacks`` in your project's root directory: ::

    https://github.com/cyberdelia/heroku-geo-buildpack.git
    https://github.com/heroku/heroku-buildpack-python.git

That tells Heroku and Dokku to install GDAL and then continue with the usual Python install. Alternatively,
install GDAL for your platform manually.

By default, Wazimap doesn't install the libraries to use GDAL because it can be difficult to install.
Tell Wazimap to install everything it needs for GDAL by installing it with ``wazimap[gdal]`` or specify
``GDAL>=1.11.0,<2.0`` in your requirements.txt.

Be sure that the platform GDAL and Python GDAL versions match.

Dependencies
............

Wazimap requires Django 1.9.

Add Wazimap and Django as dependencies for your project in your ``requirements.txt`` file: ::

    wazimap[gdal]
    Django==1.9.2

Copy `Wazimap's ``app.json``<https://github.com/OpenUpSA/wazimap/blob/master/wazimap/static/css/_variables.scss>` into your project: ::

    {
      "scripts": {
        "dokku": {
          "predeploy": "python manage.py compilescss && python manage.py collectstatic --noinput && rm -rf /var/tmp/wazimap_cache"
        }
      }
    }

Finally, just use ``git push heroku`` or ``git push dokku master`` to deploy as you usually would.

Should you need to do a database migration, you can run ``dokku run <app-name> python manage.py migrate`` on your server.

HTTPS and SSL
-------------

.. note:: We recommend running your website over HTTPS.

We recommend that you run your site over HTTPS (SSL). If you don't use HTTPS, then any website
that does use HTTPS **will not** be able to embed a chart from your Wazimap. This is because
websites using HTTPS cannot load content from non-HTTPS sites.
