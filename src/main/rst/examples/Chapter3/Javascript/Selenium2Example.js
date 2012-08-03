var driver = new webdriver.Builder().build();
driver.get('http://www.google.com').then(function() {
  return driver.findElement(webdriver.By.name('q')).then(function(searchBox){
    return searchBox.sendKeys('webdriver').then(function() {
      return driver.findElement(webdriver.By.name('btnG')).then(function(submitButton) {
        return submitButton.click().then(function() {
          var newTitle;
          driver.wait(function() {
            driver.getTitle().then(function(title) {
              newTitle = title;
            });
            return (newTitle && newTitle != "Google");
          }, 3000).then(function () {
            require('assert').equal('webdriver - Google Search', newTitle);
          });
        });
      });
    });
  });
});
