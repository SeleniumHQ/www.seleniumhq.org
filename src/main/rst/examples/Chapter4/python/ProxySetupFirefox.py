from selenium import webdriver

PROXY_HOST = "host"
PROXY_PORT = 8080

fp = webdriver.FirefoxProfile()

# Direct = 0, Manual = 1, PAC = 2, AUTODETECT = 4, SYSTEM = 5
fp.set_preference("network.proxy.type", 1)

fp.set_preference("network.proxy.http", PROXY_HOST)
fp.set_preference("network.proxy.http_port", PROXY_PORT)
fp.set_preference("network.proxy.ftp", PROXY_HOST)
fp.set_preference("network.proxy.ftp_port", PROXY_PORT)
fp.set_preference("network.proxy.ssl", PROXY_HOST)
fp.set_preference("network.proxy.ssl_port", PROXY_PORT)

fp.set_preference("network.proxy.no_proxies_on", "") # set this value as desired

driver = webdriver.Firefox(firefox_profile=fp)
