Selenium 2.0 and WebDriver
==========================

.. _chapter03-reference:

*NOTE: We're currently working on documenting these sections.
We believe the information here is accurate, however be aware we are also still working on this
chapter.  Additional information will be provided as we go which should make this chapter more
solid.  In addition, we will be proofreading and reviewing it.*

Selenium 2.0 Features
---------------------
Selenium 2.0 has many new exciting features and improvements over Selenium 1.  These new features are
introduced release in the release announcement in the Official Selenium Blog_.

.. _Blog: http://seleniumhq.wordpress.com

The primary new feature is the integration of the WebDriver API.
This addresses a number of limitations along with providing an alternative, and simpler,
programming interface.  The goal is to develop an object-oriented API that
provides additional support for a larger number of browsers along with improved
support for modern advanced web-app testing problems.

*NOTE:  We will add a description of SEL 2.0 new features--for now we refer readers to
the release announcement.*


The Selenium Server -- When to Use It
-------------------------------------
You may, or may not, need the Selenium Server, depending on how you intend to use Selenium.  If
you will be strictly using the WebDriver API you do not need the Selenium Server.  The Selenium
Server provides Selenium-RC functionality, which is primarily used for Selenium 1.0 backwards
compatability.  Since WebDriver uses completely different technology to interact with the
browsers, the Selenium Server is not needed.  Selenium-WebDriver makes direct calls to the browser
using each browser's native support for automation.  Selenium-RC however requires the Selenium-
Server to inject javascript into the browser and to then translate messages from your test
program's language-specific Selenium client library into commands that invoke the javascript
commands which in turn, automate the AUT from within the browser.  In short, if you're using
Selenium-WebDriver, you don't need the Selenium-Server.

Another reason for using the Selenium-Server is if you are using Selenium-Grid for distributed
exectution of your tests.  Finally, if you are using Selenium-backed Web-Driver (the WebDriver API
but with back-end Selenium technology) you will also need the Selenium Server.
These topics are described in more detail later in this chapter.

.. _setting-up-webdriver-project:

Setting Up a Selenium-WebDriver Project
---------------------------------------
To install Selenium means to set up a project in a development so you can write a program using
Selenium.  How you do this depends on your programming language and your development environment.


Java
~~~~
The easiest way to set up a Selenium 2.0 Java project is to use Maven.  Maven will download the
java bindings (the Selenium 2.0 java client library) and all it's dependencies, and will create the
project for you, using a maven pom.xml (project configuration) file.  Once you've done this, you
can import the maven project into your preferred IDE, IntelliJ IDEA or Eclipse.

First, create a folder to contain your Selenium project files.  Then, to use Maven, you need a
pom.xml file.  This can be created with a text editor.  We won't teach the
details of pom.xml files or for using Maven since there are already excellent references on this.
Your pom.xml file will look something like this.  Create this file in the folder you created for
your project.

.. code-block:: xml

        <?xml version="1.0" encoding="UTF-8"?>
        <project xmlns="http://maven.apache.org/POM/4.0.0"
                         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
                <modelVersion>4.0.0</modelVersion>
                <groupId>MySel20Proj</groupId>
                <artifactId>MySel20Proj</artifactId>
                <version>1.0</version>
                <dependencies>
                    <dependency>
                        <groupId>org.seleniumhq.selenium</groupId>
                        <artifactId>selenium-java</artifactId>
                        <version>2.4.0</version>
                    </dependency>
                </dependencies>
        </project>

The key component adding Selenium and its dependencies are the lines

.. code-block:: xml

                <dependency>
                        <groupId>org.seleniumhq.selenium</groupId>
                        <artifactId>selenium-java</artifactId>
                        <version>2.4.0</version>
                </dependency>

Be sure you specify the most current version.  At the time of writing, the version listed above was
the most current, however there were frequent releases immediately after the releast of Selenium 2.0.
Check the SeleniumHq website for the current release and edit the above dependency accordingly.

Now, from a command-line, CD into the project directory and run maven as follows.

.. code-block:: bash

		mvn clean install

This will download Selenium and all its dependencies and will add them to the project.

Finally, import the project into your preferred development environment.  For those not familiar
with this, we've provided an appendix which shows this.

