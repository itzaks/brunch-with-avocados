View = require('./view')

module.exports = class Index extends View
  template: require('./templates/index')
  events:
  	"submit form": "holla"

  holla: (e) ->
  	e.preventDefault()
  	alert "hey !#{ @$('.write-something').val() }¡"