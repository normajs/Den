
class Den.new.quote extends Apollos.Component
  @register "Den.new.quote"

  service: ->
    return Apollos.services.findOne({})
