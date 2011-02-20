WebDriver: Advanced Usage
==========================

.. _chapter04-reference:

Explicit and Implicit Waits
---------------------------
Todo

RemoteWebDriver
---------------
You'll start by using the HtmlUnit Driver. 
This is a pure Java driver that runs entirely in-memory. Because of this, you won't see a new browser window open. 

.. literalinclude:: /examples/Chapter4/Java/HtmlUnitExample.java
   :language: java

HtmlUnit isn't confined to just Java.  Selenium makes accessing HtmlUnit easy from any language. Below
is the same example in C#. Note that you'll need to run the remote WebDriver server
to use HtmlUnit from C#

.. code-block:: c#

    using OpenQA.Selenium;
    using OpenQA.Selenium.Remote;

    class Example
    {
        static void Main(string[] args)
        {
            //to use HtmlUnit from .Net we must access it through the RemoteWebDriver
            //Download and run the selenium-server-standalone-2.0b1.jar locally to run this example
            ICapabilities desiredCapabilities = DesiredCapabilities.HtmlUnit();
            IWebDriver driver = new RemoteWebDriver(desiredCapabilities);

            //the .Net Webdriver relies on a slightly different API to navigate to
            //web pages because 'get' is a keyword in .Net
            driver.Navigate().GoToUrl("http://google.ca/");

            //The rest of the code should look very similar to the Java library
            IWebElement element = driver.FindElement(By.Name("q"));
            element.SendKeys("Cheese!");
            element.Submit();
            System.Console.WriteLine("Page title is: " + driver.Title);
            driver.Quit();
            System.Console.ReadLine();
        }
    }
    
Compile and run this. You should see a line with the title of the Google search 
results as output on the console. Congratulations, you've managed to get 
started with WebDriver!


AdvancedUserInteractions
------------------------
Todo

HTML5
-----
Todo

Cookies
-------
Todo

Browser Startup Manipulation
----------------------------
Todo

Topics to be included:

- restoring cookies
- changing firefox profile
- running browsers with plugins

Parallelizing Your Test Runs
----------------------------
Todo