var textmatchAPI = '/place-search/json/',
    resultTemplate = Handlebars.compile('<p class="result-name"><span class="result-type">{{geo_level}}</span>{{full_name}}</p>'),
    geoSelect = $('#geography-select, #geography-select-home');

var textMatchEngine = new Bloodhound({
    datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 20,
    remote: {
        url: textmatchAPI,
        rateLimitWait: 600,
        replace: function (url, query) {
            return url += '?q=' + query;
        },
        filter: function(response) {
            return response.results;
        }
    }
});
textMatchEngine.initialize();

function makeGeoSelectWidget(element, selected) {
    element.typeahead({
        autoselect: true,
        highlight: false,
        hint: false,
        minLength: 2
    }, {
        // get textual matches from host
        name: 'textmatch',
        displayKey: 'full_name',
        source: textMatchEngine.ttAdapter(),
        limit: 20,
        templates: {
            suggestion: resultTemplate,
        },
    });

    element.on('typeahead:selected', selected || function(event, datum) {
        event.stopPropagation();
        window.location = '/profiles/' + datum.full_geoid + '/';
    });
}

makeGeoSelectWidget(geoSelect);
makeGeoSelectWidget($('#compare-place-select'), function(event, datum) {
    var geoId = [profileData.geography.this.geo_level, profileData.geography.this.geo_code].join('-');
    event.stopPropagation();
    window.location = '/compare/' + geoId + '/vs/' + datum.full_geoid + '/';
});
