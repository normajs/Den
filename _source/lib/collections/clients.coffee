
Apollos.clients = new Mongo.Collection "clients"


clients = Apollos.generateSchema
  name:
    type: String
    optional: false
  avatar:
    type: String
    optional: true
  projects:
    type: [String]
    optional: true
  address:
    type: [Object]
    blackbox: true
    optional: true
  email:
    type: Apollos.regex.email
    optional: true
  phone:
    type: [Object]
    optional: true
    blackbox: true
  notes:
    type: String
    optional: true
  contacts:
    type: [Object]
    blackbox: true
    optional: false
  archived:
    type: Boolean
    optional: true
  deleted:
    type: Boolean
    optional: true
  lastOrdered:
    type: Date
    optional: false



Apollos.clients.attachSchema clients
