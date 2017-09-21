Wazimap Version History
=======================

1.0.0 (21 September 2017)
-------------------------

This release of Wazimap introduces some backwards compatible changes.

* Support versioned geographies.
* BREAKING: The Geography model has changed. You must run ``python manage.py migrate`` when updating.
* BREAKING: The method signature of the ``profile_builder`` function has changed. It is now called as ``get_profile(geo, profile_name, request)``. You will need to update your profile methods to work with a ``geo`` object rather than a ``level`` and a ``code``. Use ``geo.geo_level`` and ``geo.geo_code`` instead.
* BREAKING: Some methods on the ``GeoData`` object now take a ``Geography`` object rather than a ``geo_level`` and a ``geo_code``.
* BREAKING: The ``geography_data`` setting must include a geography version at the top of the dict. Use ``''`` by default. eg: ``{'': {'country': 'geo/country.geojson'}}``
* Some methods on the ``GeoData`` object now take an optional ``version`` parameter.
* A new method ``GeoData.get_comparative_geos`` makes it easier to build the profile page for comparative geographies.
* FIX: load streetmap tiles over https if necessary
* FEATURE: site menu
* FEATURE: use SCSS stylesheets, support customising using SCSS variables.
* Attribution updates to reflect OpenUp, the new name for Code for South Africa.

0.8.2 (20 April 2017)
---------------------

* Make the 'show data / embed' links for charts more visible

0.8.1 (18 April 2017)
---------------------

* Fix metadata for field tables that re-use db tables

0.8.0 (12 April 2017)
---------------------

* Support FieldTables that share a common database table
* Remove support for ``FieldTable.table_per_level`` parameter.

0.7.6 (3 April 2017)
--------------------

* Tell robots not to crawl /api/

0.7.5 (15 March 2017)
---------------------

* Remove unnecessary Auth, Admin, Messages and Sessions middleware. If you need these middleware, add them to your INSTALLED_APPS and MIDDLEWARE_CLASSES in your settings file.
* New setting ``STRIP_WWW`` to redirect ``www.example.com`` to ``example.com``, turned off by default.

0.7.4 (13 March 2017)
---------------------

* Allow overriding of header block in map view

0.7.3 (9 March 2017)
--------------------

* Add a stub help page at /help

0.7.2 (3 March 2017)
--------------------

* Don't exclude partial matches from google geocoding results

0.7.1 (25 January 2017)
-----------------------

**Important** This version makes GDAL an optional install. You must ensure you add GDAL to your requirements file, or install wazimap using ``wazimap[gdal]]``. See http://wazimap.readthedocs.io/en/latest/deploying.html

* Make GDAL and Shapely optional. This makes it much easier to get up and running with Wazimap without getting GDAL installed, which can be tricky.
* Support GDAL 1.x or 2.x (2.x not fully tested).

0.6.1 (11 January 2017)
-----------------------

* FIX bug in testing database names

0.6.0 (11 January 2017)
-----------------------

* Support null values in a table. This allows you to indicate to Wazimap that you don't have data for a particular field/indicator in a particular place. It is still necessary to ensure that all places have an entry in the database for all indicators.
* Automated build-time testing on `Travis <https://travis-ci.org/Code4SA/wazimap>`_.

0.5.8 (21 November 2016)
------------------------

* Support percentage values in the map view

0.5.7 (17 November 2016)
------------------------

* Support tables with raw values that are percentages
* Version 0.5.6 was not released

0.5.5 (7 November 2016)
-----------------------

* Fix embedded charts (contributed by mevey)

0.5.4 (28 October 2016)
-----------------------

* Don't show error for empty FieldTable with has_total=True

0.5.3 (21 October 2016)
-----------------------

* Fix loadGeometryForGeoIds bug (contributed by cliftonmcintosh)

0.5.2 (28 September 2016)
-------------------------

* Fix profile page tables for non-percentages

0.5.1 (27 September 2016)
-------------------------

* Correctly send comparative_levels setting to profile page

0.5.0 (22 September 2016)
-------------------------

* Support floating point values in tables

0.4.6 (20 September 2016)
-------------------------

* Be more tolerant of GDAL versions >= 1.11.0 and < 2.0
* Lazy load OGR/GDAL
* Don't allow Django 1.10

0.4.4 (8 September 2016)
------------------------

* Allow overriding of favicon.

0.4.2 (23 August 2016)
----------------------

* Support decimal places in chart tables

0.4.1 (22 August 2016)
----------------------

