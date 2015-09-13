
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

  status: ->

    statuses = [
      "background--push"

      "background--production"

      "background--gather-primary"
      "background--gather-secondary"
      "background--gather-tertiary"

      "background--stale"

    ]

    return Random.choice statuses
