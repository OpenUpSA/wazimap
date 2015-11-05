import os
import pwd
from fabric.api import env, task

from api.fabfile import provision_api, create_api_database, drop_api_database, load_api_data, reload_api_data


CODE_DIR = 'censusreporter'


@task
def dev():
    env.deploy_type = 'dev'
    env.deploy_user = pwd.getpwuid(os.getuid())[0]
    env.deploy_dir = os.path.join(os.path.abspath(os.path.dirname(__file__)), '../')
    env.branch = None  # deploy whichever branch we are currently on
    env.repo_dir = os.path.join(env.deploy_dir, CODE_DIR)
