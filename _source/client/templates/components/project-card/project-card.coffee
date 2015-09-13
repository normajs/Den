
class ProjectCard extends Apollos.Component
  @register "projectCard"

  image: ->
    @.data().data.image

  client: ->
    @.data().data.client

  name: ->
    @.data().data.name
