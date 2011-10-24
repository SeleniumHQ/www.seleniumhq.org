using System;
using OpenQA.Selenium.Remote;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;

namespace ProxySetup {

    public class ProxySetup {

        public void SetupProxy() {

            string PROXY = "localhost:8080";

            OpenQA.Selenium.Proxy proxy = new OpenQA.Selenium.Proxy();
            proxy.HttpProxy = PROXY;
            proxy.FtpProxy = PROXY;
            proxy.SslProxy = PROXY;
            DesiredCapabilities cap = new DesiredCapabilities();
            cap.SetCapability(CapabilityType.Proxy, proxy);

            IWebDriver driver = new FirefoxDriver(cap);
        }
    }
}
