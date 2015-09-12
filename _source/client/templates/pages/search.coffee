
class Search extends Apollos.Component
  @register "search"

  events: -> [
    "click [data-close]": (event) ->
      # remove once api is available for self.destroy()
      Blaze.remove @._internals.templateInstance.view
      Apollos.Router.go("/desk")
  ]
