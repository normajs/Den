Apollos.Router.route "/",
  action: ->
    Apollos.Layout.render "fixedNav",
      main: "app"
