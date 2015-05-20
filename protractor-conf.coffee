require "coffee-script/register"

exports.config =
  seleniumAddress: "http://localhost:4444/wd/hub"
  specs: ["spec/*.coffee"]
  capabilities:
    browserName: "chrome"
    chromeOptions:
      args: ["--disable-extensions", "--test-type", "--disable-web-security"]

  baseUrl: ("http://localhost:9000")

  jasmineNodeOpts:
    isVerbose: false
    defaultTimeoutInterval: 10000
