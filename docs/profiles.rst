.. _profiles:

The Profile Page
================

You need to tell Wazimap what data to show on a place's profile page, and how to show it.

The Profile Builder Function
----------------------------

When Wazimap builds the profile page for a place, it calls the function defined the ``profile_builder``
:ref:`configuration setting <config>`. This function must return a specially-formatted
dict-like structure that contains all the information that will be shown on the profile page.

Create a ``profiles.py`` file in your project folder and add a function ``get_profile`` like in the example
below. Remember to set the ``profile_builder`` setting in your ``settings.py`` to the dotted path to this
function, for example: ::

    WAZIMAP['profile_builder'] = 'wazimap_ex.profiles.get_profile'

Here's a simple example of a profile builder: ::

    from wazimap.data.utils import get_session, get_stat_data

    def get_profile(geo_code, geo_level, profile_name=None):
        # get a SQLAlchemy database session
        session = get_session()
        data = {}

        try:
            data['demographics'] = get_demographics_profile(geo_code, geo_level, session)
            # ... load other sections here

            return data
        finally:
            # tidy up the session
            session.close()

    def get_demographics_profile(geo_code, geo_level, session)
        # get the number of people for each sex
        sex_dist_data, total_pop = get_stat_data('sex', geo_level, geo_code, session)
        return {
            'sex_distribution': sex_dist_data,
        }

In ``get_profile`` we simply get a database session and then call ``get_demographics_profile`` to do the
heavy lifting.

In ``get_demographics_profile`` we use the ``get_stat_data`` function to get data on the place's population
for the field ``sex`` from a relevant Field Table. It does all the work of
formatting the results correctly, and we return it under the key ``sex_distribution``.

All that data is then passed into the Profile Page template where you choose how to show the data.

Get Stat Data for Field Tables
------------------------------

The ``get_stat_data`` function is powerful and flexible. It finds the appropriate Field Table for the
fields you want, fetches data, remaps fields if you need it, calculates percentages if necessary,
and adds the metadata required by the profile page.

.. automethod:: wazimap.data.utils.get_stat_data

Get Stat Data for Simple Tables
-------------------------------

If you're working with Simple Tables, you'll want to use ``get_datatable`` and ``SimpleTable.get_stat_data``.

.. automethod:: wazimap.data.tables.SimpleTable.get_stat_data

The Profile Page Template
-------------------------

TODO
