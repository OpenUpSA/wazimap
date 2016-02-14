from importlib import import_module
import sys

from django.utils import six
from django.apps import AppConfig, apps as django_apps


class WazimapConfig(AppConfig):
    name = 'wazimap'
    verbose_name = "Wazimap"

    def ready(self):
        self.load_tables()

    def load_tables(self):
        """ Search installed apps for tables.py and import it.
        This gives child Wazimap applications a chance to declare
        their tables.
        """
        for app in django_apps.get_app_configs():
            try:
                import_module(app.name + '.tables')
            except ImportError as e:
                if e.message != 'No module named tables':
                    six.reraise(ImportError, ImportError(e.message), sys.exc_info()[2])
