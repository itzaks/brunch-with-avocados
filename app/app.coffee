Layout = require 'views/layout'
Router = require 'lib/router'

module.exports = class Application
  constructor: ->
    _.extend @, Backbone.Events
    @router = new Router

  init: ->
    @chrome()

  chrome: ->
    @layout = new Layout
      el: $("#application")
