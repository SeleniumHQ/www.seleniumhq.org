from selenium import webdriver

driver = webdriver.Firefox()
driver.get("http://www.google.com")
driver.get_screenshot_as_file('/Screenshots/google.png')
