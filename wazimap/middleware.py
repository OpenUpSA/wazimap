class RewriteStaticEmbeds(object):
    """ Rewrites the legacy url /static/iframe.html so that
    it's served from /embed/iframe.html. This gives us a chance
    to write various settings into iframe.html that isn't possible
    if it's a static file.

    This is only necessary for websites that have been running
    using the legacy format.

    Note that due to how manage.py runserver works, this has
    no impact during development.
    """
    def process_request(self, request):
        if request.path_info == '/static/iframe.html':
            request.path_info = '/embed/iframe.html'
