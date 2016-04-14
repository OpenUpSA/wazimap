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
