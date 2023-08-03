from django.conf import settings
from django.conf.urls import url, include
from django.contrib import admin
from django.urls import reverse_lazy
from django.http import HttpResponse
from django.views.decorators.cache import cache_page
from django.views.generic.base import TemplateView, RedirectView

from .views import (HomepageView, GeographySearchView,
    TableDetailView, TableSearchView, GeoSearch,
    HealthcheckView, DataView, TopicView, ExampleView, Elasticsearch)

from .wazi import (GeographyDetailView, GeographyJsonView, WardSearchProxy, PlaceSearchJson,
        LocateView, DataAPIView, TableAPIView, AboutView, GeographyCompareView)

admin.autodiscover()

STANDARD_CACHE_TIME = 60*60 # 60-minute cache
COMPARISON_FORMATS = 'map|table|distribution'
BLOCK_ROBOTS = getattr(settings, 'BLOCK_ROBOTS', False)

geo_levels = 'ward|municipality|province|country'


urlpatterns = [
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
        regex   = '^profiles/(?P<geography_id>(%s)-[\w]+)/$' % geo_levels,
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyDetailView.as_view()),
        kwargs  = {},
        name    = 'geography_detail',
    ),

    # e.g. /profiles/province-GT.json
    url(
        regex   = '^(embed_data/)?profiles/(?P<geography_id>(%s)-[\w]+)\.json$' % geo_levels,
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyJsonView.as_view()),
        kwargs  = {},
        name    = 'geography_json',
    ),

    # e.g. /compare/province-GT/vs/province-WC/
    url(
        regex   = '^compare/(?P<geo_id1>(%s)-[\w]+)/vs/(?P<geo_id2>(%s)-[\w]+)/$' % (geo_levels, geo_levels),
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

    #url(
    #    regex   = '^tables/(?P<table>[a-zA-Z0-9]+)/$',
    #    view    = cache_page(STANDARD_CACHE_TIME)(TableDetailView.as_view()),
    #    kwargs  = {},
    #    name    = 'table_detail',
    #),

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
        regex   = '^data/(?P<format>%s)/$' % COMPARISON_FORMATS,
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
            "User-agent: *\n%s: /" % ('Disallow' if BLOCK_ROBOTS else 'Allow') ,
            mimetype="text/plain"
        )
    ),

    url(
        regex   = '^place-search/json/$',
        view    = PlaceSearchJson.as_view(),
        kwargs  = {},
        name    = 'place_search_json',
    ),

    url(
        regex   = '^ward-search/json/$',
        view    = WardSearchProxy.as_view(),
        kwargs  = {},
        name    = 'ward_search_json',
    ),

    ## LOCAL DEV VERSION OF API ##

    url(
        regex   = '^geo-search/$',
        view    = GeoSearch.as_view(),
        kwargs  = {},
        name    = 'geo_search',
    ),

    url(
        regex   = '^elasticsearch/$',
        view    = Elasticsearch.as_view(),
        kwargs  = {},
        name    = 'elasticsearch',
    ),
    ## END LOCAL DEV VERSION OF API ##
]
