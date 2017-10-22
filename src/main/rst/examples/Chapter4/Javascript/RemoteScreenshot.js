var webdriver = require('selenium-webdriver');
var fs = require('fs');
var serverURL = 'http://localhost:4444/wd/hub';
var caps = {
    browserName: 'firefox'
}
var driver;
try {
    driver = new webdriver.Builder().usingServer(serverURL).withCapabilities(caps).build();
    driver.get('http://www.google.com');
    driver.takeScreenshot().then(function(data) {
        fs.writeFileSync('./google.png', new Buffer(data, 'base64'));
    })
} catch (e) {
    console.log('Exception occurred');
} finally {
    driver.quit();
}