:ref:`Importing a maven project into IntelliJ IDEA <importing-maven-into-intellij-reference>`.


C#
~~
Selenium 2.0 is distributed as a set of unsigned dlls, including all
dependencies.  To include Selenium in your project, simply download the latest
selenium-dotnet zip file from https://code.google.com/p/selenium/downloads/list.
If you are using Windows Vista or above, you should unblock the zip file before
unzipping it: Right click on the zip file, click "Properties", click "Unblock"
and click "OK".

Unzip the contents of the zip file, and add a reference to each of the unzipped
dlls to your project in Visual Studio (or your IDE of choice).

Note that we do not have an official NuGet package at this time.

Python
~~~~~~
If you are using Python for test automation then you probably are already familiar with developing
in Python.  To add Selenium to your Python environment run the following command from
a command-line.

.. code-block:: bash

    pip install selenium

Teaching Python development itself is beyond the scope of this document, however there are many
resources on Python and likely developers in your organization can help you get up to speed.

Ruby
~~~~
If you are using Ruby for test automation then you probably are already familiar with developing
in Ruby.  To add Selenium to your Ruby environment run the following command from
a command-line.

.. code-block:: bash

    gem install selenium-webdriver

Teaching Ruby development itself is beyond the scope of this document, however there are many
resources on Ruby and likely developers in your organization can help you get up to speed.

Perl
~~~~
Perl is not supported in Selenium 2.0 at this time. If you have questions, or would like to assist
providing this support, please post a note to the Selenium developers_.

.. _developers: http://groups.google.com/group/selenium-developers

PHP
~~~
PHP is not supported in Selenium 2.0 at this time. If you have questions, or would like to assist
providing this support, please  post
a note to the Selenium developers_.

.. _developers: http://groups.google.com/group/selenium-developers

Migrating from Selenium 1.0
---------------------------
For those who already have test suites writting using Selenium 1.0, we have provided tips on how to
migrate your existing code to Selenium 2.0.  Simon Stewart, the lead developer for Selenium 2.0,
has written an article on migrating from Selenium 1.0.  We've included this as an appendix.

:ref:`Migrating From Selenium RC to Selenium WebDriver <migrating_to_webdriver-reference>`


Getting Started With Selenium-WebDriver
---------------------------------------
WebDriver is a tool for automating testing web applications, and in particular
to verify that they work as expected. It aims to provide a friendly API that's
easy to explore and understand, easier to use than the Selenium-RC (1.0) API,
which will help make your tests easier to
read and maintain. It's not tied to any particular test framework, so it can
be used equally well in a unit testing or from a plain old "main" method.
This section introduces WebDriver's API and helps get you started becoming
familiar with it.  Start by setting up a WebDriver project if you haven't already.
This was described in the previous section, :ref:`setting-up-webdriver-project`.

Once your project is set up, you can see that WebDriver acts just as any normal library:
it is entirely self-contained, and you usually don't need to remember to start any
additional processes or run any installers before using it, as opposed to the proxy server
with Selenium-RC.

You're now ready to write some code. An easy way to get started is this
example, which searches for the term "Cheese" on Google and then outputs the
result page's title to the console.

Java
~~~~

.. literalinclude:: /examples/Chapter3/Java/Selenium2Example.java
   :language: java

C#
~~

.. literalinclude:: /examples/Chapter3/CSharp/Selenium2Example.cs
   :language: csharp

Python
~~~~~~

.. literalinclude:: /examples/Chapter3/Python/Selenium2Example.py
   :language: python

Ruby
~~~~

.. literalinclude:: /examples/Chapter3/Ruby/Selenium2Example.rb
   :language: ruby


In upcoming sections, you will learn more about how to use WebDriver for things
such as navigating forward and backward in your browser's history, and how to
test web sites that use frames and windows. We also provide a more
thorough discussions and examples.


Introducing WebDriver's Drivers
-------------------------------

WebDriver is the name of the key interface against which tests should be
written, but there are several implementations. These include:

