
class ProjectCard extends Apollos.Component
  @register "projectCard"

  subscriptions: -> [
    "clients"
  ]

  image: ->
    @.data().data.image

  client: ->
    client = @.data().data.client

    _client = Apollos.clients.findOne(_id: client)

    return _client.name

  id: =>
    @.data().data._id

  name: ->
    @.data().data.name

  status: ->
    @.data().data.status
