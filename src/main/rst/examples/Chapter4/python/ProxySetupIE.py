from selenium import webdriver

PROXY = "localhost:8080"

# Create a copy of desired capabilities object.
desired_capabilities = webdriver.DesiredCapabilities.INTERNETEXPLORER.copy()
# Change the proxy properties of that copy.
desired_capabilities['proxy'] = {
    "httpProxy":PROXY,
    "ftpProxy":PROXY,
    "sslProxy":PROXY,
    "noProxy":None,
    "proxyType":"MANUAL",
    "class":"org.openqa.selenium.Proxy",
    "autodetect":False
}

# you have to use remote, otherwise you'll have to code it yourself in python to 
# dynamically changing the system proxy preferences
driver = webdriver.Remote("http://localhost:4444/wd/hub", desired_capabilities)
