Wazimap Change Log
==================

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
