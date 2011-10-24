using System;
using OpenQA.Selenium.Remote;
using OpenQA.Selenium;

namespace ProxySetup {

    public class ProxySetup {

        public void SetupProxy() {

            string PROXY = "localhost:8080";

            OpenQA.Selenium.Proxy proxy = new OpenQA.Selenium.Proxy();
            proxy.HttpProxy = PROXY;
            proxy.FtpProxy = PROXY;
            proxy.SslProxy = PROXY;
            DesiredCapabilities cap = DesiredCapabilities.InternetExplorer();
            cap.SetCapability(CapabilityType.Proxy, proxy);

            IWebDriver driver = new RemoteWebDriverDriver(new Uri("http://localhost:4444/wd/hub"), cap);
        }
    }
}
