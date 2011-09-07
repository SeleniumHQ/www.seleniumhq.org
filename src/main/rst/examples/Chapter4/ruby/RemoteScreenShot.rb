require 'rubygems'
require 'selenium-webdrier'

begin
  driver = Selenium::WebDriver.for :remote, :url => "http://localhost:4444/wd/hub", :desired_capabilities => :firefox
  driver.get "http://www.google.com"
  driver.save_screenshot "/Screenshots/google.png"
ensure
  driver.quit
end
