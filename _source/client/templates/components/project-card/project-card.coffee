
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

  id: =>
    @.data().data._id
    
  name: ->
    @.data().data.name

  status: ->
    @.data().data.status
