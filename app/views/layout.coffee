View = require('./view')

# Application frame
module.exports = class Application extends View
  tagName: "body"

  bootstrap: ->
    @$views = @$("#views")
    @listenTo app, "view:change", (view) ->
      view = new View = require "views/#{ view }"
      @$views.html view.render().el
