from selenium import webdriver

driver = webdriver.Remote("http://localhost:4444/wd/hub", webdriver.DesiredCapabilities.FIREFOX)
driver.get("http://www.google.com")
driver.get_screenshot_as_file('/Screenshots/google.png')
