WebDriver driver = new FirefoxDriver();
WebElement myDynamicElement = (new WebDriverWait(driver, 10))
  .until(new ExpectedCondition<WebElement>(){
	@Override
	public WebElement apply(WebDriver d) {
		return d.findElement(By.id("myDynamicElement"));
	}});
