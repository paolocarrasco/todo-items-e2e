Page = require("astrolabe").Page

module.exports = Page.create
  url: get: -> browser.baseUrl
  mainTitle: get: -> browser.getTitle()
  contentTitle: get: -> element By.css("h1")
  inputForNewItem: get: -> element By.model("todo")
  addButton: get: -> element By.css("input[type=submit]")
  todoList: get: -> element.all By.repeater("todo in todos")
  typeNewItem: value: (item) ->
    page = @
    page.inputForNewItem.sendKeys item
  addTheItem: value: ->
    page = @
    page.addButton.click()
