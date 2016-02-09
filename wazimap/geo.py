from django.conf import settings
from django.utils.module_loading import import_string

from sqlalchemy.sql.expression import or_
from sqlalchemy import Column, String, Integer
from sqlalchemy.dialects.postgresql import DOUBLE_PRECISION
from sqlalchemy.ext.declarative import declarative_base, declared_attr

from wazimap.data.utils import get_session, ward_search_api, LocationNotFound


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
        if not self.child_level:
            return []

        return []
        # TODO

    def split_into(self, level):
        # TODO

        if level not in geo_levels:
            raise ValueError(level)

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
        long_name = self.short_name
        parent_names = [p.name for p in self.parents()
                        if p.level != 'district' and p.level != 'country']
        if len(parent_names) > 0:
            return '%s, %s' % (long_name, ', '.join(parent_names))
        return long_name

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
        return Country.ZA()

    @property
    def geoid(self):
        return '-'.join([self.geo_level, self.geo_code])

    def parents(self):
        # XXX
        return []

    def __unicode__(self):
        return self.long_name


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


def get_locations(search_term, levels=None, year='2011'):
    # XXX
    if levels:
        levels = levels.split(',')
        for level in levels:
            if level not in geo_levels:
                raise ValueError('Invalid geolevel: %s' % level)
    else:
        levels = ['country', 'province', 'municipality', 'ward', 'subplace']

    search_term = search_term.strip()
    session = get_session()
    try:
        objects = set()

        # search at each level
        for level in levels:
            # already checked that geo_level is valid
            model = get_geo_model(level)

            if level == 'subplace':
                # check mainplace and subplace names
                objects.update(
                    session
                    .query(Ward)
                    .join(model)
                    .filter(model.year == year)
                    .filter(or_(model.subplace_name.ilike(search_term + '%'),
                                model.subplace_name.ilike('City of %s' % search_term + '%'),
                                model.mainplace_name.ilike(search_term + '%'),
                                model.code == search_term))
                    .limit(10)
                )
            elif level == 'ward':
                st = search_term.lower().strip('ward').strip()

                filters = [model.code.like(st + '%')]
                try:
                    filters.append(model.ward_no == int(st))
                except ValueError:
                    pass

                objects.update(
                    session
                    .query(model)
                    .filter(model.year == year)
                    .filter(or_(*filters))
                    .limit(10)
                )
            else:
                objects.update(
                    session
                    .query(model)
                    .filter(model.year == year)
                    .filter(or_(model.name.ilike(search_term + '%'),
                                model.name.ilike('City of %s' % search_term + '%'),
                                model.code == search_term.upper()))
                    .limit(10)
                )

        # XXX
        order_map = {Country: 4, Ward: 3, Municipality: 2, Province: 1}
        objects = sorted(objects, key=lambda o: [order_map[o.__class__], getattr(o, 'name', getattr(o, 'code'))])

        return serialize_demarcations(objects[0:10])
    finally:
        session.close()


def get_locations_from_coords(longitude, latitude):
    '''
    Calls the Wards API to get a single ward containing the coordinates.
    Returns the serialized ward, municipality and province.
    '''
    location = ward_search_api.search("%s,%s" % (latitude, longitude))
    if len(location) == 0:
        return []
    # there should only be 1 ward since wards don't overlap
    location = location[0]

    session = get_session()
    try:
        ward = session.query(Ward).get(location.ward_code)
        if ward is None:
            return []

        # this is the reverse order of a normal search - the
        # narrowest location match comes first.
        objects = [ward, ward.municipality, ward.province, ward.country]
        objects = filter(lambda o: bool(o), objects)  # remove None

        return serialize_demarcations(objects)

    finally:
        session.close()


def serialize_demarcations(objects):
    return [{
            'full_name': obj.long_name,
            'full_geoid': '%s-%s' % (obj.level, obj.code),
            'geo_level': obj.level,
            'geo_code': obj.code,
            } for obj in objects]


def get_summary_geo_info(geo_code=None, geo_level=None, session=None,
                         geo_object=None):
    if geo_object is not None:
        geo_level = geo_object.level

    if geo_level in set(['ward', 'municipality', 'district']):
        if geo_object is None:
            geo_object = get_geo_object(geo_code, geo_level, session)
        return zip(('country', 'province'), ('ZA', geo_object.province_code))
    elif geo_level == 'province':
        return zip(('country', ), ('ZA', ))
    else:
        return tuple()


def get_geo_object(geo_code, geo_level, session):
    model = {
        'ward': Ward,
        'district': District,
        'municipality': Municipality,
        'province': Province,
        'country': None,
    }[geo_level]

    if model is None:
        return None
    return session.query(model).get(geo_code)


def setup():
    session = get_session()
    try:
        # ensure the database tables exist
        GEOGRAPHY_MODEL.__table__.create(session.get_bind(), checkfirst=True)
    finally:
        session.close()


GEOGRAPHY_MODEL = import_string(settings.WAZIMAP.get('geography_model', 'wazimap.geo.Geography'))
