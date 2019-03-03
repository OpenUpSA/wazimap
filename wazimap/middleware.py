from django.conf import settings
from django.http.response import HttpResponsePermanentRedirect


class RedirectMiddleware(object):
    def process_request(self, request):
        host = request.get_host()

        # redirect www.foo.com to foo.com?
        if settings.STRIP_WWW and host.startswith("www."):
            redirect_url = '%s://%s%s' % (request.scheme, host[4:], request.get_full_path())
            return HttpResponsePermanentRedirect(redirect_url)
