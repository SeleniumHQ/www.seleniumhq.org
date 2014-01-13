from selenium import webdriver

dc = webdriver.DesiredCapabilities.CHROME.copy()
dc['chrome.switches'] = ['--proxy-server localhost:8080']
driver = webdriver.Chrome(desired_capabilities=dc)
