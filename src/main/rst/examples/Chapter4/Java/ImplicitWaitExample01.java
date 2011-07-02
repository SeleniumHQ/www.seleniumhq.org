WebDriver driver = new FirefoxDriver();
driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
WebElement myDynamicElement = driver.findElement(By.id("myDynamicElement"));
