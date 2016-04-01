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
    in the `Wazimap deploy <https://github.com/Code4SA/wazimap/tree/master/deploy>`_ directory.

To deploy on Heroku on Dokku, create your application in the normal way. Then set these config variables:

* ``DATABASE_URL=<your database URL>``
* ``DJANGO_SECRET_KEY=<a random secret key>``
* ``DJANGO_DEBUG=False``
* ``DJANGO_SETTINGS_MODULE=<your settings module>``

You'll need a Procfile, too: ::

    web: gunicorn --worker-class gevent wazimap.wsgi:application -t 120 --log-file -

Wazimap requires GDAL and GEOS. The easiet way to get these installed on Heroku or Dokku is to use
the *multi* buildpack. Set:

* ``BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git``

Then create a file ``.buildpacks`` in your project's root directory: ::

    https://github.com/cyberdelia/heroku-geo-buildpack.git
    https://github.com/heroku/heroku-buildpack-python.git

That tells Heroku and Dokku to load the geo dependencies (including GDAL and GEOS) and then
build python as usual.

Ensure django is included in your requirements.txt.

Finally, just use ``git push heroku`` or ``git push dokku master`` to deploy as you usually would.

Should you need to do a database migration, you can run ``dokku run <app-name> python manage.py migrate`` on your server.

HTTPS and SSL
-------------

.. note:: We recommend running your website over HTTPS.

We recommend that you run your site over HTTPS (SSL). If you don't use HTTPS, then any website
that does use HTTPS **will not** be able to embed a chart from your Wazimap. This is because
websites using HTTPS cannot load content from non-HTTPS sites.