=============================  ========================  =============================================
Name of driver                 Available on which OS?    Class to instantiate
=============================  ========================  =============================================
`HtmlUnit Driver`_             All                       org.openqa.selenium.htmlunit.HtmlUnitDriver
`Firefox Driver`_              All                       org.openqa.selenium.firefox.FirefoxDriver
`Internet Explorer Driver`_    Windows                   org.openqa.selenium.ie.InternetExplorerDriver
`Chrome Driver`_               All                       org.openqa.selenium.chrome.ChromeDriver
`Opera Driver`_                                          We're currently upating this table
`iPhone Driver`_
`Android Driver`_
=============================  ========================  =============================================

You can find out more information about each of these by following the links in
the table. Which you use depends on what you want to do. For sheer speed, the
`HtmlUnit Driver`_ is great, but it's not graphical, which means that you can't
watch what's happening. As a developer you may be comfortable with this, but
sometimes it's good to be able to test using a real browser, especially when
you're showing a demo of your application (or running the tests) for an
audience. Often, this idea is referred to as "safety", and it falls into two
parts. Firstly, there's "actual safety", which refers to whether or not the
tests work as they should. This can be measured and quantified. Secondly,
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

Commands and Operation
----------------------

Fetching a Page
~~~~~~~~~~~~~~~

The first thing you're likely to want to do with WebDriver is navigate to a page.
The normal way to do this is by calling "get":

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

you could find it using any of the following examples:

.. code-block:: java

    WebElement element;
    element = driver.findElement(By.id("passwd-id"));
    element = driver.findElement(By.name("passwd"));
    element = driver.findElement(By.xpath("//input[@id='passwd-id']"));

You can also look for a link by its text, but be careful! The text must be an
exact match! You should also be careful when using 
`XPATH in WebDriver <http://code.google.com/p/selenium/wiki/XpathInWebDriver>`_. 
If there's more than one element that matches the query, then only the first will
be returned. If nothing can be found, a ``NoSuchElementException`` will be
thrown.

WebDriver has an "Object-based" API; we represent all types of elements using
the same interface:
`Web Element <http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/WebElement.html>`_.
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


Locating UI Elements (WebElements)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Note:  This section still needs to be developed.*  

Locating elements in WebDriver is done using the "By" class.  This class implements all location
strategies used by WebDriver.

Using XPATH Statements
++++++++++++++++++++++

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

Sometimes HTML elements do not need attributes to be explicitly declared
because they will default to known values. For example, the "input" tag does
not require the "type" attribute because it defaults to "text". The rule of
thumb when using xpath in WebDriver is that you **should not** expect to be able
to match against these implicit attributes.


User Input - Filling In Forms
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
As you will notice, this isn't the most efficient way of dealing with SELECT
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


Moving Between Windows and Frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Some web applications have any frames or multiple windows. WebDriver supports
moving between named windows using the "switchTo" method:

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

Popup Dialogs
~~~~~~~~~~~~~~

Starting with Selenium 2.0 beta 1, there is built in support for handling popup
dialog boxes. After you've triggered an action that opens a
popup, you can access the alert with the following:

.. code-block:: java

    Alert alert = driver.switchTo().alert();

This will return the currently open alert object. With this object you can now accept,
dismiss, read its contents or even type into a prompt. This interface works equally
well on alerts, confirms, prompts. Refer to the JavaDocs for more information.

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


Drag And Drop
~~~~~~~~~~~~~

Here's an example of using the Actions class to perform a drag and drop.
As of rc2 this only works on the Windows platform.

.. code-block:: java

    WebElement element = driver.findElement(By.name("source"));
    WebElement target = driver.findElement(By.name("target"));

    (new Actions(driver)).dragAndDrop(element, target).perform();


Driver Specifics and Tradeoffs
------------------------------

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

* Emulates other browsers' JavaScript behaviour (see below)

JavaScript in the HtmlUnit Driver
+++++++++++++++++++++++++++++++++

None of the popular browsers uses the JavaScript engine used by HtmlUnit
(Rhino). If you test JavaScript using HtmlUnit the results may differ
significantly from those browsers.

When we say "JavaScript" we actually mean "JavaScript and the DOM". Although
the DOM is defined by the W3C each browser has its own quirks and differences
in their implementation of the DOM and in how JavaScript interacts with it.
HtmlUnit has an impressively complete implementation of the DOM and has good
support for using JavaScript, but it is no different from any other
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


