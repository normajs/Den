class Apollos.Forms.TextArea extends Apollos.Forms.Input
  @register "Apollos.Forms.TextArea"
  template: -> "Apollos.Forms.TextArea"


  events: -> [

    "focus textarea": @.focused


    "blur textarea": @.blurred

    # can this be a change event?
    # "focus textarea, keyup textarea, blur textarea": @.changed


    "focus textarea, keyup textarea": @.active

  ]

  setValue: (value) ->

    value or= ""
    @.value.set value
    @.find("textarea").value = value
