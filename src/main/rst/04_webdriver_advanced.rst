WebDriver: Advanced Usage
==========================

.. _chapter04-reference:

.. _explicit_and_implicit_waits-reference:

Explicit and Implicit Waits
---------------------------
Waiting is having the automated task execution elapse a certain amount of time before continuing with the next step.
You should choose to use Explicit Waits or Implicit Waits.

WARNING: Do not mix implicit and explicit waits. Doing so can cause unpredictable wait times. For example setting an
implicit wait of 10 seconds and an explicit wait of 15 seconds, could cause a timeout to occur after 20 seconds.

Explicit Waits
~~~~~~~~~~~~~~
An explicit wait is code you define to wait for a certain condition to occur before proceeding further in the code.
The worst case of this is Thread.sleep(), which sets the condition to an exact time period to wait. 
There are some convenience methods provided that help you write code that will wait only as long as required.
WebDriverWait in combination with ExpectedCondition is one way this can be accomplished.

.. literalinclude:: /examples/Chapter4/Java/ExplicitWaitExample01.java
   :language: java

.. literalinclude:: /examples/Chapter4/CSharp/ExplicitWaitExample01.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/ExplicitWaitExample01.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/ExplicitWaitExample01.rb
   :language: ruby

This waits up to 10 seconds before throwing a TimeoutException or if it finds the element will return it in 0 - 10 seconds.
WebDriverWait by default calls the ExpectedCondition every 500 milliseconds until it returns successfully. A successful return value for the ExpectedCondition function type is a Boolean value of true, or a non-null object.

This example is also functionally equivalent to the first `Implicit Waits`_ example.

Expected Conditions
+++++++++++++++++++
There are some common conditions that are frequently encountered when automating web browsers. Listed below are 
a few examples for the usage of such conditions. The Java, C#, and Python bindings include convienence methods 
so you don't have to code an ExpectedCondition class yourself or create your own utility package for them.

* Element is Clickable - it is Displayed and Enabled.

.. code-block:: java

    WebDriverWait wait = new WebDriverWait(driver, 10);
    WebElement element = wait.until(ExpectedConditions.elementToBeClickable(By.id("someid")));

.. code-block:: csharp

   WebDriverWait wait = new WebDriverWait(driver, TimeSpan.FromSeconds(10));
   IWebElement element = wait.Until(ExpectedConditions.ElementToBeClickable(By.Id("someid")));

.. code-block:: python

    from selenium.webdriver.support import expected_conditions as EC
    wait = WebDriverWait(driver, 10)
    element = wait.until(EC.element_to_be_clickable((By.ID,'someid')))

The ExpectedConditions package (`Java <https://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/support/ui/ExpectedConditions.html>`_)  (`Python <https://seleniumhq.github.io/selenium/docs/api/py/webdriver_support/selenium.webdriver.support.expected_conditions.html>`_) (`.NET <https://seleniumhq.github.io/selenium/docs/api/dotnet/html/T_OpenQA_Selenium_Support_UI_ExpectedConditions.htm>`_) contains a set of predefined conditions to use with WebDriverWait.

Implicit Waits
~~~~~~~~~~~~~~
An implicit wait is to tell WebDriver to poll the DOM for a certain amount of time when trying to find an element or elements if they are not immediately available.
The default setting is 0. Once set, the implicit wait is set for the life of the WebDriver object instance.

.. literalinclude:: /examples/Chapter4/Java/ImplicitWaitExample01.java
   :language: java

.. literalinclude:: /examples/Chapter4/CSharp/ImplicitWaitExample01.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/ImplicitWaitExample01.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/ImplicitWaitExample01.rb
   :language: ruby

RemoteWebDriver
---------------

Taking a Screenshot
~~~~~~~~~~~~~~~~~~~

.. literalinclude:: /examples/Chapter4/Java/RemoteScreenShot.java
   :language: java

.. literalinclude:: /examples/Chapter4/CSharp/RemoteScreenShot.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/RemoteScreenShot.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/RemoteScreenShot.rb
   :language: ruby

Using a FirefoxProfile
~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: java
    
    FirefoxProfile fp = new FirefoxProfile();
    // set something on the profile...
    DesiredCapabilities dc = DesiredCapabilities.firefox();
    dc.setCapability(FirefoxDriver.PROFILE, fp);
    WebDriver driver = new RemoteWebDriver(dc);
    
.. code-block:: csharp

   FirefoxProfile fp = new FirefoxProfile();
   // set something on the profile...
   DesiredCapabilities dc = DesiredCapabilities.Firefox();
   dc.SetCapability(FirefoxDriver.ProfileCapabilityName, fp);
   IWebDriver driver = new RemoteWebDriver(dc);

