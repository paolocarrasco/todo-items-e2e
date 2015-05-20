Page = require("astrolabe").Page

module.exports = Page.create
  url: get: -> browser.baseUrl
  mainTitle: get: -> browser.getTitle()
  contentTitle: get: -> element By.css("h1")
