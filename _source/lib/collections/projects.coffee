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
    blackbox: true
  inHandsDate:
    type: Date
    optional: false
  orderType:
    type: String
    optional: false
  image:
    type: String
    optional: true
  details:
    type: [Object]
    optional: false
    blackbox: true
  conditions:
    type: [Object]
    optional: false
    blackbox: true
  notes:
    type: String
    optional: true
  status:
    type: String
    optional: false
  employee:
    type: String
    optional: false
  comments:
    type: [Object]
    optional: true
    blackbox: true
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
