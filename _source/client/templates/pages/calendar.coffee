

class Calendar extends Apollos.Component
  @register "calendar"

  vars: -> [
    desktopDuration: 250
    mobileDuration: 400
  ]

  events: -> [
    "click [data-close]": (event) ->

      # remove once api is available for self.destroy()
      Apollos.Component.destroyComponentForElement("#calendar")
      Apollos.Router.go("/desk")
  ]

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


  # cards: ->
  #
  #   count = [0..8]
  #   sampleImages = [
  #     "//d13yacurqjgara.cloudfront.net/users/79723/screenshots/2238442/untitled-2.jpg"
  #     "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1902180/screen_shot_2015-01-27_at_3.21.03_pm.png"
  #     "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1902173/mountains.jpg"
  #     "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1624445/screen_shot_2014-07-01_at_5.06.07_pm.png"
  #     "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1288534/pisgah.png"
  #   ]
  #
  #   projects = []
  #   for card, index in count
  #
  #     console.log card, index
  #     if index is 4
  #       card = false
  #       projects.push card
  #       continue
  #
  #     card =
  #       image: Random.choice sampleImages
  #
  #     projects.push card
  #
  #   return projects
