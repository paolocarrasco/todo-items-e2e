page = require("../pages/todo-list.coffee")

describe "List of todo items", ->

  it "Should have title", ->
    page.go()
    expect(page.mainTitle).toBe "List of My Todos"
    expect(page.contentTitle.getText()).toBe "My todos"
