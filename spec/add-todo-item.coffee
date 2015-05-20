page = require("../pages/todo-list.coffee")

describe "Add a todo item to the list", ->
  Given -> page.go()
  And -> page.typeNewItem("Daisy")
  When -> page.addTheItem()
  Then ->
    expect(page.todoList.count()).toBe 4
