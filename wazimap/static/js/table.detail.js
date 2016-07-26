function Table(options) {
    var table = {
        geoIDs: [],
        tableSearchAPI: '/api/1.0/table',
        geoSearchAPI: '/place-search/json/',
        chosenSumlevAncestorList: '',
    };

    table.init = function(options) {
        table.tableID = options.tableID;
        table.$topicSelect = $(options.topicSelect);
        table.$topicSelectContainer = $(options.topicSelectContainer);
        table.$displayHeader = $(options.displayHeader);
        table.$displayWrapper = $(options.displayWrapper);
        table.$pageWrapper = $('#table');
        table.$geoSelectContainer = $('#explore');
        table.$placeSelect = $('#topic-place-select');
        table.$placeSelectContainer = $('#explore-topic-place-picker');
        table.$parentSelect = $('#topic-place-select-parent');
        table.$parentSelectContainer = $('#explore-topic-place-picker-parent');
        
        // make the side preview expand and collapse
        table.makePreviewExpander();
    
        // add the "change table" widget and listener
        table.makeTopicSelectWidget();

        table.$parentSelectContainer.hide();
        table.makePlaceSelectWidget();
        table.$placeSelect.focus();
    
        return table;
    }

    table.makePreviewExpander = function() {
        var previewTable = d3.select('.preview-table ul');
        if (previewTable.empty()) { return; }

        var previewCollapsedHeight = '135px',
            previewExpandText = 'Show all preview columns &#x25BC;',
            previewFullHeight = previewTable.node().offsetHeight + 'px';

        previewTable
            .style('overflow', 'hidden')
            .style('height', previewCollapsedHeight);
    
        var previewTableToggleControl = d3.select('.preview-table')
            .append('a')
                .classed('expand-preview', true)
                .attr('href', '#')
                .html(previewExpandText)
                .on('click', function() {
                    previewTableToggle();
                })

        var previewTableToggle = function() {
            d3.event.preventDefault();
            if (previewTable.classed('open')) {
                previewTableAnimate(false, previewCollapsedHeight);
            } else {
                previewTableAnimate(true, previewFullHeight);
            }
        }

        var previewTableAnimate = function(toOpen, targetHeight) {
            previewTable
                .classed('open', toOpen)
                .transition()
                .duration(500)
                .style('height', targetHeight);
    
            var toggleText = (toOpen) ? 'Collapse preview columns &#x25B2;' : previewExpandText;
            previewTableToggleControl.html(toggleText);
        }
    
        return table
    }

    table.topicSelectEngine = new Bloodhound({
        datumTokenizer: function(d) {
            var fields = [
                d.title,
                d.table_id,
            ];
            _.each(d.columns, function(col) {
                fields.push(col.name);
            });

            return Bloodhound.tokenizers.whitespace(fields.join(' '));
        },
        sorter: function(a, b) {
            return a.table_id.localeCompare(b.table_id);
        },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 50,
        prefetch: {
            url: table.tableSearchAPI,
            cache: false,
        },
    });
    
    table.makeTopicSelectWidget = function() {
        table.$displayWrapper.find('h1')
            .append('<a href="#" id="change-table">Change table</a>');

        table.topicSelectEngine.initialize();

        var element = table.$topicSelect;
        
        element.typeahead('destroy');
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'topics',
            displayKey: 'simple_table_name',
            source: table.topicSelectEngine.ttAdapter(),
            templates: {
                suggestion: Handlebars.compile(
                    [
                        '{{#if table_id}}<h5 class="result-type">{{#if column_name}}Column in {{/if}}Table {{table_id}}</h5>{{/if}}',
                        '<p class="result-name">{{title}}</p>',
                        '{{#if column_name}}<p class="caption"><strong>Column name:</strong> {{column_name}}</p>{{/if}}',
                        '{{#if topic_string}}<p class="caption"><strong>Table topics:</strong> {{topic_string}}</p>{{/if}}'
                    ].join('')
                )
            }
        });

        element.on('typeahead:selected', function(obj, datum) {
            table.tableID = datum['table_id'];
            if (!!table.tableID) {
                window.location = '/tables/'+table.tableID;
            }
        });
        
        // standard listeners
        table.$pageWrapper.on('click', '#change-table, #cancel-search', function(e) {
            e.preventDefault();
            table.toggleTableSearch();
        });
        
        return table;
    }

    table.toggleTableSearch = function() {
        table.$displayHeader.toggle();
        table.$displayWrapper.toggle();
        table.$geoSelectContainer.toggle();
        table.$topicSelectContainer.toggle();
        table.$topicSelect.focus();
    }
    
    table.placeSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.full_name); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 20,
        remote: {
            url: table.geoSearchAPI,
            replace: function (url, query) {
                return url += '?q=' + query + '&geolevels=' + table.chosenSumlevAncestorList;
            },
            filter: function(response) {
                var results = response.results;
                results.map(function(item) {
                    item['sumlev_name'] = sumlevMap[item.geo_level].name;
                });
                return results;
            }
        }
    });

    table.sumlevSelectEngine = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.plural); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        local: _.values(sumlevMap),
    });

    table.makePlaceSelectWidget = function() {
        table.placeSelectEngine.initialize();
        table.sumlevSelectEngine.initialize();

        var element = table.$placeSelect;
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'summary_levels',
            displayKey: 'plural',
            source: table.sumlevSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Summary levels</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{plural}}<span class="result-type">{{sumlev}}</span></p>'
                )
            }
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: table.placeSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();

            if (!datum['full_geoid'] && !!datum['sumlev']) {
                // we have a sumlev choice, so provide a parent input
                table.chosenSumlev = datum['sumlev'];
                table.chosenSumlevPluralName = datum['plural'];
                table.chosenSumlevAncestorList = datum['ancestors'].join(','),
                table.chosenSumlevAncestorOptions = datum['ancestor_options'];

                table.makeParentSelectWidget();
                table.$parentSelectContainer.slideDown();
                table.$parentSelect.focus();
            } else if (!!datum['full_geoid']) {
                // we have a geoID, so add it
                table.geoIDs.push(datum['full_geoid']);

                var url = table.buildDataURL(
                    'table', table.tableID, table.geoIDs, datum['full_geoid']
                );
                window.location = url;
            }
        });
    }

    table.makeParentSelectWidget = function() {
        var element = table.$parentSelect;
        element.typeahead({
            autoselect: true,
            highlight: false,
            hint: false,
            minLength: 2
        }, {
            name: 'geographies',
            displayKey: 'full_name',
            source: table.placeSelectEngine.ttAdapter(),
            templates: {
                header: '<h2>Geographies</h2>',
                suggestion: Handlebars.compile(
                    '<p class="result-name">{{full_name}}<span class="result-type">{{sumlev_name}}</span></p>'
                )
            }
        });

        if (table.chosenSumlev == '040') {
            element.typeahead('val', 'United States');
        }

        element.on('typeahead:selected', function(event, datum) {
            event.stopPropagation();
            if (!!datum['full_geoid']) {
                var geoGroup = table.chosenSumlev + '|' + datum['full_geoid']
                table.geoIDs.push(geoGroup);
                table.primaryGeoID = datum['full_geoid'];

                var url = table.buildDataURL(
                    'table', table.tableID, table.geoIDs, table.primaryGeoID
                );
                window.location = url;
            }
        });
    }

    table.capitalize = function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }

    table.buildDataURL = function(dataFormat, tableID, geoIDs, primaryGeoID) {
        // pass in vars rather than use them from table object
        // so they can be created to arbitrary destinations

        var url = '/data/'+dataFormat+'/?table='+tableID;
        if (!!geoIDs) {
            url += "&geo_ids=" + geoIDs.join(',')
        }
        if (!!primaryGeoID) {
            url += "&primary_geo_id=" + primaryGeoID
        }
    
        return url
    }

    table.init(options);
    return table;
}
