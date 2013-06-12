View = require('./view')

# Application frame
module.exports = class Layout extends View
  tagName: "body"

  bootstrap: ->
    @$views = @$("#views")
    @listenTo app, "view:change", @renderView

  renderView: (view) ->
    @$views.html (new View = require "views/#{ view }").render().el
