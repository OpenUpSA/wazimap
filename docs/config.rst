.. _config:

Configuration
=============

There are a number of options to configure how Wazimap behaves. Options are
set in ``settings.py`` in the ``WAZIMAP`` dict.

``name``
  The full name of the website. Default: ``Wazimap Example``

``url``
  The site's base url, including scheme, WITHOUT and ending slash.
  If your site supports HTTPS, this **must** be an ``https`` url, otherwise
  embeds that are over HTTPS might not load correctly.
  Default: ``http://wazimap.example``

``twitter``
  Twitter handle. Default: ``@Wazimap``

``ga_tracking_id``
  Google Analytics tracking id.

``country_code``
  Two-letter country code for the country this site relates to.

``google_geocode_api_key``
  Google Geocoding API key, if you want to use more than the free limit.

``cache_secs``
  How many seconds should cacheable Wazimap pages be cached for? Default: ``60 * 60``

``embed_cache_secs``:
  How many seconds should Wazimap embed pages be cached for? Default: ``24 * 60 * 60``

``geodata``
  The dotted-path of the class to use for geo data helper routines.
  See :ref:`geos` for more info.
  Default: ``wazimap.geo.GeoData``

``levels``
  Geography levels. This must be a dict similar to the following: ::

      {
        'country': {
          'name': 'country',      # optional, defaults to the level code
          'plural': 'countries',  # plural version of the name
          'children': ['province'],
        },
        ...
      }

  Default: ::

       'country': {
           'plural': 'countries',
           'children': [],
       }

``comparative_levels``
  Ordered list of levels to compare a place with; should generally be only 2-3 levels.
  Default: ``[]``

``geometry_data``
  Map from geometry names to local static files with geometry data. This is used
  to both draw maps in webpages and for geolocation.
  Wazimap uses Django's static files finder to find these files, so the
  files must be stored in your application's `static` directory.

  For maps, topojson is preferred because it's smaller. But for geolocation,
  because it's done server side, it requires geojson (shapely doesn't understand
  topojson). Ideally you should have both `.geojson` and `.topojson` files
  and specify the `.topojson` version here. Wazimap will look for geojson equivalents
  of topojson files.

  The top level of this dict MUST be the geo version. If you're not using versioned
  geographies, use the empty string.

  If a level isn't specified here, Wazimap will try to find a file under the key ``''``.

  Default: ::

      {
        '': {
          '': 'geo/all.geojson',
        }
      }

``map_centre``, ``map_zoom``
  Centre coordinates and zoom level defaults for maps. Centre must be a ``[lat, long]`` pair
  and zoom is a zoom level (1-12).
  If not set, both are determined from the geometry.

``embed_url``
  The full url, including scheme (but no ending slash) where embeds are hosted.
  This is generally not used.  If your site supports HTTPS, this **must** be an
  ``https`` url, otherwise embeds that are over HTTPS might not load correctly.
  The default is the same as ``url``.

``na_label``
  The label to display for stats which have no data available.
  The default is N/A.

``default_geo_version``
  Default geo version to use when loading geographies. If ``None``,
  the most recent version in the Geography's table (``geo_data.latest_version``) is used.

``legacy_embed_geo_version``
  The geo version to use for legacy embeds that don't specify a geo version.
  If ``None``, uses the latest version (``geo_data.latest_version``).
  If you're introducing versioned geographies and your users have already embedded charts,
  you probably want to set this to your earliest version so that embeds continue showing the original data.

Localisation
------------

You can customise how Wazimap formats numbers shown on a profile page by
using Django's `FORMAT_MODULE_PATH <https://docs.djangoproject.com/en/1.10/ref/settings/#std:setting-FORMAT_MODULE_PATH>`_ setting.
These settings in particular apply:

``THOUSAND_SEPARATOR``
  The thousand separator used when formatter numbers.

``DECIMAL_SEPARATOR``
  The decimal separator used when formatter numbers.

``CURRENCY_SYMBOL``
  The currency symbol to be used before currency amounts. Not in Django.
  Default: $

Additional Options
------------------

These options are specific to Wazimap and are set at the top-level of your settings.py file, not in the ``WAZIMAP`` dict.

``STRIP_WWW``
  Set this to ``True`` to redirect users visiting your site at ``www.example.com`` to ``example.com``. This is the reverse of
  Django's `PREPEND_WWW <https://docs.djangoproject.com/en/1.10/ref/settings/#prepend-www>`_ setting.
  Default is ``False``.
