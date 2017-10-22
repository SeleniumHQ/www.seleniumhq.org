var webdriver = require('selenium-webdriver');
var driver = new webdriver.Builder().forBrowser('firefox').build();
driver.manage().timeouts().implicitlyWait(10);
driver.get('http://somedomain/url_that_delays_loading');
var element = driver.findElement(webdriver.By.name('some-dynamic-element'));