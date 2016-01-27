# Database
import os

DB_NAME = 'census_2011'
DB_USER = 'census'
DB_PASSWORD = 'census'
DATABASE_URL = os.environ.get('DATABASE_URL', 'postgresql://census:census@localhost/census_2011')

WARD_SEARCH_ENDPOINT = 'http://wards.code4sa.org/'
