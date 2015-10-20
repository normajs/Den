Apollos.Router.route "/",
  action: ->
    Apollos.Layout.render "layout",
      main: "app"
