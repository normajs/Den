




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
      modal: "calendar"
    })



  name: "calendar"
})

Apollos.Router.route("/new", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "new"
    })

  name: "new"
})

Apollos.Router.route("/new/:active", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "new"
      data: params
    })

  name: "new"
})



Apollos.Router.route("/search", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "search"
    })

  name: "search"
})
