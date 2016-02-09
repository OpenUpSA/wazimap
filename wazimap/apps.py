from django.apps import AppConfig


class WazimapConfig(AppConfig):
    name = 'wazimap'
    verbose_name = "Wazimap"

    def ready(self):
        from wazimap.geo import setup
        setup()