.. code-block:: python
    
    from selenium import webdriver
    fp = webdriver.FirefoxProfile()
    # set something on the profile...
    driver = webdriver.Remote(desired_capabilities=webdriver.DesiredCapabilities.FIREFOX, browser_profile=fp)

Using ChromeOptions
~~~~~~~~~~~~~~~~~~~

.. code-block:: java

    ChromeOptions options = new ChromeOptions();
    // set some options
    DesiredCapabilities dc = DesiredCapabilities.chrome();
    dc.setCapability(ChromeOptions.CAPABILITY, options);
    WebDriver driver = new RemoteWebDriver(dc);
    
.. code-block:: csharp

   var options = new ChromeOptions();
   // set some options
   DesiredCapabilities dc = DesiredCapabilities.Chrome();
   dc.SetCapability(ChromeOptions.Capability, options);
   IWebDriver driver = new RemoteWebDriver(dc);

.. code-block:: python
    
    from selenium import webdriver
    options = webdriver.ChromeOptions()
    # set some options
    driver = webdriver.Remote(desired_capabilities=options.to_capabilities())

AdvancedUserInteractions
------------------------

The Actions class(es) allow you to build a Chain of Actions and perform them.
There are too many possible combinations to count. Below are a few of the common
interactions that you may want to use. For a full list of actions please refer to
the API docs `Java <https://seleniumhq.github.io/selenium/docs/api/java/index.html?org/openqa/selenium/interactions/Actions.html>`_ 
`C# <https://seleniumhq.github.io/selenium/docs/api/dotnet/html/AllMembers_T_OpenQA_Selenium_Interactions_Actions.htm>`_ 
`Ruby <https://seleniumhq.github.io/selenium/docs/api/rb/Selenium/WebDriver/ActionBuilder.html>`_ 
`Python <https://seleniumhq.github.io/selenium/docs/api/py/webdriver/selenium.webdriver.common.action_chains.html>`_

The Advanced User Interactions require native events to be enabled. Here's a table
of the current support Matrix for native events:

=================  ===  ===  ===  ===  ======  ======  =============  ===========  ==========  ===== ======= ===
platform           IE6  IE7  IE8  IE9  FF3.6   FF10+   Chrome stable  Chrome beta  Chrome dev  Opera Android iOS  
=================  ===  ===  ===  ===  ======  ======  =============  ===========  ==========  ===== ======= ===
Windows XP         Y    Y    Y    n/a  Y       Y       Y              Y            Y           ?     Y [1]_  n/a
Windows 7          n/a  n/a  Y    Y    Y       Y       Y              Y            Y           ?     Y [1]_  n/a
Linux (Ubuntu)     n/a  n/a  n/a  n/a  Y [2]_  Y [2]_  Y              Y            Y           ?     Y [1]_  n/a
Mac OSX            n/a  n/a  n/a  n/a  N       N       Y              Y            Y           ?     Y [1]_  N
Mobile Device      n/a  n/a  n/a  n/a  n/a     ?       n/a            n/a          n/a         ?     Y       N 
=================  ===  ===  ===  ===  ======  ======  =============  ===========  ==========  ===== ======= ===

.. [1] Using the emulator

.. [2] With explicitly enabling native events


.. 
    #Mouse Movement
    #~~~~~~~~~~~~~~
    #
    #These examples show how to Mouse over an element, drag and drop, and move the mouse out of an element
    #
    #.. literalinclude:: /examples/Chapter4/Java/AUIMouseMove.java
    #   :language: java
    #
    #.. literalinclude:: /examples/Chapter4/CSharp/AUIMouseMove.cs
    #   :language: csharp
    #
    #.. literalinclude:: /examples/Chapter4/python/AUIMouseMove.py
    #   :language: python
    #
    #.. literalinclude:: /examples/Chapter4/ruby/AUIMouseMove.rb
    #   :language: ruby
    #
    #Clicks
    #~~~~~~
    #
    #These examples show you how to context click (right click),
    #perform a simple click, and double click.
    #
    #.. literalinclude:: /examples/Chapter4/Java/AUIClicking.java
    #   :language: java
    #
    #.. literalinclude:: /examples/Chapter4/CSharp/AUIClicking.cs
    #   :language: csharp
    #
    #.. literalinclude:: /examples/Chapter4/python/AUIClicking.py
    #   :language: python
    #
    #.. literalinclude:: /examples/Chapter4/ruby/AUIClicking.rb
    #   :language: ruby
    #
    #Modifier Keys
    #~~~~~~~~~~~~~
    #
    #These examples show you how to use a `modifier key <http://en.wikipedia.org/modifier_key>`_.
    #
    #.. literalinclude:: /examples/Chapter4/Java/AUIModifierKeys.java
    #   :language: java
    #
    #.. literalinclude:: /examples/Chapter4/CSharp/AUIModifierKeys.cs
    #   :language: csharp
    #
    #.. literalinclude:: /examples/Chapter4/python/AUIModifierKeys.py
    #   :language: python
    #
    #.. literalinclude:: /examples/Chapter4/ruby/AUIModifierKeys.rb
    #   :language: ruby

