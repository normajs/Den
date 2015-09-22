
class Den.new.quote extends Apollos.Component
  @register "Den.new.quote"

  vars: -> [
    serviceName: false
  ]

  subscriptions: -> [
    "services"
  ]

  service: ->
    serviceName = @.serviceName.get()

    if not serviceName
      service = Apollos.services.findOne({})
      @.serviceName.set(service.name)
      return

    if serviceName
      return Apollos.services.findOne({name: serviceName})

    return false
