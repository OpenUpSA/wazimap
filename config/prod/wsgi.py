import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.prod.settings")

import newrelic.agent
newrelic.agent.initialize(os.path.join(os.path.abspath(os.path.dirname(__file__)), '../../conf/newrelic.ini'))

from django.core.wsgi import get_wsgi_application
from whitenoise.django import DjangoWhiteNoise
application = get_wsgi_application()
application = DjangoWhiteNoise(application)
