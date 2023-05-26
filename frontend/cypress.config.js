const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    // baseUrl: 'http://react:3000',
    baseUrl: 'http://localhost:8080',
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
  screenshotOnRunFailure: false,
  video: false
});