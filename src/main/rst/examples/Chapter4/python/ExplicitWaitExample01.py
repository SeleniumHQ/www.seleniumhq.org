from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException
import time

class WebDriverWait:
    def __init__(self, driver, timeout):
        self._driver = driver
        self._timeout = timeout
        if timeout == 0:
        	self._timeout = 0.5

    def until(self, method):
        for i in xrange(int(2 * self._timeout)):
            try:
                value = method(self._driver)
                print value
                if value != False:
                    return value
            except NoSuchElementException, nse:
                pass
            time.sleep(0.5)
        raise TimeoutException()
 
def until(driver):
    return driver.find_element_by_id("myDynamicElement")

ff = webdriver.Firefox()
ff.get("http://somedomain/url_that_delays_loading")
try:
    WebDriverWait(ff, 10).until(until)
finally:
    ff.quit()
