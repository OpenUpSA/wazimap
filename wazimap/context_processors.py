from django.conf import settings


def wazimap_settings(request):
    from wazimap.geo import geo_data

    return {
        'WAZIMAP': settings.WAZIMAP,
        'geo_data': geo_data
    }
