



###

  Home / Desk Layout

###
Apollos.Router.route("/", {
  action: (params, queryParams) ->

    Apollos.router.go("/desk")
})


Apollos.Router.route("/desk", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: false
      data: false
    })

  name: "desk"
})


###

  Calendar

###
Apollos.Router.route("/calendar", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "calendar"
      data: false
    })



  name: "calendar"
})


###

  Create new item

###
Apollos.Router.route("/new", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "new"
      data: false
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

})



###

  Search

###

Apollos.Router.route("/search", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "search"
      data: false
    })

  name: "search"
})


###

  Projects

###

Apollos.Router.route("/project/:client/:projectIdString", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "product"
      data: params
    })

})

Apollos.Router.route("/project/:client/:projectIdString/:active", {
  action: (params, queryParams) ->

    console.log params

    Apollos.Layout.render("page-layout", {
      template: "desk"
      modal: "product"
      data: params
    })

})
