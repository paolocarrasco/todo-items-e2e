page = require("../pages/todo-list.coffee")

describe "List of todo items", ->
  When -> page.go()
  Then -> expect(page.mainTitle).toBe "List of My Todos"
  And -> expect(page.contentTitle.getText()).toBe "My todos"
