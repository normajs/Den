

Apollos.Router.route("/", {
  action: (params, queryParams) ->

    Apollos.Layout.render("page-layout", {
      template: "desk"
    })

  name: "desk"
})