* FEATURE control the number of decimals for stats shown with the ``_stat_list`` include by using the ``decimals`` parameter.
* FEATURE adjust the currency symbol used for ``currency`` stats shown by ``_stat_list`` by setting ``CURRENCY_SYMBOL`` in the file specified by Django's FORMAT_MODULE_PATH.
* FEATURE get_stat_data supports percent_grouping and slices

0.3.3 (17 August 2016)
----------------------

* FEATURE get_stat_data now applies the ``only`` and ``exclude`` parameters in the database. This makes it possible to specify filters on fields that don't need to be fetched.
* FIX get_stat_data now uses the ``denominator_key`` to determine the table total for FieldTables that have ``denominator_key`` specified.
* FIX correctly serialise Decimal() in additional places
* Don't use whitespace in JSON responses.

0.3.1 (15 August 2016)
----------------------

* FEATURE a FieldTable can now optionally not support percentages (``has_total`` parameter)
* FIX correctly serialize Decimal() values in JSON

0.2.25 (12 August 2016)
-----------------------

* FIX reordering pure-integer keys in javascript

0.2.24 (4 August 2016)
----------------------

* FIX splitting geographies into child levels

0.2.23 (26 July 2016)
---------------------

* FIX geography search in table view

0.2.22 (22 July 2016)
---------------------

* Easier to override header blocks

0.2.21 (20 July 2016)
---------------------

* Footer Wazimap links use WAZIMAP.name where appropriate
* Change GitHub link in Footer
* Easier to override logo
* Twitter link is now optional

0.2.20 (11 July 2016)
---------------------

* FIX correct comparative levels

0.2.19 (20 June 2016)
---------------------

* Add table detail view, linked from homepage, to help users find data rather than
  always starting with a place.

0.2.18 (17 June 2016)
---------------------

* Make it easier to add provinces up the hierarchy in the data table view

0.2.17 (17 June 2016)
---------------------

* FIX how geo level ancestors are determined to fix issues with geography levels deeper than two.

0.2.16 (26 May 2016)
--------------------

* Add leaflet images included by css

0.2.15 (25 May 2016)
--------------------

* FIX ordering of keys for nested values

0.2.14 (5 May 2016)
-------------------

* Load leaflet locally so that it works over https
* Load fonts over https if necessary

0.2.13 (29 April 2016)
----------------------

* Serve most (all?) assets over https if site is loaded over https
* NOTE: this release still doesn't work correctly over https

0.2.12 (28 April 2016)
----------------------

* FIX: place search is wildcarded on both sides
* Make it easier to subclass from the default Wazimap Geography model by using GeographyBase

0.2.11 (20 April 2016)
----------------------

* Make homepage easier to override
* DOCS: how to override templates
* DOCS: profile page chart options
* Improve limiting searches to specific geo levels

0.2.10 (10 April 2016)
----------------------

* FIX: show slippy map on desktop, fixing bug introduced in 0.2.9.

0.2.9 (7 April 2016)
--------------------

* FIX: correctly hide slippy map on mobile, making elements clickable again

0.2.8 (5 April 2016)
--------------------

* FIX: embed over HTTPS

0.2.7 (5 April 2016)
--------------------

* Remove unnecessary rewrites for /static/iframe.html, this is only needed by wazimap-za.

0.2.6 (4 April 2016)
--------------------

* FIX: cleanly hide homepage map on small (<768px) screens

0.2.5 (2 April 2016)
--------------------

* Change the way geometries are loaded in comparison views
* Simplify template overrides in wazimap templates
* Fix link to GitHub repo in homepage template
* Add map back to the homepage [#4]
* DOCS: update deployment documentation and example files
* DOCS: make note that we recommend running securely over HTTPS

0.2.4 (8 March 2016)
--------------------

Django models have changed in this release. You will need to run migrations with ``python manage.py migrate``.

* FIX: content_type for robots.txt
* Remove numpy as a dependency
* Remove unused osm_area_id from geo models
* Add root_level to geo_data
* Don't include root level geography when computing geography full names
* Add optional long_name attribute to geo model
* Change profile maps JS to make it easy to override

0.2.3 (15 February 2016)
------------------------

* FEATURE: use Google place search to find places
* FEATURE: new ``country_code`` config setting
* FIX: redirect to slugged URLs when possible
* BREAKING: Data tables now default to one table for all geo levels
* Include deployment file examples in the ``deploy`` directory
* Remove uservoice.js

0.2.2 (15 February 2016)
------------------------

* Initial release
