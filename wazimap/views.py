from itertools import chain
import json
import urllib

from django.conf import settings
from django.core.serializers.json import DjangoJSONEncoder
from django.utils.safestring import SafeString
from django.utils.module_loading import import_string
from django.http import HttpResponse, Http404, HttpResponseBadRequest
from django.views.generic import View, TemplateView
from django.shortcuts import redirect

from census.views import GeographyDetailView as BaseGeographyDetailView, LocateView as BaseLocateView, render_json_to_response

from wazimap.geo import geo_data, LocationNotFound
from wazimap.profiles import enhance_api_data
from wazimap.data.tables import get_datatable
from wazimap.data.utils import dataset_context, get_page_releases
from wazimap.data.download import DownloadManager
from wazimap.models import FieldTable, SimpleTable


def render_json_error(message, status_code=400):
    """ Utility method for rendering a view's data to JSON response.
    """
    result = json.dumps({'error': message}, indent=4)
    response = HttpResponse(result, content_type='application/javascript')
    response.status_code = status_code
    return response


class HomepageView(TemplateView):
    template_name = 'homepage.html'

    def get_context_data(self, *args, **kwargs):
        return {
            'root_geo': geo_data.root_geography(),
        }


class GeographyDetailView(BaseGeographyDetailView):
    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, *args, **kwargs):
        request = args[0]
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)

        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(self.geo_code, self.geo_level, version)
        except (ValueError, LocationNotFound):
            raise Http404

        # check slug
        if self.adjust_slugs and (kwargs.get('slug') or self.geo.slug):
            if kwargs['slug'] != self.geo.slug:
                kwargs['slug'] = self.geo.slug
                url = '/profiles/%s-%s-%s?%s' % (self.geo_level, self.geo_code, self.geo.slug, urllib.parse.urlencode(request.GET))
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, *args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.WAZIMAP.get('profile_builder', None)
        self.profile_name = settings.WAZIMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError("You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)

        year = self.request.GET.get('release', geo_data.primary_release_year(self.geo))
        if settings.WAZIMAP['latest_release_year'] == year:
            year = 'latest'

        with dataset_context(year=year):
            profile_data = profile_method(self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()
        profile_data['primary_releases'] = get_page_releases(
            settings.WAZIMAP['primary_dataset_name'], self.geo, year)

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(json.dumps(profile_data, cls=DjangoJSONEncoder))

        page_context.update({
            'profile_data_json': profile_data_json
        })

        # is this a head-to-head view?
        page_context['head2head'] = 'h2h' in self.request.GET

        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass

    def get_template_names(self):
        return ['profile/profile_detail_%s.html' % self.profile_name, 'profile/profile_detail.html']


class GeographyJsonView(GeographyDetailView):
    """ Return geo profile data as json. """
    adjust_slugs = False
    default_geo_version = settings.WAZIMAP.get('legacy_embed_geo_version')

    def dispatch(self, *args, **kwargs):
        return super(GeographyJsonView, self).dispatch(*args, **kwargs)

    def get(self, request, *args, **kwargs):
        context = self.get_context_data(**kwargs)
        return HttpResponse(context['profile_data_json'], content_type='application/javascript')


class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        geo_levels = request.GET.get('geolevels', None)
        geo_version = request.GET.get('geo_version', None)
        if geo_levels:
            geo_levels = [lev.strip() for lev in geo_levels.split(',')]
            geo_levels = [lev for lev in geo_levels if lev]

        if 'q' in request.GET:
            search_term = request.GET['q']
            places = geo_data.get_locations(search_term, geo_levels, geo_version)
            return render_json_to_response(
                {'results': [p.as_dict() for p in places]}
            )

        elif 'coords' in request.GET and ',' in request.GET['coords']:
            lat, lon = self.request.GET['coords'].split(',', 1)
            try:
                lat = float(lat)
                lon = float(lon)
            except ValueError as e:
                return HttpResponseBadRequest('bad parameter: %s' % e.message)

            places = geo_data.get_locations_from_coords(latitude=lat, longitude=lon, levels=geo_levels, version=geo_version)
            return render_json_to_response({'results': [p.as_dict() for p in places]})

        else:
            return HttpResponseBadRequest('"q" or "coords" parameter is required')


class LocateView(BaseLocateView):
    def get_context_data(self, *args, **kwargs):
        page_context = {}
        lat = self.request.GET.get('lat', None)
        lon = self.request.GET.get('lon', None)

        if lat and lon:
            version = self.request.GET.get('geo_version', None)
            places = geo_data.get_locations_from_coords(latitude=lat, longitude=lon, version=version)
            page_context.update({
                'location': {
                    'lat': lat,
                    'lon': lon
                },
                'places': places
            })

        return page_context


class DataAPIView(View):
    """
    View that provides an API for census table information, mimicking that
    of the Censusreporter API described at https://github.com/censusreporter/census-api#get-10datashowacs

    An example call:

    http://api.censusreporter.org/1.0/data/show/latest?table_ids=B17001&geo_ids=04000US36%2C01000US
    """

    def get(self, request, *args, **kwargs):
        try:
            self.geo_ids = request.GET.get('geo_ids', '').split(',')
            geo_version = request.GET.get('geo_version', None)
            self.data_geos, self.info_geos = self.get_geos(self.geo_ids, geo_version)
        except LocationNotFound as e:
            return render_json_error(e.message, 404)

        try:
            self.table_ids = request.GET.get('table_ids', '').split(',')
            self.tables = [get_datatable(t) for t in self.table_ids]
        except KeyError as e:
            return render_json_error('Unknown table: %s' % e.message, 404)

        # tables should all be from the same dataset
        datasets = set(t.dataset for t in self.tables)
        if len(datasets) > 1:
            return render_json_error("All tables must belong to the same dataset.", 400)
        self.dataset = list(datasets)[0]

        self.year = kwargs['release']
        if settings.WAZIMAP['latest_release_year'] == self.year:
            self.year = 'latest'

        self.available_releases = get_page_releases(
            self.dataset.name, self.data_geos[0], self.year, filter_releases=False)

        self.release = None
        for table in self.tables:
            release = table.get_release(year=self.year)
            if not release:
                return render_json_error("No release %s for table %s." % (kwargs['release'], table.name.upper()), 400)

            # different?
            if self.release and self.release != release:
                return render_json_error("All tables must have the same release.", 400)

            self.release = release

        with dataset_context(year=self.release.year):
            if kwargs.get('action') == 'show':
                return self.show(request)
            if kwargs.get('action') == 'download':
                return self.download(request)

    def show(self, request):
        data = self.get_data(self.data_geos, self.tables)

        tables = {}
        for table in self.tables:
            d = table.as_dict()
            d['columns'] = table.columns()
            tables[table.name.upper()] = d

        return render_json_to_response({
            'release': self.release.as_dict(),
            'other_releases': self.available_releases['other'],
            'tables': tables,
            'data': data,
            'geography': dict((g.geoid, g.as_dict()) for g in chain(self.data_geos, self.info_geos)),
        })

    def download(self, request):
        mgr = DownloadManager()

        fmt = request.GET.get('format', 'csv')
        if fmt not in mgr.DOWNLOAD_FORMATS:
            response = HttpResponse('Unspported format %s. Supported formats: %s' % (fmt, ', '.join(mgr.DOWNLOAD_FORMATS.keys())))
            response.status_code = 400
            return response

        data = self.get_data(self.data_geos, self.tables)
        columns = {table.name: table.columns(release=self.release) for table in self.tables}

        content, fname, mime_type = mgr.generate_download_bundle(self.tables, self.data_geos, self.geo_ids, self.release, columns, data, fmt)

        response = HttpResponse(content, content_type=mime_type)
        response['Content-Disposition'] = 'attachment; filename="%s"' % fname

        return response

    def get_geos(self, geo_ids, geo_version):
        """
        Return a tuple (data_geos, info_geos) of geo objects,
        where data_geos or geos we should get data for, and info_geos
        are geos that we only need to return geo info/metadata for.
        """
        data_geos = []
        info_geos = []

        for geo_id in geo_ids:
            # either country-KE or level|country-KE, which indicates
            # we must break country-KE into +levels+
            if '-' not in geo_id:
                raise LocationNotFound('Invalid geo id: %s' % geo_id)

            level, code = geo_id.split('-', 1)

            if '|' in level:
                # break geo down further
                split_level, level = level.split('|', 1)
                geo = geo_data.get_geography(code, level, geo_version)
                info_geos.append(geo)
                try:
                    data_geos.extend(geo.split_into(split_level))
                except ValueError:
                    raise LocationNotFound('Invalid geo level: %s' % split_level)

            else:
                # normal geo
                data_geos.append(geo_data.get_geography(code, level, geo_version))

        return data_geos, info_geos

    def get_data(self, geos, tables):
        data = {}

        for table in tables:
            for geo_id, table_data in table.raw_data_for_geos(geos).items():
                data.setdefault(geo_id, {})[table.name.upper()] = table_data

        return data


class TableAPIView(View):
    """
    View that lists data tables.
    """
    def get(self, request, *args, **kwargs):
        return render_json_to_response([
            t.as_dict() for t in chain(SimpleTable.objects.all(), FieldTable.objects.all())
        ])


class AboutView(TemplateView):
    template_name = 'about.html'


class HelpView(TemplateView):
    template_name = 'help.html'


class GeographyCompareView(TemplateView):
    template_name = 'profile/head2head.html'

    def get_context_data(self, geo_id1, geo_id2):
        page_context = {
            'geo_id1': geo_id1,
            'geo_id2': geo_id2,
        }

        release = self.request.GET.get('release')
        try:
            level, code = geo_id1.split('-', 1)
            page_context['geo1'] = geo_data.get_geography(code, level)
            page_context['geo1_release_year'] = str(settings.WAZIMAP['primary_release_year'].get(level, release)) if release == settings.WAZIMAP['latest_release_year'] else release

            level, code = geo_id2.split('-', 1)
            page_context['geo2'] = geo_data.get_geography(code, level)
            page_context['geo2_release_year'] = str(settings.WAZIMAP['primary_release_year'].get(level, release)) if release == settings.WAZIMAP['latest_release_year'] else release

        except (ValueError, LocationNotFound):
            raise Http404

        return page_context


class GeoAPIView(View):
    """
    View that lists things about geos. Currently parents and children.
    """
    def get(self, request, geo_id, *args, **kwargs):
        try:
            level, code = geo_id.split('-', 1)
            geo = geo_data.get_geography(code, level)
        except (ValueError, LocationNotFound):
            raise Http404

        parents = [g.as_dict() for g in geo.ancestors()]
        return render_json_to_response(parents)

    def children(self, request, geo_id, *args, **kwargs):
        try:
            level, code = geo_id.split('-', 1)
            geo = geo_data.get_geography(code, level)
        except (ValueError, LocationNotFound):
            raise Http404

        children = [g.as_dict() for g in geo.children()]
        return render_json_to_response(children)


class TableDetailView(TemplateView):
    template_name = 'table/table_detail.html'

    def dispatch(self, *args, **kwargs):
        try:
            self.table = get_datatable(kwargs['table'])
            # There's no dataset context set here, so we use the latest year
            self.release = self.table.get_release(year='latest')
        except KeyError:
            raise Http404

        return super(TableDetailView, self).dispatch(*args, **kwargs)

    def get_context_data(self, *args, **kwargs):
        latest_release_year = self.release.year
        with dataset_context(year=latest_release_year):
            table_columns = self.table.columns()
        return {
            'table': self.table,
            'latest_release_year': latest_release_year,
            'table_columns': table_columns
        }
