var webdriver = require('selenium-webdriver');
var until = webdriver.until;

var driver = new webdriver.Builder().forBrowser('firefox').build();
driver.get('http://somedomain/url_that_delays_loading');

var element = driver.wait(until.elementLocated(webdriver.By.name('some-dynamic-element')), 10000);