Browser Startup Manipulation
----------------------------
Todo

Topics to be included:

- restoring cookies
- changing firefox profile
- running browsers with plugins

Using a Proxy
~~~~~~~~~~~~~

Internet Explorer
+++++++++++++++++
The easiest and recommended way is to manually set the proxy on the machine that will be running the test.
If that is not possible or you want your test to run with a different configuration or proxy,
then you can use the following technique that uses a Capababilities object. This temporarily changes the system's
proxy settings and changes them back to the original state when done.

.. literalinclude:: /examples/Chapter4/Java/ProxySetupIE.java
    :language: java

.. #literalinclude:: /examples/Chapter4/CSharp/ProxySetupIE.cs
..    :language: csharp

.. literalinclude:: /examples/Chapter4/python/ProxySetupIE.py
    :language: python

.. literalinclude:: /examples/Chapter4/ruby/ProxySetupIE.rb
    :language: ruby

Chrome
++++++
Is basically the same as internet explorer. It uses the same configuration on the machine as IE does (on windows).
On Mac it uses the System Preference -> Network settings. On Linux it uses (on Ubuntu) System > Preferences > 
Network Proxy Preferences (Alternatively in "/etc/environment" set http_proxy).
As of this writing it is unknown how to set the proxy programmatically. 

.. TODO (lukeis), this does not work! So the method of chrome switches is commented out.
.. Here's how to set a proxy with Chrome Switches.

.. #literalinclude:: /examples/Chapter4/Java/ProxySetupChrome.java
..    :language: java

.. #literalinclude:: /examples/Chapter4/CSharp/ProxySetupChrome.cs
..    :language: csharp

.. #literalinclude:: /examples/Chapter4/python/ProxySetupChrome.py
..    :language: python

.. #literalinclude:: /examples/Chapter4/ruby/ProxySetupChrome.rb
..    :language: ruby

Firefox up to version 47.0.1
++++++++++++++++++++++++++++
Firefox maintains its proxy configuration in a profile. You can preset the
proxy in a profile and use that Firefox Profile or you can set it on profile
that is created on the fly as is shown in the following example -
deprecated, no longer working with GeckoDriver.

.. literalinclude:: /examples/Chapter4/Java/ProxySetupFirefox.java
    :language: java

.. #literalinclude:: /examples/Chapter4/CSharp/ProxySetupFirefox.cs
..    :language: csharp

.. literalinclude:: /examples/Chapter4/python/ProxySetupFirefox.py
    :language: python

.. literalinclude:: /examples/Chapter4/ruby/ProxySetupFirefox.rb
    :language: ruby

Firefox version 48 and newer - GeckoDriver
++++++++++++++++++++++++++++++++++++++++++
Firefox maintains its proxy configuration in a profile. You can preset the
proxy in a profile and use that Firefox Profile or you can set it on profile
that is created on the fly as is shown in the following example. With
GeckoDriver the proxy has to be passed through the required capabilities.

.. literalinclude:: /examples/Chapter4/Java/ProxySetupFirefoxMarionette.java
    :language: java

.. #literalinclude:: /examples/Chapter4/CSharp/ProxySetupFirefoxMarionette.cs
..    :language: csharp

.. #literalinclude:: /examples/Chapter4/python/ProxySetupFirefoxMarionette.py
..    :language: python

.. #literalinclude:: /examples/Chapter4/ruby/ProxySetupFirefoxMarionette.rb
..    :language: ruby

Opera
+++++
Todo

.. #literalinclude:: /examples/Chapter4/Java/ProxySetupOpera.java
..    :language: java

.. #literalinclude:: /examples/Chapter4/CSharp/ProxySetupOpera.cs
..    :language: csharp

.. #literalinclude:: /examples/Chapter4/python/ProxySetupOpera.py
..    :language: python

.. #literalinclude:: /examples/Chapter4/ruby/ProxySetupOpera.rb
..    :language: ruby

HTML5
-----
Todo

Parallelizing Your Test Runs
----------------------------
While TestNG supports concurrent test execution, management of web driver lifecycle for Selenium testing can be challenging. The open source project Concurrent Selenium TestNG (`COSENG <https://github.com/siostechcorp/coseng>`_) aims to alleviate this burden. It supports TestNG's parallelization for methods, tests and classes. Additionally it can provide a single web driver instance that persists across all tests in a suite.
