from django.contrib import admin

from .models import Dataset, Release, SimpleTable, FieldTable, DBTable, FieldTableRelease, SimpleTableRelease


admin.site.register(DBTable)


class FieldTableReleaseInline(admin.StackedInline):
    model = FieldTableRelease
    fields = ('release', 'db_table')
    extra = 0


def field_list(model):
    return ', '.join(model.fields)
field_list.short_description = 'Fields'


@admin.register(FieldTable)
class FieldTableAdmin(admin.ModelAdmin):
    list_display = ('name', field_list, 'dataset', 'universe')
    list_filter = ('dataset', 'universe')
    search_fields = ['name']
    inlines = (FieldTableReleaseInline, )
    fieldsets = (
        (None, {
            'fields': ('dataset', 'universe', 'fields', 'description')
        }),
        ('Advanced', {
            'fields': ('name', 'stat_type', 'value_type', 'denominator_key', 'has_total'),
            'classes': ('collapse', ),
        })
    )


class SimpleTableReleaseInline(admin.StackedInline):
    model = SimpleTableRelease
    fields = ('release', 'db_table')
    extra = 0


@admin.register(SimpleTable)
class SimpleTableAdmin(admin.ModelAdmin):
    list_display = ('name', 'dataset', 'universe')
    list_filter = ('dataset', 'universe')
    inlines = (SimpleTableReleaseInline, )
    fieldsets = (
        (None, {
            'fields': ('name', 'dataset', 'universe', 'description'),
        }),
        ('Advanced', {
            'fields': ('stat_type', 'total_column'),
            'classes': ('collapse', ),
        })
    )


class ReleaseInline(admin.StackedInline):
    model = Release
    fields = ('name', 'year')
    extra = 0
    min_num = 1


@admin.register(Dataset)
class DatasetAdmin(admin.ModelAdmin):
    inlines = (ReleaseInline, )


@admin.register(Release)
class ReleaseAdmin(admin.ModelAdmin):
    list_display = ('name', 'year')
    list_filter = ('year',)
