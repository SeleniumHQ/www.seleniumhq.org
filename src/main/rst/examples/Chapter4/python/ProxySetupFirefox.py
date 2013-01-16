from selenium import webdriver
from selenium.webdriver.common.proxy import Proxy

myProxy = "host:8080"

proxy = Proxy({
    # Direct = 0, Manual = 1, PAC = 2, AUTODETECT = 4, SYSTEM = 5
    'proxyType': 1,
    'httpProxy': myProxy,
    'ftpProxy': myProxy,
    'sslProxy': myProxy,
    'noProxy': '' # set this value as desired
    })

driver = webdriver.Firefox(proxy=proxy)

# for remote
caps = webdriver.DesiredCapabilities.FIREFOX
proxy.add_to_capabilities(caps)

driver = webdriver.Remote(desired_capabilities=caps)
