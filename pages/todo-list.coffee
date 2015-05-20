Page = require("astrolabe").Page

module.exports = Page.create
  url: get: -> browser.baseUrl
  mainTitle: get: -> browser.getTitle()
  contentTitle: get: -> element By.css("h1")
  inputForNewItem: get: -> element.all(By.model("todo")).first()
  addButton: get: -> element By.css("input[type=submit]")
  removeTodoItemButtons: get: ->
    element.all(By.css(".btn.btn-danger"))
  todoList: get: -> element.all By.repeater("todo in todos")
  typeNewItem: value: (item) ->
    page = @
    page.inputForNewItem.sendKeys item
  addTheItem: value: ->
    page = @
    page.addButton.click()
  removeTheItem: value: (index) ->
    page = @
    page.removeTodoItemButtons.get(index).click()
