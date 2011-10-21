DesiredCapabilities cap = DesiredCapabilities.chrome();
cap.setCapability("chrome.switches", Arrays.asList("--proxy-server localhost:8080"));
WebDriver driver = new ChromeDriver(cap);