Changing the User Agent
+++++++++++++++++++++++

This is easy with the `Firefox Driver`_:

.. code-block:: java

    FirefoxProfile profile = new FirefoxProfile();
    profile.addAdditionalPreference("general.useragent.override", "some UA string");
    WebDriver driver = new FirefoxDriver(profile);


Mofifying the Firefox Profile
+++++++++++++++++++++++++++++

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



Info
++++

See the `Firefox secion in the wiki page <http://code.google.com/p/selenium/wiki/FirefoxDriver>`_ for the most up to date info.

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

Info
++++

See the `Internet Explorer section of the wiki page <http://code.google.com/p/selenium/wiki/InternetExplorerDriver>`_ for the most up to date info.
Please take special note of the Required Configuration section.


Chrome Driver
~~~~~~~~~~~~~

Chrome Driver is maintained / supported by the `Chromium <http://code.google.com/p/chromium/>`_ 
project iteslf.
WebDriver is now inside of the Chrome browser iteslf. Please 
`see our wiki <http://code.google.com/p/selenium/wiki/ChromeDriver>`_ for the most up to date info.

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

Getting running with Chrome Driver
++++++++++++++++++++++++++++++++++

*Note:  this section is likely out of date.  If you used the commands at the beginning of this
chapter for setting up a Selenium 2 project you should already have the Chrome Driver along with
all the other drivers.*

Download the `Chrome Driver executable <http://code.google.com/p/chromium/downloads/list>`_
and follow the other instructions on the 
`wiki page <http://code.google.com/p/selenium/wiki/ChromeDriver>`_

.. _SeleniumRCEmulation:

Opera Driver
~~~~~~~~~~~~~

See the `Opera Driver wiki article <http://code.google.com/p/selenium/wiki/OperaDriver>`_ in the
Selenium Wiki for information on using the Opera Driver.

iPhone Driver
~~~~~~~~~~~~~~

See the `iPhone Driver wiki article <http://code.google.com/p/selenium/wiki/IPhoneDriver>`_ in the
Selenium Wiki for information on using the Mac iOS Driver.

Android Driver
~~~~~~~~~~~~~~

See the `Android Driver wiki article <http://code.google.com/p/selenium/wiki/AndroidDriver>`_
in the Selenium Wiki for information on using the Android Driver.

WebDriver-Backed Selenium-RC
----------------------------

The Java version of WebDriver provides an implementation of the Selenium-RC API.  These means that
you can use the underlying WebDriver technology using the Selenium-RC API.  This is primarily 
provided for backwards compatablity.  It allows those who have existing test suites using the 
Selenium-RC API to use WebDriver under the covers.  It's provided to help ease the migration path
to Selenium-WebDriver.  Also, this allows one to use both APIs, side-by-side, in the same test code.

Selenium-WebDriver is used like this:

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

    // Get the underlying WebDriver implementation back. This will refer to the
    // same WebDriver instance as the "driver" variable above.
    WebDriver driverInstance = ((WebDriverBackedSelenium) selenium).getUnderlyingWebDriver();

        //Finally, close the browser. Call stop on the WebDriverBackedSelenium instance
        //instead of calling driver.quit(). Otherwise, the JVM will continue running after
        //the browser has been closed.
        selenium.stop();

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



.. _SeleniumWebDriverWiki:

Selenium WebDriver Wiki
-----------------------

You can find further resources for WebDriver
in `WebDriver's wiki <http://code.google.com/p/selenium/wiki/FurtherResources>`_


Next Steps
----------

This chapter has simply been a high level walkthrough of WebDriver and some of its key
capabilities.  Once getting familiar with the Selenium-WebDriver API you will then want to learn
how to build test suites for maintainability, extensibility, and reduced fragility when features of
the AUT frequently change.  The approach most Selenium experts are now recommending is to design
your test code using the Page Object Design Pattern along with possibly a Page Factor.  
Selenium-WebDriver provides support for this by supplying a PageFactory class.  This is presented,
along with other advanced topics, in the next chapter.  Also, for high-level description of this
technique, you may want to look at the
:ref:`Test Design Considerations chapter <chapter06-reference>`.  Both of these
chapters present techniques for writing more maintainable tests by making your test code more
modular.
