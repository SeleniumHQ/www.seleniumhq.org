from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains

driver = webdriver.Chrome()
driver.get("http://html5demos.com/drag")
bin = driver.find_element_by_id("bin")
el = driver.find_element_by_id("two")
ActionChains(driver).click_and_hold(el).move_to_element(bin).release(el).perform()
