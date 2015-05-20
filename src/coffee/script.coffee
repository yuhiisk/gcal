do (win = window, doc = window.document, $ = jQuery) ->

    'use strict'

    class Test

        constructor: ->
            @initialize()

        initialize: (@name = 'Hello World!') ->
            @hello(@name)

        hello: (str) ->
            console.log(str)

    test = new Test()

    $ ->
        $('#calendar').fullCalendar({
            googleCalendarApiKey: 'AIzaSyDVHMUYJFyihgpcPgokrqvHPxcr6UVYJmg'
            events:
                googleCalendarId: 'nnam8h2jscsp5nesgnulc7t2hg@group.calendar.google.com'
                
            eventClick: (event) ->
                url = event.description.split('::')[0]
                window.open(url)
                false
        })