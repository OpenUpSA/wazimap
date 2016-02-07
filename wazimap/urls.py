from django.conf import settings
from django.conf.urls import patterns
from django.conf.urls.static import static
# from django.contrib import admin
# admin.autodiscover()

from census.urls import urlpatterns as cr_urlpatterns

urlpatterns = patterns('')
urlpatterns += cr_urlpatterns

handler500 = 'census.views.server_error'

# TODO: is this needed when using modern django and whitenoise?
if settings.DEBUG:
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns
    urlpatterns += staticfiles_urlpatterns()
    urlpatterns += static(settings.EMBED_DATA_URL, document_root=settings.EMBED_DATA_ROOT)
