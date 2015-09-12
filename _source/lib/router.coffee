




Apollos.Router.route("/", {
  action: (params, queryParams) ->

    Apollos.router.go("/desk")
})


Apollos.Router.route("/desk", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
    })

  name: "desk"
})

Apollos.Router.route("/calendar", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
    })

    if Meteor.isClient
      Apollos.Component.render("calendar", {}, "body")

  triggersExit: [
    destroyCalendar: (context) ->
      if Meteor.isClient
        Apollos.Component.destroyComponentForElement("#calendar")


  ]

  name: "calendar"
})


Apollos.Router.route("/search", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
    })

    if Meteor.isClient
      Apollos.Component.render("search", {}, "body")


  name: "calendar"
})
