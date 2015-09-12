

class Modal extends Apollos.Component
  @register "modal"

  vars: -> [
    desktopDuration: 250
    mobileDuration: 400
  ]

  # events: -> [
  #   "click [data-close]": (event) ->
  #
  #     console.log @._internals
  #     # remove once api is available for self.destroy()
  #     Blaze.remove @._internals.templateInstance.view
  #     Apollos.Router.go("/desk")
  # ]

  insertDOMElement: (parent, node, before) ->

    self = @

    width = $(window).width()
    height = $(window).height()


    # fade in background
    $(node).appendTo(parent)
      .velocity "fadeIn",
        duration: self.desktopDuration.get()
        complete: (elements) ->
          $('html').addClass 'modal--opened'
    super


  removeDOMElement: (parent, node) ->
    self = @

    width = $(window).width()
    height = $(window).height()

    # fade out background
    $(node).velocity "fadeOut",
      duration: self.desktopDuration.get()
      complete: (elements) ->
        $(node).remove()
        $('html').removeClass 'modal--opened'
