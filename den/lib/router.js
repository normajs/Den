Apollos.Router.route("/", {
    action: function (params, queryParams) {
        return Apollos.Layout.render("page-layout", {
            template: "desk"
        });
    },
    name: "desk"
});