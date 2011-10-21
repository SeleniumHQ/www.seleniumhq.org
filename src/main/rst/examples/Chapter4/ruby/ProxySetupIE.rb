require 'rubygems' 
require 'selenium-webdriver'

PROXY = "localhost:8080"

caps = Selenium::WebDriver::Remote::Capabilities.ie(:proxy => Selenium::WebDriver::Proxy.new(
  :http => PROXY,
  :ftp=>PROXY,
  :ssl=>PROXY,
  :no_proxy=>nil
))
# you have to use remote, otherwise you'll have to code it yourself in ruby to 
# dynamically changing the system proxy preferences
driver = Selenium::WebDriver.for :remote,  :url => "http://localhost:4444/wd/hub", :desired_capabilities => caps
