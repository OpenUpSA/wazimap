/* Helper routines for managing the head-to-head comparison view.
 *
 * The two geographies are hosted in their own iframes. Because
 * it's all on the same domain, we can communicate between them
 * directly without using postMessage.
 */
function Head2Head() {
  var self = this;

  self.initParent = function() {
    // this is the parent frame in the head-to-head view
    self.isParent = true;
    self.isChild = false;
  };

  self.initChild = function() {
    // this is a child frame in the head-to-head view
    self.isParent = false;
    self.isChild = true;
    self.thisWindow = window;

    $('body').addClass('profile-head2head-frame');

    // find the other window
    var frames = $(window.parent.document).find('.frame-left, .frame-right');
    frames.each(function(i) {
      if (this.contentWindow != window) {
        self.otherWindow = this.contentWindow;
      }
    });

    $('body').on('click', 'a[href]', self.navigateTo);
    $(window).on('scroll', self.scrolled);
  };

  self.navigateTo = function(e) {
    // open links in the parent window
    if (e.target.href) {
      e.preventDefault();
      window.parent.location = e.target.href;
    }
  };

  self.scrolled = function(e) {
    self.otherWindow.h2h.scrollTo(window.scrollY);
  };

  self.scrollTo = function(y) {
    // scroll to y coordinate, will be called by the OTHER window, so be
    // sure to use our stashed window

    $(self.thisWindow).off('scroll');
    self.thisWindow.scrollTo(self.thisWindow.scrollX, y);
    setTimeout(function() { $(self.thisWindow).on('scroll', self.scrolled); }, 50);
  };
}

var h2h = new Head2Head();

if (window.parent != window && window.parent.location.pathname.indexOf('/compare/') > -1) {
  h2h.initChild();
} else if (window.location.pathname.indexOf('/compare/') > -1) {
  h2h.initParent();
}
