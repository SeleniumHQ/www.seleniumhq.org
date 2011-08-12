from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait # available since 2.4.0

ff = webdriver.Firefox()
ff.get("http://somedomain/url_that_delays_loading")
try:
    WebDriverWait(ff, 10).until(lambda driver : driver.find_element_by_id("myDynamicElement"))
finally:
    ff.quit()
