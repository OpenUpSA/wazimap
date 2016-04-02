Wazimap Change Log
==================

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
