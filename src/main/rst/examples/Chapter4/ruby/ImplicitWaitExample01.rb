require 'rubygems' # not required for ruby 1.9 or if you installed without gem
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.manage.timeouts.implicit_wait = 10 # seconds

driver.get "http://somedomain/url_that_delays_loading"
begin
element = driver.find_element(:id => "some-dynamic-element")
ensure
driver.quit
end
