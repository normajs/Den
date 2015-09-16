Meteor.publish "company", ->
  return Apollos.company.find()


Meteor.publish "services", ->
  return Apollos.services.find()


Meteor.publish "products",  ->

  products = Apollos.products.find({}, {sort: order: 1})

  return products

Meteor.publish "clients", ->
  return Apollos.clients.find()

Meteor.publish "projects", ->
  return Apollos.projects.find({}, {
    limit: 9
    sort:
      inHandsDate: 1
    })
