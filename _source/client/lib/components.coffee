
# temp shim for render
Apollos.Component.render = (componentName, data, domParent) ->


  # if existingCalendar
  #       calendarComponent = Apollos.Component.getComponentForElement(existingCalendar)
  #       calendarComponent.dismiss()
  #
  #     input = self.find("input")
  #     input.readonly = true
  #
  template = Apollos.Component.getComponent componentName
  template = template.renderComponent()

  template = Blaze.renderWithData(
    template
    data
    document.querySelectorAll(domParent)[0]
  )

  return template


Apollos.Component.destroyComponentForElement = (domElement) ->

  domElement = document.querySelectorAll(domElement)[0]
  component = Apollos.Component.getComponentForElement domElement
  Blaze.remove component._internals.templateInstance.view
  # console.log component
  # calendarComponent.dismiss()
