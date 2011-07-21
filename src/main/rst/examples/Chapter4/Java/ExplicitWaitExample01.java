WebDriver driver = new FirefoxDriver();
driver.get("http://somedomain/url_that_delays_loading");
WebElement myDynamicElement = (new WebDriverWait(driver, 10))
  .until(new ExpectedCondition<WebElement>(){
	@Override
	public WebElement apply(WebDriver d) {
		return d.findElement(By.id("myDynamicElement"));
	}});
