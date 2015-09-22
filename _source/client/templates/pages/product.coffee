
class Product extends Apollos.Component
  @register "product"

  # events: -> [
  #   "click [data-close]": (event) ->
  #
  #     # remove once api is available for self.destroy()
  #     Blaze.remove @._internals.templateInstance.view
  #     Apollos.Router.go("/desk")
  # ]
  vars: -> [
    projectId: null
    clientId: null
  ]

  onCreated: ->

    self = @
    self.projectId.set self.data().id

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
