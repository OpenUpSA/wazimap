from django.db import models
from django.utils.text import slugify


# Geographies
class GeoMixin(object):

    child_level = None

    def as_dict(self):
        return {
            'full_geoid': self.geoid,
            'full_name': self.long_name,
            'short_name': self.name,
            'geo_level': self.geo_level,
            'geo_code': self.geo_code,
            'child_level': self.child_level,
            'parent_geoid': self.parent.geoid if self.parent else None,
            'square_kms': self.square_kms,
        }

    def as_dict_deep(self):
        parents = dict((p.level, p.as_dict()) for p in self.parents())
        parents_ordering = [p.level for p in self.parents()]

        return {
            'this': self.as_dict(),
            'parents': parents,
            'parents_ordering': parents_ordering,
        }

    def children(self):
        # TODO
        if not self.child_level:
            return []

        return []

    def split_into(self, level):
        # TODO
        kids = self.children()
        if level == self.child_level:
            return kids
        else:
            splits = []
            for k in kids:
                splits.extend(k.split_into(level))
            # when splitting into a lower level, ensure
            # that we update the children's parent to be us,
            # which allows the UI to handle that case
            # correctly
            for k in splits:
                k.parent = self
            return splits

    @property
    def long_name(self):
        if hasattr(self, 'full_name'):
            return self.full_name

        names = [self.name]
        names += [p.name for p in self.parents()]
        return ', '.join(names)

    @property
    def parent(self):
        # allow parent to be overriden
        if not hasattr(self, '_parent'):
            p = self.parents()
            p = p[0] if p else None
            self._parent = p

        return self._parent

    @parent.setter
    def parent(self, value):
        self._parent = value

    @property
    def country(self):
        # TODO
        return None

    @property
    def geoid(self):
        return '-'.join([self.geo_level, self.geo_code])

    def parents(self):
        # XXX
        return []

    @property
    def slug(self):
        return slugify(self.name)

    def __unicode__(self):
        return self.long_name


class Geography(models.Model, GeoMixin):
    geo_level = models.CharField(max_length=15, null=False)
    geo_code = models.CharField(max_length=10, null=False)

    name = models.CharField(max_length=20, null=False, db_index=True)
    year = models.IntegerField(db_index=True, null=True)
    # this place's id from Open Street Map (OSM), useful when using
    # OSM for geolocation
    osm_area_id = models.IntegerField(db_index=True, null=True)

    # area in square km
    square_kms = models.FloatField(null=True)

    class Meta:
        unique_together = ('geo_level', 'geo_code')
