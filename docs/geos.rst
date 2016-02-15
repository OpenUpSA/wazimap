.. _geos:

Geographies
===========

A geography (or place) is identified uniquely by a level and a code which, when combined, form its geoid. Each level describes a different way of breaking up a country and can be units such as country, province, municipality, state or county. The code is some ID that is unique for that level, either a number or a string.

Some example geoids are:

* ``province-WC``: the Western Cape province in South Africa
* ``country-KE``: Kenya
* ``ward-19100057``: ward 19100057 in Cape Town, South Africa
* ``county-1``: the Mombasa county in Kenya

Geographies are stored in the ``wazimap_geographies`` table using the ``Geography`` Django model.

.. autoclass:: wazimap.models.Geography
    :members: geo_level, geo_code, name, square_kms, parent_level, parent_code

Adding Geographies
------------------

The geography database table looks something like the following. It's generally easiest to import this data using PostgreSQL's CSV import support.

========= ======== ======= ==== ============ ===========
geo_level geo_code name    year parent_level parent_code
========= ======== ======= ==== ============ ===========
country   KE       Kenya   2009
county    1        Mombasa 2009 country      KE
county    2        Kwale   2009 country      KE
county    3        Kilifi  2009 country      KE
========= ======== ======= ==== ============ ===========

Maps and boundary data
----------------------

TODO:
