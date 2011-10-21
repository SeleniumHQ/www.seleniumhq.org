require 'rubygems'
require 'selenium-webdriver'

PROXY = 'localhost:8087'

profile = Selenium::WebDriver::Firefox::Profile.new
profile.proxy = Selenium::WebDriver::Proxy.new(
  :http => PROXY,
  :ftp => PROXY,
  :ssl => PROXY,
  :no_proxy => nil
)

driver = Selenium::WebDriver.for :firefox, :profile => profile
