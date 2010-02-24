Selenium 2.0 and WebDriver
==========================

.. _chapter09-reference:

The Selenium developers are working towards a Selenium 2.0 release.  The primary new feature
will be the integration of the WebDriver API into Selenium-RC.  This will address
a number of Selenium 1.0 limitations along with providing an alternative programming
interface.  The goal is to develop a standardized Selenium API that provides additional
support for a larger number of browsers along with improved support for 
advanced web-app testing problems.

The best explanation for why WebDriver and Selenium are merging was detailed by Simon Stewart, the creator of WebDriver, in a joint email to the WebDriver and Selenium community on August 6, 2009.

	"Why are the projects merging?  Partly because webdriver addresses some shortcomings in 
	selenium (by being able to bypass the JS sandbox, for example. And we've got a gorgeous API),
	partly because selenium addresses some shortcomings in webdriver (such as supporting a broader
	range of browsers) and partly because the main selenium contributors and I felt that it was the
	best way to offer users the best possible framework."

*PLEASE NOTE:  Selenium 2.0 is currently under development.  The WebDriver integration is
currently undergoing testing. We encourage advanced Selenium users to try it out.  Users new to Selenium, should wait until Selenium 2.0 is officially released.*


What is WebDriver?
------------------

WebDriver uses a different underlying framework from Selenium's javascript Selenium-Core.  
It also provides an alternative API with functionality not
supported in Selenium-RC.  WebDriver does not depend on a javascript core embedded
within the browser, therefore it is able to avoid some long-running Selenium limitations. 

WebDriver's goal is to provide an API that establishes 

- A well-designed standard programming interface for web-app testing.
- Improved consistency between browsers.
- Additional functionality addressing testing problems not well-supported in Selenium 1.0.

The Selenium developers strive to continuously improve Selenium.  Integrating
WebDriver is another step in that process.  The developers of Selenium
and of WebDriver felt they could make significant gains for the Open Source
test automation community be combining forces and merging their ideas and technologies.
Integrating WebDriver into Selenium is the current result of those efforts.


When to Use WebDriver?
----------------------

One should use WebDriver when requiring improved support for  

* Mult-browser testing including improved functionality for browsers not well-supported by Selenium-1.0.
* Handling multiple frames, multiple browser windows, popups, and alerts.
* Page navigation.
* Drag-and-drop.
* AJAX-based UI elements.


The 5 Minute Getting Started Guide
----------------------------------
 
WebDriver is a tool for automating testing web applications, and in particular 
to verify that they work as expected. It aims to provide a friendly API that's
easy to explore and understand, which will help make your tests easier to 
read and maintain. It's not tied to any particular test framework, so it can 
be used equally well with JUnit, TestNG or from a plain old "main" method. 
This "Getting Started" guide introduces you to WebDriver's Java API and helps 
get you started becoming familiar with it.

Start by `Downloading <http://code.google.com/p/selenium/downloads/list>`_ 
the latest binaries and unpack them into a directory. From now on, we'll 
refer to that as ``$WEBDRIVER_HOME``. Now, open your favourite IDE and:

 * Start a new Java project in your favourite IDE
 * Add all the JAR files under ``$WEBDRIVER_HOME`` to the ``CLASSPATH``

You can see that WebDriver acts just as a normal Java library does: it's 
entirely self-contained, and you don't need to remember to start any 
additional processes or run any installers before using it. 

You're now ready to write some code. An easy way to get started is this 
example, which searches for the term "Cheese" on Google and then outputs the 
result page's title to the console. You'll start by using the `HtmlUnit Driver`_. 
This is a pure Java driver that runs entirely in-memory. Because of this, you 
won't see a new browser window open. 

.. code-block:: java

    package org.openqa.selenium.example;

    import org.openqa.selenium.By;
    import org.openqa.selenium.WebDriver;
    import org.openqa.selenium.WebElement;
    import org.openqa.selenium.htmlunit.HtmlUnitDriver;

    public class Example  {
        public static void main(String[] args) {
            // Create a new instance of the html unit driver
            // Notice that the remainder of the code relies on the interface, 
            // not the implementation.
            WebDriver driver = new HtmlUnitDriver();

            // And now use this to visit Google
            driver.get("http://www.google.com");

            // Find the text input element by its name
            WebElement element = driver.findElement(By.name("q"));

            // Enter something to search for
            element.sendKeys("Cheese!");

            // Now submit the form. WebDriver will find the form for us from the element
            element.submit();

            // Check the title of the page
            System.out.println("Page title is: " + driver.getTitle());
        }
    }

Compile and run this. You should see a line with the title of the Google search 
results as output on the console. Congratulations, you've managed to get 
started with WebDriver!

In this next example, you shall use a page that requires Javascript to work 
properly, such as Google Suggest. You will also be using the `Firefox Driver`_. 
Make sure that :ref:`Firefox is installed on your machine and is in the normal 
location for your OS <FirefoxDefaultLocations>`.

Once that's done, create a new class called GoogleSuggest, which looks like:

.. code-block:: java

    package org.openqa.selenium.example;

    import java.util.List;

    import org.openqa.selenium.By;
    import org.openqa.selenium.WebDriver;
    import org.openqa.selenium.RenderedWebElement;
    import org.openqa.selenium.WebElement;
    import org.openqa.selenium.firefox.FirefoxDriver;

    public class GoogleSuggest {
        public static void main(String[] args) throws Exception {
            // The Firefox driver supports javascript 
            WebDriver driver = new FirefoxDriver();
            
            // Go to the Google Suggest home page
            driver.get("http://www.google.com/webhp?complete=1&hl=en");
            
            // Enter the query string "Cheese"
            WebElement query = driver.findElement(By.name("q"));
            query.sendKeys("Cheese");

            // Sleep until the div we want is visible or 5 seconds is over
            long end = System.currentTimeMillis() + 5000;
            while (System.currentTimeMillis() < end) {
                // Browsers which render content (such as Firefox and IE)
                // return "RenderedWebElements"
                RenderedWebElement resultsDiv = (RenderedWebElement) driver.findElement(By.className("gac_m"));

                // If results have been returned,
                // the results are displayed in a drop down.
                if (resultsDiv.isDisplayed()) {
                  break;
                }
            }

            // And now list the suggestions
            List<WebElement> allSuggestions = driver.findElements(By.xpath("//td[@class='gac_c']"));
            
            for (WebElement suggestion : allSuggestions) {
                System.out.println(suggestion.getText());
            }
         }
    }

When you run this program, you'll see the list of suggestions being printed 
to the console. That's all there is to using WebDriver! 

Hopefully, this will have whet your appetite for more. In the `Next Steps`_
section you will learn more about how to use WebDriver for things 
such as navigating forward and backward in your browser's history, and how to 
use frames and windows. It also provides a more complete discussion of the 
examples than `The 5 Minute Getting Started Guide`_. If you're ready, let's
take the `Next Steps`_!

.. _`Next Steps`: `Next Steps For Using WebDriver`_

Next Steps For Using WebDriver
------------------------------

Which Implementation of WebDriver Should I Use?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

WebDriver is the name of the key interface against which tests should be 
written, but there are several implementations. These are:

=============================  ========================  =============================================
Name of driver                 Available on which OS?    Class to instantiate
=============================  ========================  =============================================
`HtmlUnit Driver`_             All                       org.openqa.selenium.htmlunit.HtmlUnitDriver
`Firefox Driver`_              All                       org.openqa.selenium.firefox.FirefoxDriver
`Internet Explorer Driver`_    Windows                   org.openqa.selenium.ie.InternetExplorerDriver
`Chrome Driver`_               All                       org.openqa.selenium.chrome.ChromeDriver
=============================  ========================  =============================================

You can find out more information about each of these by following the links in 
the table. Which you use depends on what you want to do. For sheer speed, the 
`HtmlUnit Driver`_ is great, but it's not graphical, which means that you can't 
watch what's happening. As a developer you may be comfortable with this, but 
sometimes it's good to be able to test using a real browser, especially when 
you're showing a demo of your application (or running the tests) for an 
audience. Often, this idea is referred to as "safety", and it falls into two 
parts. Firstly, there's "actual safety", which refers to whether or not the 
tests works as they should. This can be measured and quantified. Secondly, 
there's "perceived safety", which refers to whether or not an observer believes 
the tests work as they should. This varies from person to person, and will 
depend on their familiarity with the application under test, WebDriver, and your 
testing framework.

To support higher "perceived safety", you may wish to choose a driver such as 
the `Firefox Driver`_. This has the added advantage that this driver actually 
renders content to a screen, and so can be used to detect information such 
as the position of an element on a page, or the CSS properties that apply to 
it. However, this additional flexibility comes at the cost of slower overall 
speed. By writing your tests against the WebDriver interface, it is possible to 
pick the most appropriate driver for a given test.

To keep things simple, let's start with the `HtmlUnit Driver`_:

.. code-block:: java
    
    WebDriver driver = new HtmlUnitDriver();

Navigating
~~~~~~~~~~

The first thing you'll want to do with WebDriver is navigate to a page. The 
normal way to do this is by calling "get":

.. code-block:: java

    driver.get("http://www.google.com");

WebDriver will wait until the page has fully loaded (that is, the "onload" 
event has fired) before returning control to your test or script. It's worth
noting that if your page uses a lot of AJAX on load then WebDriver may not
know when it has completely loaded. If you need to ensure such pages are 
fully loaded then you can use "waits".

.. TODO: link to a section on explicit waits in WebDriver

Interacting With the Page
~~~~~~~~~~~~~~~~~~~~~~~~~

Just being able to go to places isn't terribly useful. What we'd really like 
to do is to interact with the pages, or, more specifically, the HTML elements 
within a page. First of all, we need to find one. WebDriver offers a number of 
ways of finding elements. For example, given an element defined as:

.. code-block:: html

    <input type="text" name="passwd" id="passwd-id" />

you could find it using any of:

.. code-block:: java

    WebElement element;
    element = driver.findElement(By.id("passwd-id"));
    element = driver.findElement(By.name("passwd"));
    element = driver.findElement(By.xpath("//input[@id='passwd-id']"));

You can also look for a link by its text, but be careful! The text must be an 
exact match! You should also be careful when using `XPATH in WebDriver`_. If 
there's more than one element that matches the query, then only the first will 
be returned. If nothing can be found, a ``NoSuchElementException`` will be 
thrown.

.. _`XPATH in WebDriver` : `How XPATH Works in WebDriver`_

WebDriver has an "Object-based" API; we represent all types of elements using 
the same interface:
`Web Element <http://selenium.googlecode.com/svn/webdriver/javadoc/org/openqa/selenium/WebElement.html>`_. 
This means that although you may see a lot of possible methods you could invoke 
when you hit your IDE's auto-complete key combination, not all of them will 
make sense or be valid. Don't worry! WebDriver will attempt to do the Right 
Thing, and if you call a method that makes no sense ("setSelected()" on a 
"meta" tag, for example) an exception will be thrown.

So, you've got an element. What can you do with it? First of all, you may want 
to enter some text into a text field:

.. code-block:: java

    element.sendKeys("some text");
    
You can simulate pressing the arrow keys by using the "Keys" class:

.. code-block:: java

    element.sendKeys(" and some", Keys.ARROW_DOWN);

It is possible to call sendKeys on any element, which makes it possible to test 
keyboard shortcuts such as those used on GMail. A side-effect of this is that 
typing something into a text field won't automatically clear it. Instead, what 
you type will be appended to what's already there. You can easily clear the 
contents of a text field or textarea:

.. code-block:: java

    element.clear();

Filling In Forms
-~~~~~~~~~~~~~~~

We've already seen how to enter text into a textarea or text field, but what 
about the other elements? You can "toggle" the state of checkboxes, and you 
can use "setSelected" to set something like an OPTION tag selected. Dealing 
with SELECT tags isn't too bad:

.. code-block:: java

    WebElement select = driver.findElement(By.xpath("//select"));
    List<WebElement> allOptions = select.findElements(By.tagName("option"));
    for (WebElement option : allOptions) {
        System.out.println(String.format("Value is: %s", option.getValue()));
        option.setSelected();
    }

This will find the first "SELECT" element on the page, and cycle through each 
of it's OPTIONs in turn, printing out their values, and selecting each in turn. 
As you can see, this isn't the most efficient way of dealing with SELECT 
elements. WebDriver's support classes include one called "Select", which 
provides useful methods for interacting with these.

.. code-block:: java

    Select select = new Select(driver.findElement(By.xpath("//select")));
    select.deselectAll();
    select.selectByVisibleText("Edam");

This will deselect all OPTIONs from the first SELECT on the page, and then 
select the OPTION with the displayed text of "Edam".

Once you've finished filling out the form, you probably want to submit it. One 
way to do this would be to find the "submit" button and click it:

.. code-block:: java

    driver.findElement(By.id("submit")).click();
    // Assume the button has the ID "submit" :)

Alternatively, WebDriver has the convenience method "submit" on every element. 
If you call this on an element within a form, WebDriver will walk up the DOM 
until it finds the enclosing form and then calls submit on that. If the 
element isn't in a form, then the ``NoSuchElementException`` will be thrown:

.. code-block:: java

    element.submit();

Getting Visual Information And Drag And Drop
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sometimes you want to extract some visual information out of an element, 
perhaps to see if it's visible or where it is on screen. You can find out this 
information by casting the element to a ``RenderedWebElement``:

.. code-block:: java

    WebElement plain = driver.findElement(By.name("q"));
    RenderedWebElement element = (RenderedWebElement) element;

Not all drivers render their content to the screen (such as the 
`HtmlUnit Driver`_), so it's not safe to assume that the cast will work, but if 
it does you can gather additional information such as the size and location of 
the element. In addition, you can use drag and drop, either moving an element 
by a certain amount, or on to another element:

.. code-block:: java

    RenderedWebElement element = (RenderedWebElement) driver.findElement(By.name("source"));
    RenderedWebElement target = (RenderedWebElement) driver.findElement(By.name("target"));

    element.dragAndDropOn(target);

Moving Between Windows and Frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It's rare for a modern web application not to have any frames or to be 
constrained to a single window. WebDriver supports moving between named 
windows using the "switchTo" method:

.. code-block:: java

    driver.switchTo().window("windowName");

All calls to ``driver`` will now be interpreted as being directed to the 
particular window. But how do you know the window's name? Take a look at the 
javascript or link that opened it:

.. code-block:: html

    <a href="somewhere.html" target="windowName">Click here to open a new window</a>

Alternatively, you can pass a "window handle" to the "switchTo().window()" 
method. Knowing this, it's possible to iterate over every open window like so:

.. code-block:: java

    for (String handle : driver.getWindowHandles()) {
        driver.switchTo().window(handle);
    }

You can also swing from frame to frame (or into iframes):

.. code-block:: java

    driver.switchTo().frame("frameName");

It's possible to access subframes by separating the path with a dot, and you 
can specify the frame by its index too. That is:

.. code-block:: java

    driver.switchTo().frame("frameName.0.child");

would go to the frame named "child" of the first subframe of the frame called 
"frameName". **All frames are evaluated as if from *top*.**

Navigation: History and Location
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Earlier, we covered navigating to a page using the "get" command (
``driver.get("http://www.example.com")``) As you've seen, WebDriver has a 
number of smaller, task-focused interfaces, and navigation is a useful task. 
Because loading a page is such a fundamental requirement, the method to do this 
lives on the main WebDriver interface, but it's simply a synonym to:

.. code-block:: java

    driver.navigate().to("http://www.example.com");

To reiterate: "``navigate().to()``" and "``get()``" do exactly the same thing. 
One's just a lot easier to type than the other!

The "navigate" interface also exposes the ability to move backwards and forwards in your browser's history:

.. code-block:: java

    driver.navigate().forward();
    driver.navigate().back();

Please be aware that this functionality depends entirely on the underlying 
browser. It's just possible that something unexpected may happen when you call 
these methods if you're used to the behaviour of one browser over another.

Cookies
~~~~~~~

Before we leave these next steps, you may be interested in understanding how to 
use cookies. First of all, you need to be on the domain that the cookie will be 
valid for:

.. code-block:: java

    // Go to the correct domain
    driver.get("http://www.example.com");

    // Now set the cookie. This one's valid for the entire domain
    Cookie cookie = new Cookie("key", "value");
    driver.manage().addCookie(cookie);

    // And now output all the available cookies for the current URL
    Set<Cookie> allCookies = driver.manage().getCookies();
    for (Cookie loadedCookie : allCookies) {
        System.out.println(String.format("%s -> %s", loadedCookie.getName(), loadedCookie.getValue()));
    }

Next, Next Steps!
~~~~~~~~~~~~~~~~~

This has been a high level walkthrough of WebDriver and some of its key 
capabilities. You may want to look at the
:ref:`Test Design Considerations chapter <chapter06-reference>` to get
some ideas about how you can reduce the pain of maintaining your tests and how
to make your code more modular.

WebDriver Implementations
-------------------------

HtmlUnit Driver
~~~~~~~~~~~~~~~

This is currently the fastest and most lightweight implementation of WebDriver. 
As the name suggests, this is based on HtmlUnit.

Pros
++++

* Fastest implementation of WebDriver
* A pure Java solution and so it is platform independent.
* Supports JavaScript

Cons
++++

* Emulates other browser's JavaScript behaviour (see below)

JavaScript in the HtmlUnit Driver
+++++++++++++++++++++++++++++++++

None of the popular browsers uses the JavaScript engine used by HtmlUnit 
(Rhino). If you test JavaScript using HtmlUnit the results may differ 
significantly from those browsers.

When we say "JavaScript" we actually mean "JavaScript and the DOM". Although 
the DOM is defined by the W3C each browser out there has its own quirks and 
differences in their implementation of the DOM and in how JavaScript interacts 
with it. HtmlUnit has an impressively complete implementation of the DOM and 
has good support for using JavaScript, but it is no different from any other 
browser: it has its own quirks and differences from both the W3C standard and 
the DOM implementations of the major browsers, despite its ability to mimic 
other browsers.

With WebDriver, we had to make a choice; do we enable HtmlUnit's JavaScript 
capabilities and run the risk of teams running into problems that only manifest 
themselves there, or do we leave JavaScript disabled, knowing that there are 
more and more sites that rely on JavaScript? We took the conservative approach, 
and by default have disabled support when we use HtmlUnit. With each release of 
both WebDriver and HtmlUnit, we reassess this decision: we hope to enable 
JavaScript by default on the HtmlUnit at some point.

Enabling JavaScript
+++++++++++++++++++

If you can't wait, enabling JavaScript support is very easy:

.. code-block:: java

    HtmlUnitDriver driver = new HtmlUnitDriver();
    driver.setJavascriptEnabled(true);

This will cause the `HtmlUnit Driver`_ to emulate Internet Explorer's JavaScript 
handling by default.

Firefox Driver
~~~~~~~~~~~~~~

Pros
++++

* Runs in a real browser and supports JavaScript
* Faster than the `Internet Explorer Driver`_

Cons
++++

* Slower than the `HtmlUnit Driver`_

Before Going Any Further
++++++++++++++++++++++++

The `Firefox Driver`_ contains everything it needs in the JAR file. If you're just 
interested in using this driver, then all you need to do is put the 
``webdriver-firefox.jar`` or ``webdriver-all.jar`` on your ``CLASSPATH``, and 
WebDriver will do everything else for you.

If you want to dig deeper, though, carry on reading!

Important System Properties
+++++++++++++++++++++++++++

The following system properties (read using ``System.getProperty()`` and set 
using ``System.setProperty()`` in Java code or the ``-DpropertyName=value`` 
command line flag) are used by the `Firefox Driver`_:

=============================  ==============================================================================================================
Property                       What it means
=============================  ==============================================================================================================
webdriver.firefox.bin          The location of the binary used to control Firefox.
webdriver.firefox.profile      The name of the profile to use when starting Firefox. This defaults to WebDriver creating an anonymous profile
webdriver.reap_profile         Should be "true" if temporary files and profiles should not be deleted
=============================  ==============================================================================================================

Normally the Firefox binary is assumed to be in the default location for your 
particular operating system:

.. _FirefoxDefaultLocations:

=============  ===================================================
OS             Expected Location of Firefox
=============  ===================================================
Linux          firefox (found using "which")
Mac            /Applications/Firefox.app/Contents/MacOS/firefox
Windows XP     %PROGRAMFILES%\\Mozilla Firefox\\firefox.exe
Windows Vista  \\Program Files (x86)\\Mozilla Firefox\\firefox.exe
=============  ===================================================

By default, the Firefox driver creates an anonymous profile

Installing a Downloaded Binary
++++++++++++++++++++++++++++++

The "wedriver-all.zip" which may be downloaded from the website, contains all 
the dependencies (including the common library) required to run the 
`Firefox Driver`_. In order to use it:

* Copy all the "jar" files on to your ``CLASSPATH``.

Internet Explorer Driver
~~~~~~~~~~~~~~~~~~~~~~~~

This driver has been tested with Internet Explorer 6, 7 and 8 on XP. It has 
also been successfully tested on Vista.

Pros
++++

* Runs in a real browser and supports JavaScript

Cons
++++

* Obviously the `Internet Explorer Driver`_ will only work on Windows!
* Comparatively slow (though still pretty snappy :)

Installing
++++++++++

Simply add ``webdriver-all.jar`` to your ``CLASSPATH``. You do not need to run 
an installer before using the `Internet Explorer Driver`_, though some configuration 
is required.

Required Configuration
++++++++++++++++++++++

Add every site you intend to visit to your "Trusted Sites" If you do not do 
this, then you will not be able to interact with the page.

Chrome Driver
~~~~~~~~~~~~~

See below for instructions on how to install the `Chrome Driver`_.

Note that `Chrome Driver`_ is one of the newest drivers. Please report any problems 
through the `issue tracker <http://code.google.com/p/selenium/issues/list>`_.

Pros
++++

* Runs in a real browser and supports JavaScript
* Because Chrome is a Webkit-based browser, the `Chrome Driver`_ may allow you to 
  verify that your site works in Safari. Note that since Chrome uses its own V8 
  JavaScript engine rather than Safari's Nitro engine, JavaScript execution may 
  differ.

Cons
++++

* Slower than the `HtmlUnit Driver`_

.. TODO: I removed the known issues section as this type of content is best in 
         the Wiki or issue tracker. Can we add a link to all issues raised 
         against ChromeDriver?

Before Going Any Further
++++++++++++++++++++++++

The `Chrome Driver`_ contains everything it needs in the JAR file. If you're just 
interested in using this driver, then all you need to do is put 
``webdriver-all.jar`` on your ``CLASSPATH``, and WebDriver will do everything 
else for you.

The `Chrome Driver_` works with Google Chrome version 4.0 and above.

Important System Properties
+++++++++++++++++++++++++++

The following system properties (read using ``System.getProperty()`` and set 
using ``System.setProperty()`` in Java code or the ``-DpropertyName=value`` 
command line flag) are used by the `Chrome Driver`_:

======================  ======================================================================
Property                What it means
======================  ======================================================================
webdriver.chrome.bin    The location of the binary used to control Chrome.
webdriver.reap_profile  Should be "true" if temporary files and profiles should not be deleted
======================  ======================================================================

Normally the Chrome binary is assumed to be in the default location for your 
particular operating system:

=============  =================================================================================================
OS             Expected Location of Chrome
=============  =================================================================================================
Linux          /usr/bin/google-chrome
Mac            /Applications/Google Chrome.app/Contents/MacOS/Google\ Chrome or /User/:username/:as_to_the_left
Windows XP     %HOMEPATH%\\Local Settings\\Application Data\\Google\\Chrome\\Application\\chrome.exe
Windows Vista  C:\\User\s\%USERNAME%\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe
=============  =================================================================================================

Installing a Downloaded Binary
++++++++++++++++++++++++++++++

The "wedriver-all.zip" which may be downloaded from the website, contains all 
the dependencies required to run the `Chrome Driver`_. In order to use it, copy all 
the "jar" files on to your ``CLASSPATH``.

.. _SeleniumRCEmulation:

Emulating Selenium RC
---------------------

The Java version of WebDriver provides an implementation of the Selenium RC API. 
It is used like so:

.. code-block:: java

    // You may use any WebDriver implementation. Firefox is used here as an example
    WebDriver driver = new FirefoxDriver();

    // A "base url", used by selenium to resolve relative URLs
     String baseUrl = "http://www.google.com";

    // Create the Selenium implementation
    Selenium selenium = new WebDriverBackedSelenium(driver, baseUrl);

    // Perform actions with selenium
    selenium.open("http://www.google.com");
    selenium.type("name=q", "cheese");
    selenium.click("name=btnG");

    // And get the underlying WebDriver implementation back. This will refer to the
    // same WebDriver instance as the "driver" variable above.
    WebDriver driverInstance = ((WebDriverBackedSelenium) selenium).getUnderlyingWebDriver();

Pros
~~~~

* Allows for the WebDriver and Selenium APIs to live side-by-side
* Provides a simple mechanism for a managed migration from the Selenium RC API 
  to WebDriver's
* Does not require the standalone Selenium RC server to be run

Cons
~~~~

* Does not implement every method
* More advanced Selenium usage (using "browserbot" or other built-in JavaScript 
  methods from Selenium Core) may not work
* Some methods may be slower due to underlying implementation differences

Backing WebDriver with Selenium
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

WebDriver doesn't support as many browsers as Selenium RC does, so in order to 
provide that support while still using the WebDriver API, you can make use of 
the ``SeleneseCommandExecutor`` It is done like this:

.. code-block:: java

    Capabilities capabilities = new DesiredCapabilities()
    capabilities.setBrowserName("safari");
    CommandExecutor executor = new SeleneseCommandExecutor("http:localhost:4444/", "http://www.google.com/", capabilities);
    WebDriver driver = new RemoteWebDriver(executor, capabilities);

There are currently some major limitations with this approach, notably that 
findElements doesn't work as expected. Also, because we're using Selenium Core 
for the heavy lifting of driving the browser, you are limited by the JavaScript 
sandbox.

.. _TipsAndTricks:

Tips and Tricks
---------------

Using Drag and Drop
~~~~~~~~~~~~~~~~~~~

It may not be immediately obvious, but if you're using a browser that supports 
it you can cast a ``WebElement`` to ``RenderedWebElement`` and then it's easy 
to do drag and drop:

.. code-block:: java

    // Note the casts
    RenderedWebElement from = (RenderedWebElement) driver.findElement(By.id("one"));
    RenderedWebElement to = (RenderedWebElement) driver.findElement(By.id("two"));

    from.dragAndDropOn(to);

Currently, only the `Firefox Driver`_ supports this, but you should also expect 
support for the `Internet Explorer Driver`_ too.

Changing the user agent
~~~~~~~~~~~~~~~~~~~~~~~

This is easy with the `Firefox Driver`_:

.. code-block:: java

    FirefoxProfile profile = new FirefoxProfile();
    profile.addAdditionalPreference("general.useragent.override", "some UA string");
    WebDriver driver = new FirefoxDriver(profile);

Tweaking an existing Firefox profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Suppose that you wanted to modify the user agent string (as above), but you've 
got a tricked out Firefox profile that contains dozens of useful extensions. 
There are two ways to obtain this profile. Assuming that the profile has been 
created using Firefox's profile manager (``firefox -ProfileManager``):

.. code-block:: java

    ProfileIni allProfiles = new ProfilesIni();
    FirefoxProfile profile = allProfiles.getProfile("WebDriver");
    profile.setPreferences("foo.bar", 23);
    WebDriver driver = new FirefoxDriver(profile);
   
Alternatively, if the profile isn't already registered with Firefox:

.. code-block:: java

    File profileDir = new File("path/to/top/level/of/profile");
    FirefoxProfile profile = new FirefoxProfile(profileDir);
    profile.addAdditionalPreferences(extraPrefs);
    WebDriver driver = new FirefoxDriver(profile);
    Enabling features that might not be wise to use in Firefox

As we develop features in the `Firefox Driver`_, we expose the ability to use them. 
For example, until we feel native events are stable on Firefox for Linux, they 
are disabled by default. To enable them:

.. code-block:: java

    FirefoxProfile profile = new FirefoxProfile();
    profile.setEnableNativeEvents(true);
    WebDriver driver = new FirefoxDriver(profile);

How XPATH Works in WebDriver
----------------------------

At a high level, WebDriver uses a browser's native XPath capabilities wherever 
possible. On those browsers that don't have native XPath support, we have 
provided our own implementation. This can lead to some unexpected behaviour 
unless you are aware of the differences in the various xpath engines.

===========================  =======================  ==========================  ====================
Driver                       Tag and Attribute Name   Attribute Values            Native XPath Support
===========================  =======================  ==========================  ====================
`HtmlUnit Driver`_           Lower-cased              As they appear in the HTML  Yes
`Internet Explorer Driver`_  Lower-cased              As they appear in the HTML  No
`Firefox Driver`_            Case insensitive         As they appear in the HTML  Yes
===========================  =======================  ==========================  ====================

This is a little abstract, so for the following piece of HTML:

.. code-block:: html

    <input type="text" name="example" />
    <INPUT type="text" name="other" />

The following number of matches will be found

=================== ====================== ====================== =============================
 XPath expression   `HtmlUnit Driver`_     `Firefox Driver`_      `Internet Explorer Driver`_  
=================== ====================== ====================== =============================
  //input            1 ("example")          2                      2                           

  //INPUT            0                      2                      0                           
=================== ====================== ====================== =============================

Matching Implicit Attributes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sometimes HTML elements do not need attributes to be explicitly declared 
because they will default to known values. For example, the "input" tag does 
not require the "type" attribute because it defaults to "text". The rule of 
thumb when using xpath in WebDriver is that you **should not** expect to be able 
to match against these implicit attributes.

Getting and Using WebDriver
---------------------------

From a New Download
~~~~~~~~~~~~~~~~~~~

Unpack the "webdriver-all.zip" you can download from the site, and add all the 
JARs to your ``CLASSPATH``. This will give you the `Chrome Driver`_, `Firefox Driver`_, 
`HtmlUnit Driver`_, `Internet Explorer Driver`_, Remote Web Driver client and
the support packages. The support packages give you useful helper classes, such
as the LiftStyleApi and the PageFactory.

With Maven
~~~~~~~~~~

If you want to use the `HtmlUnit Driver`_, add the following dependency to your 
pom.xml:

.. code-block:: xml

    <dependency>
        <groupId>org.seleniumhq.webdriver</groupId>
        <artifactId>webdriver-htmlunit</artifactId>
        <version>0.9.7376</version>
    </dependency>
    
If you want to use the `Firefox Driver`_, you need to add the following dependency 
to your pom.xml:

.. code-block:: xml

    <dependency>
        <groupId>org.seleniumhq.webdriver</groupId>
        <artifactId>webdriver-firefox</artifactId>
        <version>0.9.7376</version>
    </dependency>

If you want to use the `Internet Explorer Driver`_, you need to add the following 
dependency to your pom.xml:

.. code-block:: xml

    <dependency>
        <groupId>org.seleniumhq.webdriver</groupId>
        <artifactId>webdriver-ie</artifactId>
        <version>0.9.7376</version>
    </dependency>

If you want to use the `Chrome Driver`_, you need to add the following dependency 
to your pom.xml:

.. code-block:: xml

    <dependency>
        <groupId>org.seleniumhq.webdriver</groupId>
        <artifactId>webdriver-chrome</artifactId>
        <version>0.9.7376</version>
    </dependency>

Finally, if you like to use any of our support classes, you should add the 
following dependency to your pom.xml:

.. code-block:: xml

    <dependency>
        <groupId>org.seleniumhq.webdriver</groupId>
        <artifactId>webdriver-support</artifactId>
        <version>0.9.7376</version>
    </dependency>

.. _Roadmap:

Roadmap
-------

The roadmap for WebDriver 
`is available here <http://code.google.com/p/selenium/wiki/RoadMap>`_

.. _FurtherResources:

Further Resources
-----------------

You can find further resources for WebDriver 
in `WebDriver's wiki <http://code.google.com/p/selenium/wiki/FurtherResources>`_
