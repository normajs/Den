

class Den.product.information extends Apollos.Component
  @register "Den.product.information"

  vars: -> [
    projectId: null
    clientId: null
  ]

  onCreated: ->
    self = @
    self.projectId.set self.data().projectIdString

    self.clientId.set self.data().client

  odd: (index) ->

    return !(index % 2 is 0)

  even: (index) ->
    return (index % 2 is 0)

  indexedComments: ->

    self = @
    indexedComments = []
    comments = self.project()?.comments
    if not comments
      return indexedComments

    for comment, index in comments
      comment.index = index + 1
      indexedComments.push comment

    return indexedComments

  prettyDate: ->
    return {
      day: moment(@.data().inHandsDate).format("DD")
      month: moment(@.data().inHandsDate).format("MMM")
    }

  project: ->
    self = @
    project = self.projectId.get()
    if not project
      return {}

    project = Apollos.projects.findOne({_id: project})
    return project or {}

  clientObj: ->

    self = @
    client = self.data().client
    if not client
      return {}

    client = Apollos.clients.findOne({name: client})
    return client or {}
