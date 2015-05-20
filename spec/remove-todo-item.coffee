page = require("../pages/todo-list.coffee")

describe "Remove a todo item from the list", ->
  Given -> page.go()
  When -> page.removeTheItem(2)
  Then -> expect(page.todoList.count()).toBe 2
