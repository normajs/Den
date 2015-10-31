Starting point
==============

-	Begin Order
-	Calculate Quote
-	Daily Tasks
-	Calendar/History
-	Search

Contexts
========

-	Client
-	Calendar
-	Employee

Client
------

Single card per client. Card contains orders and contact information.

Orders allows you to calculate quotes, begin and order, and see conversation around an order.

Contact gives you client details and previous orders with dates

Calendar
--------

Calendar view shows you your day and week views. It contains upcoming tasks as well as ability to go back to previous days / weeks.

Employee
--------

Reminders / daily tasks

Job Name Client Name Client Phone Client Email Shipping Address / Pickup In Hands Date

Order Model
-----------

```coffeescript

address = Apollos.generateSchema("address"
  {
    name:
      type: String
      optional: true
    street1:
      type: String
      optional: true
    street2:
      type: String
      optional: true
    city:
      type: String
      optional: true
    state:
      type: String
      optional: true
    country:
      type: String
      optional: true
    postalCode:
      type: String
      optional: true
    type:
      type: String
      defaultValue: "shipping"
  }, true
)


order = Apollos.generateSchema
  name:
    type: String
    optional: false
  client:
    type: String
    optional: false
  address:
    type: Apollos.schemas.location
    optional: true
  inHands:
    type: Date
    optional: false
  details:
    type: Object
    blackbox: true
    optional: true
  actions:
    type: [Boolean]
    optional: true


  # campusId:
  #   type: Number
  # name:
  #   type: String
  # shortCode:
  #   type: String
  # locationId:
  #   type: Number
  #   decimal: false
  # guid:
  #   type: String
  #   optional: true
  #   regEx: Apollos.regex.guid



```
