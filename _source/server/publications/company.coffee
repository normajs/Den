Meteor.publish "company", ->
  return Apollos.company.find()


Meteor.publish "services", ->
  return Apollos.services.find()


Meteor.publish "products",  ->

  products = Apollos.products.find({}, {sort: order: 1})

  return products
