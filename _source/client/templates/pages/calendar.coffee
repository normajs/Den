

class Calendar extends Apollos.Component
  @register "calendar"

  vars: -> [
    desktopDuration: 250
    mobileDuration: 400
    today: null
    firstDay: null
    lastDay: null
    month: moment().format("MMMM")
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
      Blaze.remove @._internals.templateInstance.view
      Apollos.Router.go("/desk")

    "click [data-day]": @.changeDay
    "click [data-more-days]": @.showMoreDays
  ]


  months: ->
    months = []

    monthCount = [0..11]

    for month, index in monthCount
      index = index + 1

      _month = moment("#{index}", "M").format("MMMM")
      months.push({
        name: _month
        val: _month
      })

    return months

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

  showMoreDays: ->

    

  changeMonth: (event) ->
    self = @

    event.preventDefault()

    day = event.currentTarget.dataset.day
    currentMonth = self.month.get()
    newMonth = moment(day, "X").format("MMMM")

    if newMonth isnt currentMonth
      self.month.set newMonth



  changeDay: (event) ->
    self = @

    event.preventDefault()

    unix = event.currentTarget.dataset.day
    today = moment.unix(unix)

    unless today < moment().startOf("day")
      self.today.set today
