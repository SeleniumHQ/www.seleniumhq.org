from selenium import webdriver

webdriver.DesiredCapabilities.CHROME['chrome.switches'] = ['--proxy-server localhost:8080']
driver = webdriver.Chrome()
