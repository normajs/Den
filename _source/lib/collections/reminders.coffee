

Apollos.reminders = new Mongo.Collection "reminders"


reminders = Apollos.generateSchema
  title:
    type: String
    optional: false
  relationship:
    type: [Object]
    optional: true
  note:
    type: String
    optional: true
  actDate:
    type: Date
    optional: false
  archived:
    type: Boolean
    optional: true
  deleted:
    type: Boolean
    optional: true

Apollos.reminders.attachSchema reminders
