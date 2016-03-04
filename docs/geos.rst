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

Level Hierarchy
---------------

The geography levels form a hierarchy with a single root geography (generally a country).
The ``levels`` :ref:`configuration option <config>` describes each level in the hierarchy.

Maps and boundary data
----------------------

Wazimap needs to know boundary information for each geography so that it can draw shapes
on maps and include the boundaries in download formats such as KML and GeoJSON.

The easiest way to provide this information is as a GeoJSON ``FeatureCollection``. You can
either have one big file, or one file for each geo level.

1. Create a ``.geojson`` file with single ``FeatureCollection`` object. Each Feature in the
   collection must be a geography in Wazimap. It must have the following attributes:

   * name: the name of the place (same as the geography name)
   * level: the geography level of the place, same as the ``geo_level`` in the database
   * code: the code for the geography, same as the ``geo_code`` in the database
   * geoid: the unique id for this geography, which must be the ``level-code``.

2. Store this file in your Django app's ``static`` folder, such as ``wazimap_ke/static/geo/``.

3. Set the ``geometry_data`` :ref:`configuration option <config>` in your ``settings.py`` to indicate
   where each level's geojson file is stored, relative to you ``static`` folder. For example::

       geometry_data = {
         'country': 'geo/country.geojson',
         'province': 'geo/province.geojson',
       }

4. GeoJSON files can be quite big for geographies that share lots of boundaries. If you want an
   improvement in speed and size, **also** convert each file to a TopoJSON file using the
   `topojson NPM tool <https://www.npmjs.com/package/topojson>`_. Then place these
   files **alongside** your ``geojson`` files and change your ``geometry_data`` settings
   to point to the ``.topojson`` files: ::

       geometry_data = {
         'country': 'geo/country.topojson',
         'province': 'geo/province.topojson',
       }

   .. note::
   
       It's important to have both the TopoJSON and GeoJSON formats. Wazimap will look for
       the GeoJSON format when loading the boundary information for use on the server,
       such as for geolocation. This is necessary because Python doesn't have a good
       TopoJSON library.

Geo Data API
------------

Wazimap makes geography data available through the ``wazimap.geo.geo_data`` object, which is
detailed below.

The class used for this object :ref:`can be configured <config>` using the ``geodata`` setting.
This allows you to change this behaviour if you need to.


.. autoclass:: wazimap.geo.GeoData
    :members:
