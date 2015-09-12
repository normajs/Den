

class Calendar extends Apollos.Component
  @register "calendar"

  vars: -> [
    desktopDuration: 250
    mobileDuration: 400
    today: null
    firstDay: null
    lastDay: null
  ]

  onCreated: ->

    self = @

    if self.data().calendarDate?.get()
      date = self.data().calendarDate.get()
      self.today.set moment(date, "MM/DD/YYYY").startOf("day")
    else
      self.today.set moment().startOf("day")

    self.autorun ->
      today = self.today.get()
      self.firstDay.set moment(today).startOf("month").startOf("week").startOf("day")
      self.lastDay.set moment(today).endOf("month").endOf("week").startOf("day")
      self.data().calendarDate?.set today.format("MM/DD/YYYY")

  events: -> [
    "click [data-close]": (event) ->

      # remove once api is available for self.destroy()
      Apollos.Component.destroyComponentForElement("#calendar")
      Apollos.Router.go("/desk")
  ]


  days: ->
    self = @

    days = []

    today = self.today.get()
    startOfMonth = moment(today).startOf("month")
    endOfMonth = moment(today).endOf("month")
    day = self.firstDay.get()
    end = self.lastDay.get()
    i = 0

    while day.unix() <= end.unix()
      if day.unix() >= today.unix()

        obj =
          day: day.format("D")
          unix: day.unix()
          index: i
          selected: day.unix() is today.unix()
          month: day.format("MMM")
        days.push(obj)

      day.add(1, "day")
      i += 1

    return days


  changeMonth: (event) ->
    self = @

    event.preventDefault()

    direction = event.target.dataset.month
    today = self.today.get()

    if direction is "prev"
      today.subtract(1, 'month')
    else
      today.add(1, 'month')

    if today < moment().startOf("day")
      today = moment().startOf("day")

    self.today.set today

    self.adjustPosition()


  changeDay: (event) ->
    self = @

    event.preventDefault()

    unix = event.target.dataset.day
    today = moment.unix(unix)

    unless today < moment().startOf("day")
      self.today.set today


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
