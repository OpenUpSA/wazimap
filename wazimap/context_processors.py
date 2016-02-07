from django.conf import settings


def wazimap_settings(request):
    return {'WAZIMAP': settings.WAZIMAP}
