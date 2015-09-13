
class User extends Apollos.Component
  @register "userPanel"

  vars: -> [
    active: false
  ]

  events: -> [
    "click [data-user]": @.toggle
    "click [data-close]": ->
      @.active.set false
  ]

  onRendered: ->

    self = @

    previousState = false
    # self.autorun ->
    #
    #   active = self.active.get()
    #
    #   console.log active, previousState
    #   if active isnt previousState
    #     previousState = active
    #
    #     $panel = $("[data-user-panel]")
    #     console.log $panel
    #     if active
    #       $panel.velocity "fadeIn",
    #         duration: 250
    #         complete: ->
    #           console.log "done"
    #     else
    #       $panel.velocity "fadeOut",
    #         duration: 250
    #         complete: ->
    #           console.log "done"

  toggle: (event) ->

    active = @.active.get()
    active = not active

    @.active.set active
