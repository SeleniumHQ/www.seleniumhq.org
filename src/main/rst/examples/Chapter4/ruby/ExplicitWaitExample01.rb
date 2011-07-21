require 'rubygems' # not required for ruby 1.9 or if you installed without gem
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://somedomain/url_that_delays_loading"

wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
begin
element = wait.until { driver.find_element(:id => "some-dynamic-element") }
ensure
driver.quit
end
