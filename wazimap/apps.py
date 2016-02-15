from importlib import import_module
import os.path

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
            if (os.path.exists(os.path.join(app.path, 'tables.py')) or
                    os.path.exists(os.path.join(app.path, 'tables/__init__.py'))):
                import_module(app.name + '.tables')
