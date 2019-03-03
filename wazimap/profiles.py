from collections import OrderedDict
from itertools import repeat

from census.profile import find_dicts_with_key
from census.utils import get_ratio

from wazimap.geo import geo_data


def enhance_api_data(api_data):
    dict_list = find_dicts_with_key(api_data, 'values')

    for d in dict_list:
        raw = {}
        enhanced = {}
        geo_value = d['values']['this']
        num_comparatives = 2

        # create our containers for transformation
        for obj in ['values', 'error', 'numerators', 'numerator_errors']:
            if obj not in d:
                raw[obj] = dict(zip(geo_data.comparative_levels, repeat(0)))
            else:
                raw[obj] = d[obj]
            enhanced[obj] = OrderedDict()
        enhanced['index'] = OrderedDict()
        enhanced['error_ratio'] = OrderedDict()
        comparative_sumlevs = []

        # enhance
        for sumlevel in geo_data.comparative_levels:
            # add the index value for comparatives
            if sumlevel in raw['values']:
                enhanced['values'][sumlevel] = raw['values'][sumlevel]
                enhanced['index'][sumlevel] = get_ratio(geo_value, raw['values'][sumlevel])

                # add to our list of comparatives for the template to use
                if sumlevel != 'this':
                    comparative_sumlevs.append(sumlevel)

            # add the moe ratios
            if (sumlevel in raw['values']) and (sumlevel in raw['error']):
                enhanced['error'][sumlevel] = raw['error'][sumlevel]
                enhanced['error_ratio'][sumlevel] = get_ratio(raw['error'][sumlevel], raw['values'][sumlevel], 3)

            # add the numerators and numerator_errors
            if sumlevel in raw['numerators']:
                enhanced['numerators'][sumlevel] = raw['numerators'][sumlevel]

            if (sumlevel in raw['numerators']) and (sumlevel in raw['numerator_errors']):
                enhanced['numerator_errors'][sumlevel] = raw['numerator_errors'][sumlevel]

            if len(enhanced['values']) >= (num_comparatives + 1):
                break

        # replace data with enhanced version
        for obj in ['values', 'index', 'error', 'error_ratio', 'numerators', 'numerator_errors']:
            d[obj] = enhanced[obj]

        api_data['geography']['comparatives'] = comparative_sumlevs

    return api_data
