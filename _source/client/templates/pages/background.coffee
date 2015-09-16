

class Background extends Apollos.Component
  @register "background"

  cards: ->

    projects = Apollos.projects.find().fetch()

    return projects
