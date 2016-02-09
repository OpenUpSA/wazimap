# Django settings for Wazimap
import os

dirname = os.path.dirname
# TODO: XXX?
PROJECT_ROOT = os.path.abspath(os.path.join(dirname(__file__), "..", ".."))

DEBUG = os.environ.get('DJANGO_DEBUG', 'true') == 'true'
TEMPLATE_DEBUG = DEBUG

ROOT_URLCONF = 'wazimap.urls'
WSGI_APPLICATION = 'wazimap.wsgi.application'

ADMINS = (('Greg Kempe', 'greg@code4sa.org'),)
MANAGERS = ADMINS

# TODO: XXX: sqlalchemy url?
DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://wazimap:wazimap@localhost/wazimap')
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': '%s/census_app_db' % PROJECT_ROOT,
    },
}

INSTALLED_APPS = [
    'django.contrib.auth',
    'django.contrib.admin',
    'django.contrib.contenttypes',
    'django.contrib.humanize',
    'django.contrib.messages',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.staticfiles',
    'wazimap.apps.WazimapConfig',
    'census',
]

ALLOWED_HOSTS = ['*']
TIME_ZONE = 'Africa/Johannesburg'
LANGUAGE_CODE = 'en-za'
SITE_ID = 1
USE_I18N = False
USE_L10N = True
USE_THOUSAND_SEPARATOR = True
FORMAT_MODULE_PATH = 'formats'
USE_TZ = True

# SECURITY WARNING: keep the secret key used in production secret!
if DEBUG:
    SECRET_KEY = '!%j-u4&(q8qu4@dq=ukth27+q!v-!h^jck14bf=spqht847$4q'
else:
    SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY')


API_URL = None


# Static files
MEDIA_ROOT = ''
MEDIA_URL = ''

STATIC_ROOT = PROJECT_ROOT + '/static/'
STATIC_URL = '/static/'

STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
)
#STATICFILES_STORAGE = 'pipeline.storage.NonPackagingPipelineCachedStorage'


# Templates
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
)
TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.messages.context_processors.messages',
    'django.core.context_processors.media',
    'django.core.context_processors.request',
    'django.core.context_processors.static',
    'django.contrib.auth.context_processors.auth',
    'census.context_processors.api_url',
    'wazimap.context_processors.wazimap_settings',
)


MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
)


# Databases and caches
if DEBUG:
    CACHES = {
        'default': {
            'BACKEND': 'django.core.cache.backends.dummy.DummyCache',
        }
    }
else:
    CACHES = {
        'default': {
            'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
            'LOCATION': '/var/tmp/wazimap_cache',
        }
    }


LOGGING = {
    'version': 1,
    'disable_existing_loggers': True,
    'formatters': {
        'verbose': {
            'format': '%(asctime)s %(levelname)s %(module)s %(process)d %(thread)d %(message)s'
        },
    },
    'handlers': {
        'console': {
            'level': 'DEBUG',
            'class': 'logging.StreamHandler',
            'formatter': 'verbose'
        },
    },
    'loggers': {
        '': {
            'handlers': ['console'],
            'level': 'ERROR',
        },
        'census': {
            'level': 'DEBUG' if DEBUG else 'INFO',
        },
        'django': {
            'level': 'DEBUG' if DEBUG else 'INFO',
        },
        'wazimap': {
            'level': 'DEBUG' if DEBUG else 'INFO',
        },
    }
}


# Wazimap-specific settings
WAZIMAP = {
    # The full name of the website
    'name': 'Wazimap',
    # Twitter handle
    'twitter': '@Wazimap',
    # Google Analytics tracking id (ua-xxxxx-x)
    'ga_tracking_id': '',
    # How many seconds should cacheable Wazimap pages be cached for?
    'cache_secs': 60 * 60,
}

# XXX TODO remove this
WARD_SEARCH_ENDPOINT = 'http://wards.code4sa.org/'
