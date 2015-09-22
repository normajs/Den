

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
    url = url.replace("Den.new.", "")
    Apollos.Router.redirect("/new/#{url}", true)
