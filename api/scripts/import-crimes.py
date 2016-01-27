import argparse
import os
import sys

import csv
import re

from api.models import Base, Province, PoliceDistrict, geo_levels
from api.utils import get_session, _engine
from api.models.tables import get_datatable

import logging

logging.basicConfig()
logging.getLogger('sqlalchemy.engine').setLevel(logging.WARN)

bad_chars = re.compile('[^A-Za-z0-9]')

class CrimeImporter(object):
    def __init__(self, filepath):
        self.filepath = filepath
        self.includes_total = False
        self.table_name = None


    def import_crimes(self):
        session = get_session()

        table = get_datatable(self.table_id)
        model = table.get_model(self.geo_level)
        geo_code_attr = '%s_code' % self.geo_level

        with open(filepath) as f:
            reader = csv.DictReader(f, delimiter=",")

            for row in reader:
                args = {}
                for key, val in row.iteritems():
                    key = key.lower()
                    if key == 'geo_code':
                        args[geo_code_attr] = val
                    elif key == 'total':
                        args['total'] = int(val)
                    else:
                        args[key] = val

                item = model(**args)
                session.add(item)

        session.commit()


    def import_districts(self):
        session = get_session()

        with open(filepath) as f:
            reader = csv.reader(f, delimiter=",")
            # skip header
            next(reader)

            for line in reader:
                province_code, name = line[0:2]
                code = self.district_name_to_code(name.lower())

                print name, code, province_code

                geo = PoliceDistrict()
                geo.name = name
                geo.code = code
                geo.year = '2005'
                geo.province_code = province_code

                session.add(geo)

        session.commit()

    def run(self):
        #TODO
        pass


def create_arg_parser():
    parser = argparse.ArgumentParser(
            description='Imports crime data from CSV. The first column must be a geo_code, there must ' +
                    'be a total column and the remaining columns are considered fields.'
    )
    parser.add_argument(
        '--districts',
        action='store_const',
        const=True,
        help='import district (geography) information',
    )
    parser.add_argument(
        'filepath',
        action='store',
        help='the file path to a CSV file'
    )
    parser.add_argument(
        '--geolevel',
        action='store',
        dest='geo_level',
        help='the geo_level of the geographies in the data, one of: %s' % ', '.join(geo_levels)
    )
    parser.add_argument(
        '--table',
        action='store',
        dest='table_id',
        default=None,
        help='the id of the database table where the imported data will be stored. '
             'If not provided, it is generated from the field names'
    )
    return parser


if __name__ == '__main__':
    args = create_arg_parser().parse_args()

    filepath = args.filepath
    if not os.path.isabs(filepath):
        filepath = os.path.join(os.getcwd(), filepath)

    importer = CrimeImporter(filepath)
    importer.table_id = args.table_id
    importer.geo_level = args.geo_level

    if args.districts:
        importer.import_districts()
    else:
        importer.import_crimes()
