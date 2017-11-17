String PROXY = "localhost";
int PORT = 8080;
String PROXYANDPORT = PROXY + ":" + PORT;

com.google.gson.JsonObject json = new com.google.gson.JsonObject();
json.addProperty("proxyType", "MANUAL");
json.addProperty("httpProxy", PROXYANDPORT);
json.addProperty("sslProxy", PROXYANDPORT);

DesiredCapabilities cap = new DesiredCapabilities();
cap.setCapability("proxy", json);

FirefoxOptions options = new FirefoxOptions(cap);

GeckoDriverService service =new GeckoDriverService.Builder()
  .usingAnyFreePort()
  .usingAnyFreePort()
  .build();
service.start();

WebDriver driver = new FirefoxDriver(service, options);
