# Todo Items E2E
Solution to run E2E tests against https://github.com/paolocarrasco/todo-items.

## Requirements
Prior to run the tests, it is required to have installed the following in your machine:
- NodeJS (It includes NPM): version 0.12+.
Download NodeJS: https://nodejs.org/download/

## Before running
After cloning this repo into your machine, make sure you run the following instructions in the terminal:
- Install the packages:
```console
> npm install
```

## How to run the tests:

1. Start the Selenium server:
./node_modules/.bin/webdriver-manager start

2. Open a new terminal and run Protractor:
./node_modules/.bin/protractor protractor-conf.coffee
