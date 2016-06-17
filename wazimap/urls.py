from django.conf import settings
from django.conf.urls import url, patterns
from django.contrib import admin
from django.core.urlresolvers import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page
from django.views.generic.base import RedirectView, TemplateView

from census.views import HealthcheckView, DataView, ExampleView

from wazimap.views import (HomepageView, GeographyDetailView, GeographyJsonView, PlaceSearchJson,
                           LocateView, DataAPIView, TableAPIView, AboutView, GeographyCompareView,
                           GeoAPIView, TableDetailView)


admin.autodiscover()
handler500 = 'census.views.server_error'

STANDARD_CACHE_TIME = settings.WAZIMAP['cache_secs']
EMBED_CACHE_TIME = settings.WAZIMAP.get('embed_cache_secs', STANDARD_CACHE_TIME)


urlpatterns = patterns('',
    url(
        regex   = '^$',
        view    = cache_page(STANDARD_CACHE_TIME)(HomepageView.as_view()),
        kwargs  = {},
        name    = 'homepage',
    ),

    url(
        regex   = '^about$',
        view    = cache_page(STANDARD_CACHE_TIME)(AboutView.as_view()),
        kwargs  = {},
        name    = 'about',
    ),

    # e.g. /profiles/province-GT/
    url(
        regex   = '^profiles/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    # embeds - handles the legacy static/iframe.html URL to generate the page on the fly
    #          so that settings can be injected
    url(
        regex   = '^embed/iframe.html$',
        view    = cache_page(EMBED_CACHE_TIME)(TemplateView.as_view(template_name="embed/iframe.html")),
        kwargs  = {},
        name    = 'embed_iframe',
    ),

    # e.g. /profiles/province-GT.json
    url(
        regex   = '^(embed_data/)?profiles/(?P<geography_id>\w+-\w+)(-(?P<slug>[\w-]+))?\.json$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyJsonView.as_view()),
        kwargs  = {},
        name    = 'geography_json',
    ),

    # e.g. /compare/province-GT/vs/province-WC/
    url(
        regex   = '^compare/(?P<geo_id1>\w+-\w+)/vs/(?P<geo_id2>\w+-\w+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyCompareView.as_view()),
        kwargs  = {},
        name    = 'geography_compare',
    ),

    # Custom data api
    url(
        regex   = '^api/1.0/data/show/latest$',
        view    = cache_page(STANDARD_CACHE_TIME)(DataAPIView.as_view()),
        kwargs  = {'action': 'show'},
        name    = 'api_show_data',
    ),

    # download API
    url(
        regex   = '^api/1.0/data/download/latest$',
        view    = DataAPIView.as_view(),
        kwargs  = {'action': 'download'},
        name    = 'api_download_data',
    ),

    # table search API
    url(
        regex   = '^api/1.0/table$',
        view    = cache_page(STANDARD_CACHE_TIME)(TableAPIView.as_view()),
        kwargs  = {},
        name    = 'api_list_tables',
    ),

    # geo API
    url(
        regex   = '^api/1.0/geo/(?P<geo_id>\w+-\w+)/parents$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeoAPIView.as_view()),
        kwargs  = {},
        name    = 'api_geo_parents',
    ),

    # TODO enable this see: https://github.com/Code4SA/censusreporter/issues/31
    #url(
    #    regex   = '^profiles/$',
    #    view    = cache_page(STANDARD_CACHE_TIME)(GeographySearchView.as_view()),
    #    kwargs  = {},
    #    name    = 'geography_search',
    #),

    # e.g. /table/B01001/
    #url(
    #    regex   = '^tables/B23002/$',
    #    view    = RedirectView.as_view(url=reverse_lazy('table_detail',kwargs={'table':'B23002A'})),
    #    kwargs  = {},
    #    name    = 'redirect_B23002',
    #),

    #url(
    #    regex   = '^tables/C23002/$',
    #    view    = RedirectView.as_view(url=reverse_lazy('table_detail',kwargs={'table':'C23002A'})),
    #    kwargs  = {},
    #    name    = 'redirect_C23002',
    #),

    url(
        regex   = '^tables/(?P<table>[a-zA-Z0-9_-]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(TableDetailView.as_view()),
        kwargs  = {},
        name    = 'table_detail',
    ),

    #url(
    #    regex   = '^tables/$',
    #    view    = cache_page(STANDARD_CACHE_TIME)(TableSearchView.as_view()),
    #    kwargs  = {},
    #    name    = 'table_search',
    #),

    url(
        regex   = '^data/$',
        view    = RedirectView.as_view(url=reverse_lazy('table_search')),
        kwargs  = {},
        name    = 'table_search_redirect',
    ),

    # e.g. /table/B01001/
    url(
        regex   = '^data/(?P<format>map|table|distribution)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(DataView.as_view()),
        kwargs  = {},
        name    = 'data_detail',
    ),

    #url(
    #    regex   = '^topics/$',
    #    view    = cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
    #    kwargs  = {},
    #    name    = 'topic_list',
    #),

    #url(
    #    regex   = '^topics/race-latino/?$',
    #    view    = RedirectView.as_view(url=reverse_lazy('topic_detail', kwargs={'topic_slug': 'race-hispanic'})),
    #    name    = 'topic_latino_redirect',
    #),

    #url(
    #    regex   = '^topics/(?P<topic_slug>[-\w]+)/$',
    #    view    = cache_page(STANDARD_CACHE_TIME)(TopicView.as_view()),
    #    kwargs  = {},
    #    name    = 'topic_detail',
    #),

    url(
        regex   = '^examples/(?P<example_slug>[-\w]+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(ExampleView.as_view()),
        kwargs  = {},
        name    = 'example_detail',
    ),

    #url(
    #    regex   = '^glossary/$',
    #    view    = cache_page(STANDARD_CACHE_TIME)(TemplateView.as_view(template_name="glossary.html")),
    #    kwargs  = {},
    #    name    = 'glossary',
    #),

    url(
        regex   = '^locate/$',
        view    = cache_page(STANDARD_CACHE_TIME)(LocateView.as_view(template_name="locate/locate.html")),
        kwargs  = {},
        name    = 'locate',
    ),

    url(
        regex   = '^healthcheck$',
        view    = HealthcheckView.as_view(),
        kwargs  = {},
        name    = 'healthcheck',
    ),
    
    url(
        regex = '^robots.txt$',
        view = lambda r: HttpResponse(
            "User-agent: *\n%s: /" % ('Disallow' if getattr(settings, 'BLOCK_ROBOTS', False) else 'Allow') ,
            content_type="text/plain"
        )
    ),

    url(
        regex   = '^place-search/json/$',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'place_search_json',
    ),

    # LOCAL DEV VERSION OF API ##
    # url(
    #     regex   = '^geo-search/$',
    #     view    = GeoSearch.as_view(),
    #     kwargs  = {},
    #     name    = 'geo_search',
    # ),
    #
    # url(
    #     regex   = '^elasticsearch/$',
    #     view    = Elasticsearch.as_view(),
    #     kwargs  = {},
    #     name    = 'elasticsearch',
    # ),
    # END LOCAL DEV VERSION OF API ##
)
