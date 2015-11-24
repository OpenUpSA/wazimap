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

    $('body').addClass('profile-head2head-frame');

    $('a').on('click', function(e) {
      e.preventDefault();
      // open links in the parent window
      window.parent.location = e.target.href;
    });
  };
}

var h2h = new Head2Head();

if (window.parent != window && window.parent.location.pathname.indexOf('/compare/') > -1) {
  h2h.initChild();
} else if (window.location.pathname.indexOf('/compare/') > -1) {
  h2h.initParent();
}
