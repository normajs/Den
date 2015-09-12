

class New extends Apollos.Component
  @register "new"

  vars: -> [
    type: "Den.new.quote"
  ]

  isActive: (route) ->

    active = @.type.get()
    active = active.replace("Den.new.", "")

    active = encodeURI(active)
    if route is "/new/#{active}/"
      return "active"

    return

  events: -> [
    "click [data-close]": (event) ->
      # remove once api is available for self.destroy()
      Blaze.remove @._internals.templateInstance.view
      Apollos.Router.go("/desk")

    "click a[href*=\"new/\"]": (event) ->
      event.preventDefault()

      path = event.currentTarget.pathname
      path = path.split("/")[2]

      @.type.set "Den.new.#{path}"
      Apollos.Router.redirect("/new/#{path}", true)

  ]

  onCreated: ->

    data = @.data()

    if data.active
      @.type.set "Den.new.#{data.active}"

    url = @.type.get()
    url = url.replace("Den.new.quote", "")
    Apollos.Router.redirect("/new/#{url}", true)
