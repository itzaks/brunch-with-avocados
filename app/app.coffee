Layout = require 'views/layout'
Router = require 'lib/router'

module.exports = class Application
  constructor: ->
    _.extend @, Backbone.Events
    @router = new Router

  ready: ->
    @layout = new Layout {el: $("#application")}
