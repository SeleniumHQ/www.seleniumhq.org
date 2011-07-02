from selenium import webdriver
import time

if __name__=='__main__':
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
    
    # we have to wait for the page to refresh, the last thing that seems to be updated is the title
    while not driver.title.startswith("cheese!"):
        # this is an infinite loop... should probably put some logic to break after x time
        # sleep for a second
        time.sleep(1)
    
    # You should see "cheese! - Google Search"
    print driver.title
    
    driver.quit()
