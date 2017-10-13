from django.contrib import admin

from .models import Dataset, Release, SimpleTable, FieldTable, DBTable, FieldTableRelease, SimpleTableRelease


admin.site.register(DBTable)


class FieldTableReleaseInline(admin.TabularInline):
    model = FieldTableRelease
    fields = ('release', 'db_table')
    extra = 0


@admin.register(FieldTable)
class FieldTableAdmin(admin.ModelAdmin):
    list_display = ('fields', 'universe', 'dataset')
    list_filter = ('dataset', 'universe')
    inlines = (FieldTableReleaseInline, )


class SimpleTableReleaseInline(admin.TabularInline):
    model = SimpleTableRelease
    fields = ('release', 'db_table')
    extra = 0


@admin.register(SimpleTable)
class SimpleTableAdmin(admin.ModelAdmin):
    list_display = ('name', 'universe', 'dataset')
    list_filter = ('dataset', 'universe')
    inlines = (SimpleTableReleaseInline, )


class ReleaseInline(admin.StackedInline):
    model = Release
    fields = ('name', 'year')
    extra = 0


@admin.register(Dataset)
class DatasetAdmin(admin.ModelAdmin):
    inlines = (ReleaseInline, )


@admin.register(Release)
class ReleaseAdmin(admin.ModelAdmin):
    list_display = ('name', 'year')
    list_filter = ('year',)
