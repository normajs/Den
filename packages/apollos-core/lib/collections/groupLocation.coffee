Apollos.groupLocations = new Mongo.Collection "groupLocations"

groupLocation = Apollos.generateSchema
  groupLocationId:
    type: Number
    decimal: false
  guid:
    type: String
    optional: true
    regEx: Apollos.regex.guid
  foreignId:
    type: String
    optional: true
  groupId:
    type: Number
    decimal: false
  locationId:
    type: Number
    decimal: false

Apollos.groupLocations.attachSchema groupLocation
