Apollos.projects = new Mongo.Collection "projects"


projects = Apollos.generateSchema
  name:
    type: String
    optional: false
  client:
    type: String
    optional: false
  address:
    type: Object
    optional: false
  inHandsDate:
    type: Date
    optional: false
  orderType:
    type: String
    optional: false
  details:
    type: [Object]
    optional: false
  conditions:
    type: [Object]
    optional: false
  status:
    type: String
    optional: false
  employee:
    type: String
    optional: false
  archived:
    type: Boolean
    optional: true
  deleted:
    type: Boolean
    optional: true
  lastActed:
    type: Date
    optional: false



Apollos.projects.attachSchema projects
