var desk, extend = function (child, parent) {
    for (var key in parent) {
        if (hasProp.call(parent, key)) child[key] = parent[key];
    }
    function ctor() {
        this.constructor = child;
    }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor();
    child.__super__ = parent.prototype;
    return child;
},
    hasProp = {}.hasOwnProperty;

desk = (function (superClass) {
    extend(desk, superClass);

    function desk() {
        return desk.__super__.constructor.apply(this, arguments);
    }

    desk.register("desk");

    return desk;

})(Apollos.Component);