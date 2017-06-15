.. _customising:

Customising Wazimap
===================

Overriding Templates
--------------------

The easiest way to change page layouts and content is to add your own
templates, as you would for any Django application. Most pages have ``blocks``
which make it simple to override just specific parts of a page.

1. Find the existing template that you want to change by looking in the ``wazimap/templates`` directory of the wazimap package. You can also `browse the repo <https://github.com/Code4SA/wazimap/tree/master/wazimap/templates>`_.
2. Create an empty file with the same name inside your project's ``templates`` directory.
3. Use ``{% extends %}`` to tell Django that your template extends the original Wazimap template
4. Override the page's blocks to make your changes.

In the next section we provide an example.

Changing the homepage
---------------------

Let's say you'd like to change the homepage. You're happy with the header and the footer, but would like to change some of the text in between.

The file you want to override is ``templates/homepage.html``, you can `see what it looks like in the repo <https://github.com/Code4SA/wazimap/blob/master/wazimap/templates/homepage.html>`_. You want to change the text in the ``homepage_detail`` block.

Create a new file in your project called ``templates/homepage.html`` that extends the existing template and provides
your new content for the ``homepage_detail`` block::

    {% extends 'homepage.html' %}

    {% block homepage_detail %}
    your new content!
    {% endblock %}

If you reload your site you'll see the homepage has your new content. Django uses this template instead of Wazimap's version,
relying on Wazimap for the blocks you don't override.

.. seealso:: There's more information on changing profile page template in :ref:`profiles`.

Changing CSS theme
------------------

In addition to providing your own CSS files by overriding the templates, you can also override the
SCSS variables that control the Wazimap colour scheme (theme). This is the fastest and easiest
way to match Wazimap's colours to your brand.

.. note:: If you customise the CSS using this method, you MUST call ``python manage.py compilescss`` before running ``collectstatic`` when you deploy your application.

Create a new file in your project called ``static/css/_custom.scss``. In it, override the `default Wazimap colour variables <https://github.com/Code4SA/wazimap/blob/master/wazimap/static/css/_variables.scss>`.

These are the most important ones:

* ``$brand-primary-color``: a bright primary colour
* ``$brand-secondary-color``: a darker, secondary colour. Variations on this colour are used throughout the site.
* ``$brand-secondary-{lightest, lighter, darkest, darker}-color``: lighter and darker shades of the secondary colour. We recommend simply lightening or darkening your ``$brand-secondary-color`` by 10% and 20%.
* ``$general-bg-color`` and ``$general-bg-{lightest, lighter, darkest, darker}-color``: general background colours and lighter and darker shades. We recommend simply lightening or darkening your ``$general-bg-color`` by 10% and 20%.
