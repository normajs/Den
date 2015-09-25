
class Product extends Apollos.Component
  @register "product"

  vars: -> [
    projectId: null
    clientId: null
    type: "Den.product.information"
  ]

  isActive: (route) ->

    active = @.type.get()
    active = active.replace("Den.product.", "")

    active = encodeURI(active)
    if route.indexOf("/#{active}") > -1
      return "active"

    return

  events: -> [

    "click a[href*=\"project/\"]": (event) ->
      event.preventDefault()

      path = event.currentTarget.pathname
      path = path.split("/")[4]
      data = @.data()
      @.type.set "Den.product.#{path}"
      Apollos.Router.redirect("/project/#{data.client}/#{data.projectIdString}/#{path}", true)

  ]
  onCreated: ->

    self = @

    data = self.data()

    if data.active
      self.type.set "Den.product.#{data.active}"

    url = self.type.get()
    url = url.replace("Den.product.", "")
    Apollos.Router.redirect("/project/#{data.client}/#{data.projectIdString}/#{url}", true)
