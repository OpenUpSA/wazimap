var SITE_NAME = 'Wazimap';
var SITE_URL = 'http://wazimap.co.za';
// where are embeds hosted?
// NB: this MUST alse be set in censusreporter/apps/census/static/js/embed.chart.make.js
var EMBED_URL = 'http://embed.wazimap.co.za';

// standard mapping of summary level code to summary level name
var sumlevMap = {
    "country": {"name": "country", "plural": "countries", "sumlev": "country",
                "children": ['province', 'municipality'],
                "ancestors": []},
    "province":  {"name": "province", "plural": "provinces", "sumlev": "province",
                "children": ['municipality', 'ward'],
                "ancestors": ['country']},
    "municipality":  {"name": "municipality", "plural": "municipalities", "sumlev": "municipality",
                "children": ['ward'],
                "ancestors": ['province', 'country']},
    "ward":  {"name": "ward", "plural": "wards", "sumlev": "ward",
                "children": [],
                "ancestors": ['municipality', 'province']},
    "policedistrict":  {"name": "police district", "plural": "police districts", "sumlev": "policedistrict",
                "children": [],
                "ancestors": ['province']},
};

var releaseNames = {
    'acs2012_1yr': {'name': 'ACS 2012 1-year', 'years': '2012'},
    'acs2012_3yr': {'name': 'ACS 2012 3-year', 'years': '2010-2012'},
    'acs2012_5yr': {'name': 'ACS 2012 5-year', 'years': '2008-2012'}
};

// mapit code mappings
var MAPIT_LEVEL_TYPES = {
    'country': 'CY',
    'district': 'DC',
    'province': 'PR',
    'municipality': 'MN',
    'ward': 'WD',
};

// NB: no simplify tolerance at the country level
var MAPIT_LEVEL_SIMPLIFY = {
    'DC': 0.01,
    'PR': 0.005,
    'MN': 0.005,
    'WD': 0.0001,
};
