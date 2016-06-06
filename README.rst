Wazimap
=======

.. image:: https://badge.fury.io/py/wazimap.svg
    :target: http://badge.fury.io/py/wazimap

Wazimap is a Django application for exploring census and other similar data. It makes it easy to understand a place
through the eyes of the data, and to explore data across a range of places. It is most suited for census data
but can easily be used with other data that is similarly focused on places in a country.

Check out `Wazimap South Africa <http://wazimap.co.za>`_ and `Wazimap Kenya <http://kenya.wazimap.org>`_ to
get an idea of what Wazimap is about.

Wazimap is a fork of the excellent `Censusreporter <https://censusreporter.org>`_ project which was funded by a
`Knight News Challenge grant <http://www.niemanlab.org/2012/10/knight-funding-expands-ires-journalist-friendly-census-site/>`_.
You can also find `Censusreporter on GitHub <https://github.com/censusreporter/censusreporter>`_.

Wazimap builds on Censusreporter and makes it easier to re-use. Wazimap was originally built by
`Code for South Africa <http://code4sa.org>`_ with the support of `Media Monitoring Africa <http://www.mediamonitoringafrica.org/>`_.
It is maintained by Code for South Africa.

* Wazimap is on Twitter as `@Wazimap <https://twitter.com/@Wazimap>`_.
* Read the `full Wazimap documentation <http://wazimap.readthedocs.org/en/latest/>`_.

Using Wazimap
=============

Read the `full Wazimap documentation <http://wazimap.readthedocs.org/en/latest/>`_ to get started.

Releasing a New Version
-----------------------

1. Update VERSION appropriately
2. Update the CHANGES.rst
3. Commit and push to github
4. Release to PyPI::

    python setup.py sdist bdist_wheel upload

License
=======

Wazimap code is licensed under the MIT License.

Wazimap branding is copyright Media Monitoring Africa (MMA) and cannot be used without permission.
