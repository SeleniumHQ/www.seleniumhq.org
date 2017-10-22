var webdriver = require('selenium-webdriver');
//Make sure geckodriver.exe is availabe in PATH
var driver = new webdriver.Builder().forBrowser('firefox').build();
driver.get('http://www.google.com');

var element = driver.findElement(webdriver.By.name('q'));
element.sendKeys('Cheese!');
element.submit();

driver.getTitle().then(function(title) {
    console.log('Page title is: ' + title);
});

driver.wait(function() {
    return driver.getTitle().then(function(title) {
        return title.toLowerCase().lastIndexOf('cheese!', 0) === 0;
    });
}, 3000);

driver.getTitle().then(function(title) {
    console.log('Page title is: ' + title);
});

driver.quit();