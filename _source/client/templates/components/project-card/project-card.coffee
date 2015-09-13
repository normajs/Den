
class ProjectCard extends Apollos.Component
  @register "projectCard"


  events: -> [
    "click": ->
      console.log "project clicks still work"
  ]
  image: ->
    @.data().data.image

  client: ->
    @.data().data.client

  name: ->
    @.data().data.name
