WebDriver: Advanced Usage
==========================

.. _chapter04-reference:

Explicit and Implicit Waits
---------------------------
Waiting is having the automated task execution elapse a certain amount of time before continuing with the next step.

Explicit Waits
~~~~~~~~~~~~~~
An explicit waits is code you define to wait for a certain condition to occur before proceeding further in the code.
The worst case of this is Thread.sleep(), which sets the condition to an exact time period to wait. 
There are some convenience methods provided that help you write code that will wait only as long as required.
WebDriverWait in combination with ExpectedCondition is one way this can be accomplished.

.. literalinclude:: /examples/Chapter4/Java/ExplicitWaitExample01.java
   :language: java
   
This waits up to 10 seconds before throwing an Element not found Exception or if it finds the element will return it in 0 - 10 seconds.
WebDriverWait by default calls the ExpectedCondition every 500 milliseconds until it returns successfully. A successful return is
for ExpectedCondition type is Boolean return true or not null return value for all other ExpectedCondition types.

This example is also functionally equivalent to the first `Implicit Waits`_ example.

Implicit Waits
~~~~~~~~~~~~~~
An implicit wait is to tell WebDriver to poll the DOM for a certain amount of time when trying to find an element or elements if they are not immediately available.
The default setting is 0. Once set, the implicit wait is set for the life of the WebDriver object instance.

.. literalinclude:: /examples/Chapter4/Java/ImplicitWaitExample01.java
   :language: java


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