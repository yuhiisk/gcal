(function(win, doc, $) {
  'use strict';
  var Test, test;
  Test = (function() {
    function Test() {
      this.initialize();
    }

    Test.prototype.initialize = function(name) {
      this.name = name != null ? name : 'Hello World!';
      return this.hello(this.name);
    };

    Test.prototype.hello = function(str) {
      return console.log(str);
    };

    return Test;

  })();
  test = new Test();
  return $(function() {
    return $('#calendar').fullCalendar({
      googleCalendarApiKey: 'AIzaSyDVHMUYJFyihgpcPgokrqvHPxcr6UVYJmg',
      events: {
        googleCalendarId: 'nnam8h2jscsp5nesgnulc7t2hg@group.calendar.google.com'
      },
      eventClick: function(event) {
        var url;
        url = event.description.split('::')[0];
        window.open(url);
        return false;
      }
    });
  });
})(window, window.document, jQuery);
