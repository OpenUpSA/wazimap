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

You need to tell Wazimap how to display your stats on a place's profile page. 

The file you want to override is ``templates/profile/profile_detail.html``, you can `see what it looks like in the repo <https://github.com/Code4SA/wazimap/blob/master/wazimap/templates/profile/profile_detail.html>`_. You generally only need to change the ``profile_detail`` block.

Create a new file in your project called ``templates/profile/profile_detail.html`` that extends the existing template and provides
your new content for the ``profile_detail`` block::

    {% extends 'profile/profile_detail.html' %}

    {% block profile_detail %}
    ... your stats go here ...
    {% endblock %}

If you reload your site you'll see the homepage has your new content. Django uses this template instead of Wazimap's version,
relying on Wazimap for the blocks you don't override. There are lots of other blocks you can change, take a look at
the original file for more ideas.

.. seealso:: There's more information on changing Wazimap templates in :ref:`customising`.

You must still provide the content that goes into each stats block. The easiest right now is to see how other countries do it, such as
`South Africa's default census profile <https://github.com/Code4SA/wazimap-za/blob/master/wazimap_za/templates/profile/profile_detail_census.html>`_.

Profile Page Charts
-------------------

The Django template for the profile page creates empty slots for each chart, which are filled by Javascript when the page loads. These placeholders look something like this:

.. code-block:: html

    <div class="column-half" id="chart-histogram-demographics-age-distribution" data-stat-type="scaled-percentage" data-chart-title="Population by age range"></div>

The ``column-*`` class isn't really important here; that's just a structural setting that gives the block an appropriate amount of width that can be governed with media queries. What we really care about are the ``id`` and ``data-*`` attribute values. The ``id`` value tells the constructor what type of chart to draw and which data to use.The ``data`` attributes allow you to optionally make changes to how the chart is drawn.

Chart ID
........

The ``id`` tells Wazimap everything it needs to know to create this chart from the profile data. The id is broken into a few parts::

    chart-<chartType>-<chartData>

The ``chartType``, in our example case ``histogram``, tells Wazimap the type of chart to draw. Wazimap supports:

* pie
* column
* grouped_column
* histogram
* bar
* grouped_bar

The ``chartData`` provides the path to the data that should fill this chart. Wazimap starts at the top, in this case `demographics`, and then drills down based on the rest of the keys: `demographics` > `age` > `distribution`. That's where Wazimap expects to find the data to draw the chart.

Data Attributes
...............

You can use optional data attributes to change how the chart is shown.

Use ``data-chart-title`` to specify a title to place above the chart.

Use ``data-initial-sort`` to change how pie charts are sorted. Determines which category to highlight when the chart is drawn. Using ``data-initial-sort="-value"`` will display the highest data value in the chart first. Otherwise the first value in the chart data will be used.

Use ``data-qualifier`` to add a trailing line below the chart, prepended with an "*" character. This is useful when charts require a little extra context.

Use ``data-stat-type`` to provide formatting hints for the chart's language and display. Standard chart behavior may be overriden with these values:

* **percentage**: Adds a "%" character after figures in the chart. Sets chart domain to 0-100. Uses "rate" in comparison sentences.
* **scaled-percentage**: Does the same things as "percentage," but also scales the chart so that the highest category value takes up the full vertical space available.
* **dollar**: Adds a "$" character before figures in the chart. Uses "amount" in comparison sentences.
