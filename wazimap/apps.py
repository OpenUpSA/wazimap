from importlib import import_module
import logging
import os.path

from django.apps import AppConfig, apps as django_apps


class WazimapConfig(AppConfig):
    name = 'wazimap'
    verbose_name = "Wazimap"
    log = logging.getLogger(__name__)

    def ready(self):
        self.check_gdal()
        self.load_tables()

    def check_gdal(self):
        # GDAL is difficult to install, so we make it an optional dependency.
        # Here, we check if it's installed and warn if it isn't.
        from wazimap.geo import HAS_GDAL, gdal_missing
        if HAS_GDAL:
            import osgeo.gdal
            self.log.info("Wazimap found GDAL version %s" % (osgeo.gdal.VersionInfo("RELEASE_NAME")))
        else:
            gdal_missing()

    def load_tables(self):
        """ Search installed apps for tables.py and import it.
        This gives child Wazimap applications a chance to declare
        their tables.
        """
        for app in django_apps.get_app_configs():
            if (os.path.exists(os.path.join(app.path, 'tables.py')) or
                    os.path.exists(os.path.join(app.path, 'tables/__init__.py'))):
                import_module(app.name + '.tables')
