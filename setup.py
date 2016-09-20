from setuptools import setup, find_packages
from codecs import open
from os import path, environ

here = path.abspath(path.dirname(__file__))
on_rtd = environ.get('READTHEDOCS', None) == 'True'

# Get the long description from the relevant file
with open(path.join(here, 'README.rst'), encoding='utf-8') as f:
    long_description = f.read()

with open(path.join(here, 'VERSION')) as f:
    version = f.read().strip()

install_requires = [
    'Django>=1.8.0,<1.10',
    'SQLAlchemy>=0.9.4',
    'boto>=2.27.0',
    'django-cors-headers>=1.1.0',
    'dj-database-url>=0.4.0',
    'django-pipeline>=1.6.4',
    'ecdsa>=0.11',
    'futures>=3.0.4',
    'paramiko>=1.12.3,<2',
    'psycopg2>=2.5.2',
    'requests>=1.2.0',
    'unicodecsv>=0.9.4',
    'whitenoise>=1.0.6',
    'wsgiref>=0.1.2',
]

if not on_rtd:
    # these aren't available when building docs for readthedocs.org
    install_requires += [
        'GDAL>=1.11.0,<2.0',
        'Shapely>=1.5.13',
    ]

setup(
    name='wazimap',

    # Versions should comply with PEP440.  For a discussion on single-sourcing
    # the version across setup.py and the project code, see
    # https://packaging.python.org/en/latest/single_source_version.html
    version=version,

    description='A Django application for exploring census and other place-specific data',
    long_description=long_description,

    # The project's main homepage.
    url='https://github.com/Code4SA/wazimap',

    # Author details
    author='Code for South Africa',
    author_email='greg@code4sa.org',

    # Choose your license
    license='MIT',

    # See https://pypi.python.org/pypi?%3Aaction=list_classifiers
    classifiers=[
        # How mature is this project? Common values are
        #   3 - Alpha
        #   4 - Beta
        #   5 - Production/Stable
        'Development Status :: 4 - Beta',

        # Indicate who your project is intended for
        'Intended Audience :: Developers',

        # Pick your license as you wish (should match "license" above)
        'License :: OSI Approved :: MIT License',

        # Specify the Python versions you support here. In particular, ensure
        # that you indicate whether you support Python 2, Python 3 or both.
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
    ],

    # You can just specify the packages manually here if your project is
    # simple. Or you can use find_packages().
    packages=find_packages(),

    include_package_data=True,

    # List run-time dependencies here.  These will be installed by pip when
    # your project is installed. For an analysis of "install_requires" vs pip's
    # requirements files see:
    # https://packaging.python.org/en/latest/requirements.html
    install_requires=install_requires,

    setup_requires=[
        "setuptools_git >= 1.0",
    ],

    # List additional groups of dependencies here (e.g. development
    # dependencies). You can install these using the following syntax,
    # for example:
    # $ pip install -e .[dev,test]
    extras_require={
        'dev': ['nose', 'flake8'],
        'test': ['nose', 'flake8'],
    },
)
