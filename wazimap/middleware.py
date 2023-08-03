from django.conf import settings
from django.http.response import HttpResponsePermanentRedirect


class RedirectMiddleware(object):
    def __init__(self, get_response):
        self.get_response = get_response
        # One-time configuration and initialization.

    def __call__(self, request):
        # Code to be executed for each request before
        # the view (and later middleware) are called.

        host = request.get_host()

        # redirect www.foo.com to foo.com?
        if settings.STRIP_WWW and host.startswith("www."):
            redirect_url = '%s://%s%s' % (request.scheme, host[4:], request.get_full_path())
            return HttpResponsePermanentRedirect(redirect_url)

        response = self.get_response(request)

        # Code to be executed for each request/response after
        # the view is called.

        return response
