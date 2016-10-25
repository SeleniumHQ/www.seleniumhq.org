String PROXY = "localhost";
int PORT = 8080;

com.google.gson.JsonObject json = new com.google.gson.JsonObject();
json.addProperty("proxyType", "MANUAL");
json.addProperty("httpProxy", PROXY);
json.addProperty("httpProxyPort", PORT);
json.addProperty("sslProxy", PROXY);
json.addProperty("sslProxyPort", PORT);

DesiredCapabilities desired = DesiredCapabilities.firefox();
DesiredCapabilities required = new DesiredCapabilities();
required.setCapability("proxy", json);

driver = new FirefoxDriver(desired, required);