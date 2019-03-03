from sqlalchemy.ext.declarative import declarative_base, declared_attr
from wazimap.data.utils import _metadata


class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__,
                           ', '.join(['%s="%s"' % (c.name, getattr(self, c.name))
                                      for c in self.__table__.columns]))


Base = declarative_base(cls=Base, metadata=_metadata)
