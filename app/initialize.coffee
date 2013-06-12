Application = require "./app"
window["app"] = new Application

#root = if location.href.indexOf('localhost') isnt -1 then '' else ''

$ ->
  app.ready()
  Backbone.history.start pushState: yes
