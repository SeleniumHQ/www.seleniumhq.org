from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains

driver = webdriver.Chrome()
driver.get("http://")
el = driver.find_element_by_id("alert")
ActionChains(driver).double_click(el).perform()
driver.switch_to_alert().accept()
driver.switch_to_alert().accept()
driver.quit()
