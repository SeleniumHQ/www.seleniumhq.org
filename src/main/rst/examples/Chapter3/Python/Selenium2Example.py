from selenium import webdriver
from selenium.common.exceptions import TimeoutException
import time

# Create a new instance of the Firefox driver
driver = webdriver.Firefox()

# go to the google home page
driver.get("http://www.google.com")

# find the element that's name attribute is q (the google search box)
inputElement = driver.find_element_by_name("q")

# type in the search
inputElement.send_keys("Cheese!")

# submit the form (although google automatically searches now without submitting)
inputElement.submit()

# the page is ajaxy so the title is originally this:
print driver.title

try:
    # we have to wait for the page to refresh, the last thing that seems to be updated is the title
    for i in xrange(10):
        if driver.title.startswith("cheese!"):
            break
        # sleep for a second
        time.sleep(1)
    else:
        raise TimeoutException()

    # You should see "cheese! - Google Search"
    print driver.title

finally:
    driver.quit()
