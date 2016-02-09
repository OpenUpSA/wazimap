from django.conf import settings
from django.utils.module_loading import import_string

from sqlalchemy.sql.expression import or_
from sqlalchemy import Column, String, Integer
from sqlalchemy.dialects.postgresql import DOUBLE_PRECISION
from sqlalchemy.ext.declarative import declarative_base, declared_attr

from wazimap.data.utils import get_session, LocationNotFound


class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__,
                           ', '.join(['%s="%s"' % (c.name, getattr(self, c.name))
                                      for c in self.__table__.columns]))


Base = declarative_base(cls=Base)


# Geographies
class GeoMixin(object):

    child_level = None

    def as_dict(self):
        return {
            'geoid': self.geoid,
            'full_name': self.long_name,
            'short_name': self.short_name,
            'name': self.context_name,
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
    def short_name(self):
        return getattr(self, 'name', '')

    @property
    def context_name(self):
        return self.short_name

    @property
    def long_name(self):
        if hasattr(self, 'full_name'):
            return self.full_name

        names = [self.short_name]
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

    def __unicode__(self):
        return self.long_name

    @classmethod
    def search(cls, search_term, levels=None, year=None):
        """
        Try to find locations based on a search term, possibly limited
        to +levels+.

        Returns an ordered list of geo models.
        """
        search_term = search_term.strip()
        session = get_session()
        try:
            query = session.query(cls)\
                .filter(or_(cls.name.ilike(search_term + '%'),
                        cls.geo_code == search_term.upper()))

            if levels:
                query.filter(cls.geo_level.in_(levels))

            if year is not None:
                query.filter(cls.year == year)

            objects = query.limit(10)
            # TODO: order by level?
            objects = sorted(objects, key=lambda o: [o.geo_level, o.name, o.geo_code])

            return [o.as_dict() for o in objects]
        finally:
            session.close()


class Geography(Base, GeoMixin):
    geo_level = Column(String(15), primary_key=True, nullable=False)
    geo_code = Column(String(10), primary_key=True, nullable=False)

    name = Column(String(16), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(Integer, index=True, nullable=False)

    square_kms = Column(DOUBLE_PRECISION())


def get_geography(geo_code, geo_level):
    """
    Get a geography object for this geography, or
    raise LocationNotFound if it doesn't exist.
    """
    session = get_session()

    try:
        geo = session.query(GEOGRAPHY_MODEL)\
            .filter(GEOGRAPHY_MODEL.geo_level == geo_level,
                    GEOGRAPHY_MODEL.geo_code == geo_code)\
            .first()

        if not geo:
            raise LocationNotFound('Invalid level and code: %s-%s' % (geo_level, geo_code))

        return geo
    finally:
        session.close()


def get_locations(search_term, levels=None, year=None):
    if levels:
        levels = [lev.strip() for lev in levels.split(',')]
        levels = [lev for lev in levels if lev]

    return GEOGRAPHY_MODEL.search(search_term, levels, year)


def get_locations_from_coords(longitude, latitude):
    '''
    Finds the place containing this point. Returns
    County and Country model instances.
    '''
    # TODO: XXX
    return []


def get_summary_geo_info(geo_code=None, geo_level=None, session=None,
                         geo_object=None):
    if geo_object is not None:
        geo_level = geo_object.level

    if geo_level in set(['ward', 'municipality', 'district']):
        if geo_object is None:
            geo_object = get_geography(geo_code, geo_level)
        return zip(('country', 'province'), ('ZA', geo_object.province_code))
    elif geo_level == 'province':
        return zip(('country', ), ('ZA', ))
    else:
        return tuple()


def setup():
    session = get_session()
    try:
        # ensure the database tables exist
        GEOGRAPHY_MODEL.__table__.create(session.get_bind(), checkfirst=True)
    finally:
        session.close()


GEOGRAPHY_MODEL = import_string(settings.WAZIMAP.get('geography_model', 'wazimap.geo.Geography'))
