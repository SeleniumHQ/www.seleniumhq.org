String PROXY = "localhost";
int PORT = 8080;

com.google.gson.JsonObject json = new com.google.gson.JsonObject();
json.addProperty("proxyType", "MANUAL");
json.addProperty("httpProxy", PROXY);
json.addProperty("httpProxyPort", PORT);
json.addProperty("sslProxy", PROXY);
json.addProperty("sslProxyPort", PORT);

DesiredCapabilities cap = new DesiredCapabilities();
cap.setCapability("proxy", json);

GeckoDriverService service =new GeckoDriverService.Builder(firefoxBinary)
  .usingDriverExecutable(new File("path to geckodriver"))
  .usingAnyFreePort()
  .usingAnyFreePort()
  .build();
service.start();

// GeckoDriver currently needs the Proxy set in RequiredCapabilities
driver = new FirefoxDriver(service, cap, cap);
