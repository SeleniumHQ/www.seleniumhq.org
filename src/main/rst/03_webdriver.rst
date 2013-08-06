Selenium WebDriver
==================

.. _chapter03-reference:

*NOTE: We're currently working on documenting these sections.
We believe the information here is accurate, however be aware we are also still working on this
chapter.  Additional information will be provided as we go which should make this chapter more
solid.* 

Introducing WebDriver
---------------------
The primary new feature in Selenium 2.0 is the integration of the WebDriver API.
WebDriver is designed to provide a simpler, more concise programming interface in addition to
addressing some limitations in the Selenium-RC API.  Selenium-WebDriver was developed
to better support dynamic web pages where elements of a page may change without the page
itself being reloaded.  WebDriver's goal is to supply a well-designed object-oriented 
API that provides improved support for modern advanced web-app testing problems.



How Does WebDriver 'Drive' the Browser Compared to Selenium-RC?
---------------------------------------------------------------
Selenium-WebDriver makes direct calls to the browser using each browser's native support for automation.
How these direct calls are made, and the features they support depends on the browser you are using. 
Information on each 'browser driver' is provided later in this chapter.

For those familiar with Selenium-RC, this is quite different from what you are used to.  Selenium-RC
worked the same way for each supported browser.  It 'injected' javascript functions into the browser
when the browser was loaded and then used its javascript to drive the AUT within the browser.
WebDriver does not use this technique.  Again, it drives the browser directly using the browser's
built in support for automation.


WebDriver and the Selenium-Server
---------------------------------

You may, or may not, need the Selenium Server, depending on how you intend to use Selenium-WebDriver.
If you will be only using the WebDriver API you do not need the Selenium-Server.  If your browser
and tests will all run on the same machine, and your tests only use the WebDriver API, then you 
do not need to run the Selenium-Server; WebDriver will run the browser directly.

There are some reasons though to use the Selenium-Server with Selenium-WebDriver.  

 * You are using Selenium-Grid to distribute your tests over multiple machines or virtual machines (VMs).
 * You want to connect to a remote machine that has a particular browser version that is not on 
   your current machine.
 * You are not using the Java bindings (i.e. Python, C#, or Ruby) and would like to use `HtmlUnit Driver`_

.. _setting-up-webdriver-project:


Setting Up a Selenium-WebDriver Project
---------------------------------------
To install Selenium means to set up a project in a development so you can write a program using
Selenium.  How you do this depends on your programming language and your development environment.


Java
~~~~
The easiest way to set up a Selenium 2.0 Java project is to use Maven.  Maven will download the
java bindings (the Selenium 2.0 java client library) and all its dependencies, and will create the
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
                        <version>2.34.0</version>
                    </dependency>
                    <dependency>
                        <groupId>com.opera</groupId>
                        <artifactId>operadriver</artifactId>
                    </dependency>
                </dependencies>
                <dependencyManagement>
                    <dependencies>
                        <dependency>
                            <groupId>com.opera</groupId>
                            <artifactId>operadriver</artifactId>
                            <version>1.3</version>
                            <exclusions>
                                <exclusion>
                                    <groupId>org.seleniumhq.selenium</groupId>
                                    <artifactId>selenium-remote-driver</artifactId>
                                </exclusion>
                            </exclusions>
                        </dependency>
                    </dependencies>
                </dependencyManagement>
        </project>


Be sure you specify the most current version.  At the time of writing, the version listed above was
the most current, however there were frequent releases immediately after the release of Selenium 2.0.
Check the `Maven download page <http://seleniumhq.org/download/maven.html>`_ for the current release and edit the above dependency accordingly.

Now, from a command-line, CD into the project directory and run maven as follows.

.. code-block:: bash

		mvn clean install

This will download Selenium and all its dependencies and will add them to the project.

Finally, import the project into your preferred development environment.  For those not familiar
with this, we've provided an appendix which shows this.

:ref:`Importing a maven project into IntelliJ IDEA <importing-maven-into-intellij-reference>`.
:ref:`Importing a maven project into Eclipse <importing-maven-into-eclipse-reference>`.


C#
~~
As of Selenium 2.2.0, the C# bindings are distributed as a set of signed dlls along with other
dependency dlls. Prior to 2.2.0, all Selenium dll's were unsigned.  
To include Selenium in your project, simply download the latest
selenium-dotnet zip file from https://code.google.com/p/selenium/downloads/list.
If you are using Windows Vista or above, you should unblock the zip file before
unzipping it: Right click on the zip file, click "Properties", click "Unblock"
and click "OK".

Unzip the contents of the zip file, and add a reference to each of the unzipped
dlls to your project in Visual Studio (or your IDE of choice).

Official NuGet Packages:
`RC <http://www.nuget.org/List/Packages/Selenium.RC>`_
`WebDriver <http://www.nuget.org/List/Packages/Selenium.WebDriver>`_
`WebDriverBackedSelenium <http://www.nuget.org/List/Packages/Selenium.WebDriverBackedSelenium>`_
`Support <http://www.nuget.org/List/Packages/Selenium.Support>`_

Python
~~~~~~
If you are using Python for test automation then you probably are already familiar with developing
in Python.  To add Selenium to your Python environment run the following command from
a command-line.

.. code-block:: bash

    pip install selenium

Pip requires `pip <http://pypi.python.org/pypi/pip>`_ to be installed, pip also has a dependency
on `setuptools <http://pypi.python.org/pypi/setuptools>`_.

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
Perl bindings are provided by a third party, please refer to any of their documentation on how to
install / get started. There is one known `Perl binding <https://metacpan.org/module/Selenium::Remote::Driver>`_ as of this writing.

PHP
~~~
PHP bindings are provided by a third party, please refer to any of their documentation on how to
install / get started. There are three known bindings at this time: `By Chibimagic <https://github.com/chibimagic/WebDriver-PHP/>`_
`By Lukasz Kolczynski <http://code.google.com/p/php-webdriver-bindings/>`_ and `By the Facebook <https://github.com/facebook/php-webdriver>`_

Migrating from Selenium 1.0
---------------------------
For those who already have test suites written using Selenium 1.0, we have provided tips on how to
migrate your existing code to Selenium 2.0.  Simon Stewart, the lead developer for Selenium 2.0,
has written an article on migrating from Selenium 1.0.  We've included this as an appendix.

:ref:`Migrating From Selenium RC to Selenium WebDriver <migrating_to_webdriver-reference>`


Introducing the Selenium-WebDriver API by Example
-------------------------------------------------
WebDriver is a tool for automating web application testing, and in particular
to verify that they work as expected. It aims to provide a friendly API that's
easy to explore and understand, easier to use than the Selenium-RC (1.0) API,
which will help to make your tests easier to
read and maintain. It's not tied to any particular test framework, so it can
be used equally well in a unit testing or from a plain old "main" method.
This section introduces WebDriver's API and helps get you started becoming
familiar with it.  Start by setting up a WebDriver project if you haven't already.
This was described in the previous section, :ref:`setting-up-webdriver-project`.

Once your project is set up, you can see that WebDriver acts just as any normal library:
it is entirely self-contained, and you usually don't need to remember to start any
additional processes or run any installers before using it, as opposed to the proxy server
with Selenium-RC.

Note: additional steps are required to use `Chrome Driver`_, `Opera Driver`_, `Android Driver`_
and `iPhone Driver`_

You're now ready to write some code. An easy way to get started is this
example, which searches for the term "Cheese" on Google and then outputs the
result page's title to the console.

.. literalinclude:: /examples/Chapter3/Java/Selenium2Example.java
   :language: java

.. literalinclude:: /examples/Chapter3/CSharp/Selenium2Example.cs
   :language: csharp

.. literalinclude:: /examples/Chapter3/Python/Selenium2Example.py
   :language: python

.. literalinclude:: /examples/Chapter3/Ruby/Selenium2Example.rb
   :language: ruby

.. literalinclude:: /examples/Chapter3/Javascript/Selenium2Example.js
   :language: javascript


In upcoming sections, you will learn more about how to use WebDriver for things
such as navigating forward and backward in your browser's history, and how to
test web sites that use frames and windows. We also provide a more
thorough discussions and examples.



Selenium-WebDriver API Commands and Operations
----------------------------------------------

Fetching a Page
~~~~~~~~~~~~~~~

The first thing you're likely to want to do with WebDriver is navigate to a page.
The normal way to do this is by calling "get":

.. code-block:: java

    driver.get("http://www.google.com");

.. code-block:: csharp

    driver.Url = "http://www.google.com";

.. code-block:: ruby
    
    driver.get "http://www.google.com"

.. code-block:: python

    driver.get("http://www.google.com")

Dependent on several factors, including the OS/Browser combination, 
WebDriver may or may not wait for the page to load. In some circumstances, 
WebDriver may return control before the page has finished, or even started, loading.  
To ensure robustness, you need to wait for the element(s) to exist in the page using
:ref:`Explicit and Implicit Waits <explicit_and_implicit_waits-reference>`.


Locating UI Elements (WebElements)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Locating elements in WebDriver can be done on the WebDriver instance itself or on a WebElement.
Each of the language bindings expose a "Find Element" and "Find Elements" method. The first returns
a WebElement object otherwise it throws an exception. The latter returns a list of WebElements, it can
return an empty list if no DOM elements match the query.

The "Find" methods take a locator or query object called "By". "By" strategies are listed below.

By ID
+++++

This is the most efficient and preferred way to locate an element. Common pitfalls that UI developers
make is having non-unique id's on a page or auto-generating the id, both should be avoided. A class
on an html element is more appropriate than an auto-generated id.

Example of how to find an element that looks like this:

.. code-block:: html

    <div id="coolestWidgetEvah">...</div>

.. code-block:: java

    WebElement element = driver.findElement(By.id("coolestWidgetEvah"));

.. code-block:: csharp

    IWebElement element = driver.FindElement(By.Id("coolestWidgetEvah"));

.. code-block:: ruby

    element = driver.find_element(:id, "coolestWidgetEvah")

.. code-block:: python

    element = driver.find_element_by_id("coolestWidgetEvah")

    or

    from selenium.webdriver.common.by import By
    element = driver.find_element(by=By.ID, value="coolestWidgetEvah")


By Class Name
+++++++++++++

"Class" in this case refers to the attribute on the DOM element. Often in practical use there are
many DOM elements with the same class name, thus finding multiple elements becomes the more practical
option over finding the first element.


Example of how to find an element that looks like this:

.. code-block:: html

    <div class="cheese"><span>Cheddar</span></div><div class="cheese"><span>Gouda</span></div>

.. code-block:: java

    List<WebElement> cheeses = driver.findElements(By.className("cheese"));

.. code-block:: csharp

    IList<IWebElement> cheeses = driver.FindElements(By.ClassName("cheese"));

.. code-block:: ruby

    cheeses = driver.find_elements(:class_name, "cheese")

    or

    cheeses = driver.find_elements(:class, "cheese")

.. code-block:: python

    cheeses = driver.find_elements_by_class_name("cheese")

    or

    from selenium.webdriver.common.by import By
    cheeses = driver.find_elements(By.CLASS_NAME, "cheese")


By Tag Name
+++++++++++

The DOM Tag Name of the element.

Example of how to find an element that looks like this:

.. code-block:: html

    <iframe src="..."></iframe>

.. code-block:: java

    WebElement frame = driver.findElement(By.tagName("iframe"));

.. code-block:: csharp

    IWebElement frame = driver.FindElement(By.TagName("iframe"));

.. code-block:: ruby

    frame = driver.find_element(:tag_name, "iframe")

.. code-block:: python

    frame = driver.find_element_by_tag_name("iframe")

    or

    from selenium.webdriver.common.by import By
    frame = driver.find_element(By.TAG_NAME, "iframe")


By Name
+++++++

Find the input element with matching name attribute.

Example of how to find an element that looks like this:

.. code-block:: html

    <input name="cheese" type="text"/>

.. code-block:: java

    WebElement cheese = driver.findElement(By.name("cheese"));

.. code-block:: csharp

    IWebElement cheese = driver.FindElement(By.Name("cheese"));

.. code-block:: ruby

    cheese = driver.find_element(:name, "cheese")

.. code-block:: python

    cheese = driver.find_element_by_name("cheese")

    or

    from selenium.webdriver.common.by import By
    cheese = driver.find_element(By.NAME, "cheese")


By Link Text
++++++++++++

Find the link element with matching visible text.

Example of how to find an element that looks like this:

.. code-block:: html

    <a href="http://www.google.com/search?q=cheese">cheese</a>>

.. code-block:: java

    WebElement cheese = driver.findElement(By.linkText("cheese"));

.. code-block:: csharp

    IWebElement cheese = driver.FindElement(By.LinkText("cheese"));

.. code-block:: ruby

    cheese = driver.find_element(:link_text, "cheese")

    or

    cheese = driver.find_element(:link, "cheese")

.. code-block:: python

    cheese = driver.find_element_by_link_text("cheese")

    or

    from selenium.webdriver.common.by import By
    cheese = driver.find_element(By.LINK_TEXT, "cheese")


By Partial Link Text
++++++++++++++++++++

Find the link element with partial matching visible text.

Example of how to find an element that looks like this:

.. code-block:: html

    <a href="http://www.google.com/search?q=cheese">search for cheese</a>>

.. code-block:: java

    WebElement cheese = driver.findElement(By.partialLinkText("cheese"));

.. code-block:: csharp

    IWebElement cheese = driver.FindElement(By.PartialLinkText("cheese"));

.. code-block:: ruby

    cheese = driver.find_element(:partial_link_text, "cheese")

.. code-block:: python

    cheese = driver.find_element_by_partial_link_text("cheese")

    or

    from selenium.webdriver.common.by import By
    cheese = driver.find_element(By.PARTIAL_LINK_TEXT, "cheese")

By CSS
++++++

Like the name implies it is a locator strategy by css. Native browser support
is used by default, so please refer to `w3c css selectors <http://www.w3.org/TR/CSS/#selectors>`
for a list of generally available css selectors. If a browser does not have
native support for css queries, then `Sizzle <http://sizzlejs.com/>`_ is used. IE 6,7 and FF3.0 
currently use Sizzle as the css query engine.

Beware that not all browsers were created equal, some css that might work in one version may not work
in another.

Example of to find the cheese below:

.. code-block:: html

    <div id="food"><span class="dairy">milk</span><span class="dairy aged">cheese</span></div>

.. code-block:: java

    WebElement cheese = driver.findElement(By.cssSelector("#food span.dairy.aged"));

.. code-block:: csharp

    IWebElement cheese = driver.FindElement(By.CssSelector("#food span.dairy.aged"));

.. code-block:: ruby

    cheese = driver.find_element(:css, "#food span.dairy.aged")

.. code-block:: python

    cheese = driver.find_element_by_css_selector("#food span.dairy.aged")

    or

    from selenium.webdriver.common.by import By
    cheese = driver.find_element(By.CSS_SELECTOR, "#food span.dairy.aged")


By XPATH
++++++++

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

.. code-block:: java

    List<WebElement> inputs = driver.findElements(By.xpath("//input"));

.. code-block:: csharp

    IList<IWebElement> inputs = driver.FindElements(By.XPath("//input"));

.. code-block:: ruby

    inputs = driver.find_elements(:xpath, "//input")

.. code-block:: python

    inputs = driver.find_elements_by_xpath("//input")

    or

    from selenium.webdriver.common.by import By
    inputs = driver.find_elements(By.XPATH, "//input")


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

Using JavaScript
++++++++++++++++

You can execute arbitrary javascript to find an element and as long as you return a DOM Element,
it will be automatically converted to a WebElement object.

Simple example on a page that has jQuery loaded:

.. code-block:: java

    WebElement element = (WebElement) ((JavascriptExecutor)driver).executeScript("return $('.cheese')[0]");

.. code-block:: csharp

    IWebElement element = (IWebElement) ((IJavaScriptExecutor)driver).ExecuteScript("return $('.cheese')[0]");

.. code-block:: ruby

    element = driver.execute_script("return $('.cheese')[0]")

.. code-block:: python

    element = driver.execute_script("return $('.cheese')[0]")

Finding all the input elements to the every label on a page:

.. code-block:: java
    
    List<WebElement> labels = driver.findElements(By.tagName("label"));
    List<WebElement> inputs = (List<WebElement>) ((JavascriptExecutor)driver).executeScript(
        "var labels = arguments[0], inputs = []; for (var i=0; i < labels.length; i++){" +
        "inputs.push(document.getElementById(labels[i].getAttribute('for'))); } return inputs;", labels);

.. code-block:: csharp

    IList<IWebElement> labels = driver.FindElements(By.TagName("label"));
    IList<IWebElement> inputs = (IList<IWebElement>) ((IJavaScriptExecutor)driver).ExecuteScript(
        "var labels = arguments[0], inputs = []; for (var i=0; i < labels.length; i++){" +
        "inputs.push(document.getElementById(labels[i].getAttribute('for'))); } return inputs;", labels);

.. code-block:: ruby

    labels = driver.find_elements(:tag_name, "label")
    inputs = driver.execute_script(
        "var labels = arguments[0], inputs = []; for (var i=0; i < labels.length; i++){" +
        "inputs.push(document.getElementById(labels[i].getAttribute('for'))); } return inputs;", labels)

.. code-block:: python

    labels = driver.find_elements_by_tag_name("label")
    inputs = driver.execute_script(
        "var labels = arguments[0], inputs = []; for (var i=0; i < labels.length; i++){" +
        "inputs.push(document.getElementById(labels[i].getAttribute('for'))); } return inputs;", labels)


User Input - Filling In Forms
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We've already seen how to enter text into a textarea or text field, but what
about the other elements? You can "toggle" the state of checkboxes, and you
can use "click" to set something like an OPTION tag selected. Dealing
with SELECT tags isn't too bad:

.. code-block:: java

    WebElement select = driver.findElement(By.tagName("select"));
    List<WebElement> allOptions = select.findElements(By.tagName("option"));
    for (WebElement option : allOptions) {
        System.out.println(String.format("Value is: %s", option.getAttribute("value")));
        option.click();
    }

.. code-block:: csharp

    IWebElement select = driver.FindElement(By.TagName("select"));
    IList<IWebElement> allOptions = select.FindElements(By.TagName("option"));
    foreach (IWebElement option in allOptions)
    {
        System.Console.WriteLine("Value is: " + option.GetAttribute("value"));
        option.Click();
    }

.. code-block:: ruby

    select = driver.find_element(:tag_name, "select")
    all_options = select.find_elements(:tag_name, "option")
    all_options.each do |option|
      puts "Value is: " + option.attribute("value")
      option.click
    end

.. code-block:: python

    select = driver.find_element_by_tag_name("select")
    allOptions = select.find_elements_by_tag_name("option")
    for option in allOptions:
        print "Value is: " + option.get_attribute("value")
        option.click()


This will find the first "SELECT" element on the page, and cycle through each
of its OPTIONs in turn, printing out their values, and selecting each in turn.
As you will notice, this isn't the most efficient way of dealing with SELECT
elements. WebDriver's support classes include one called "Select", which
provides useful methods for interacting with these.

.. code-block:: java

    Select select = new Select(driver.findElement(By.tagName("select")));
    select.deselectAll();
    select.selectByVisibleText("Edam");

.. code-block:: csharp

    SelectElement select = new SelectElement(driver.FindElement(By.TagName("select")));
    select.DeselectAll();
    select.SelectByText("Edam");

.. code-block:: ruby
	
    # available since 2.14
	select = Selenium::WebDriver::Support::Select.new(driver.find_element(:tag_name, "select"))
	select.deselect_all()
	select.select_by(:text, "Edam")

.. code-block:: python
    
    # available since 2.12
    from selenium.webdriver.support.ui import Select 
    select = Select(driver.find_element_by_tag_name("select"))
    select.deselect_all()
    select.select_by_visible_text("Edam")

This will deselect all OPTIONs from the first SELECT on the page, and then
select the OPTION with the displayed text of "Edam".

Once you've finished filling out the form, you probably want to submit it. One
way to do this would be to find the "submit" button and click it:

.. code-block:: java

    driver.findElement(By.id("submit")).click();
    
.. code-block:: ruby

    driver.find_element(:id, "submit").click
    
.. code-block:: python

    driver.find_element_by_id("submit").click()    

Alternatively, WebDriver has the convenience method "submit" on every element.
If you call this on an element within a form, WebDriver will walk up the DOM
until it finds the enclosing form and then calls submit on that. If the
element isn't in a form, then the ``NoSuchElementException`` will be thrown:

.. code-block:: java

    element.submit();

.. code-block:: ruby

    element.submit
    
.. code-block:: python

    element.submit()


Moving Between Windows and Frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Some web applications have many frames or multiple windows. WebDriver supports
moving between named windows using the "switchTo" method:

.. code-block:: java

    driver.switchTo().window("windowName");
    
.. code-block:: python

    driver.switch_to_window("windowName")

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
    
.. code-block:: ruby

    driver.window_handles.each do |handle|
        driver.switch_to.window handle
    end

.. code-block:: python

    for handle in driver.window_handles:
        driver.switch_to_window(handle)


You can also switch from frame to frame (or into iframes):

.. code-block:: java

    driver.switchTo().frame("frameName");

.. code-block:: python

    driver.switch_to_frame("frameName")

It's possible to access subframes by separating the path with a dot, and you
can specify the frame by its index too. That is:

.. code-block:: java

    driver.switchTo().frame("frameName.0.child");
    
.. code-block:: python

    driver.switch_to_frame("frameName.0.child")


would go to the frame named "child" of the first subframe of the frame called
"frameName". **All frames are evaluated as if from *top*.**

Popup Dialogs
~~~~~~~~~~~~~~

Starting with Selenium 2.0 beta 1, there is built in support for handling popup
dialog boxes. After you've triggered an action that opens a
popup, you can access the alert with the following:

.. code-block:: java

    Alert alert = driver.switchTo().alert();
    
.. code-block:: ruby

    alert = driver.switch_to.alert

.. code-block:: python

    alert = driver.switch_to_alert()
    # usage: alert.dismiss(), etc.

This will return the currently open alert object. With this object you can now accept,
dismiss, read its contents or even type into a prompt. This interface works equally
well on alerts, confirms, and prompts. Refer to the `JavaDocs <http://selenium.googlecode.com/git/docs/api/java/index.html>`_ 
or `RubyDocs <http://selenium.googlecode.com/git/docs/api/rb/Selenium/WebDriver/Alert.html>`_ for more information.



Navigation: History and Location
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Earlier, we covered navigating to a page using the "get" command (
``driver.get("http://www.example.com")``) As you've seen, WebDriver has a
number of smaller, task-focused interfaces, and navigation is a useful task.
Because loading a page is such a fundamental requirement, the method to do this
lives on the main WebDriver interface, but it's simply a synonym to:

.. code-block:: java

    driver.navigate().to("http://www.example.com");
    
.. code-block:: ruby

    driver.navigate.to "http://www.example.com"

.. code-block:: python

    driver.get("http://www.example.com")  # python doesn't have driver.navigate

To reiterate: "``navigate().to()``" and "``get()``" do exactly the same thing.
One's just a lot easier to type than the other!

The "navigate" interface also exposes the ability to move backwards and forwards in your browser's history:

.. code-block:: java

    driver.navigate().forward();
    driver.navigate().back();
    
.. code-block:: ruby

    driver.navigate.forward
    driver.navigate.back

.. code-block:: python

    driver.forward()
    driver.back()

Please be aware that this functionality depends entirely on the underlying
browser. It's just possible that something unexpected may happen when you call
these methods if you're used to the behaviour of one browser over another.

Cookies
~~~~~~~

Before we leave these next steps, you may be interested in understanding how to
use cookies. First of all, you need to be on the domain that the cookie will be
valid for. If you are trying to preset cookies before
you start interacting with a site and your homepage is large / takes a while to load
an alternative is to find a smaller page on the site, typically the 404 page is small
(http://example.com/some404page)

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

    // You can delete cookies in 3 ways
    // By name
    driver.manage().deleteCookieNamed("CookieName");
    // By Cookie
    driver.manage().deleteCookie(loadedCookie);
    // Or all of them
    driver.manage().deleteAllCookies();

.. code-block:: python
    
    # Go to the correct domain
    driver.get("http://www.example.com")

    # Now set the cookie. Here's one for the entire domain
    # the cookie name here is 'key' and it's value is 'value'
    driver.add_cookie({'name':'key', 'value':'value', 'path':'/'})
    # additional keys that can be passed in are:
    # 'domain' -> String, 
    # 'secure' -> Boolean, 
    # 'expiry' -> Milliseconds since the Epoch it should expire.

    # And now output all the available cookies for the current URL
    for cookie in driver.get_cookies():
        print "%s -> %s" % (cookie['name'], cookie['value'])

    # You can delete cookies in 2 ways
    # By name
    driver.delete_cookie("CookieName")
    # Or all of them
    driver.delete_all_cookies()

.. code-block:: ruby

    # Go to the correct domain
    driver.get "http://www.example.com"
    
    # Now set the cookie. Here's one for the entire domain
    # the cookie name here is 'key' and it's value is 'value'
    driver.manage.add_cookie(:name => 'key', :value => 'value')
    # additional keys that can be passed in are:
    # :path => String, :secure -> Boolean, :expires -> Time, DateTime, or seconds since epoch
    
    # And now output all the available cookies for the current URL
    driver.manage.all_cookies.each { |cookie| 
        puts "&#35;{cookie[:name]} => &#35;{cookie[:value]}" 
    }
    
    # You can delete cookies in 2 ways
    # By name
    driver.manage.delete_cookie("CookieName")
    # Or all of them
    driver.manage.delete_all_cookies
    

Changing the User Agent
~~~~~~~~~~~~~~~~~~~~~~~

This is easy with the `Firefox Driver`_:

.. code-block:: java

    FirefoxProfile profile = new FirefoxProfile();
    profile.addAdditionalPreference("general.useragent.override", "some UA string");
    WebDriver driver = new FirefoxDriver(profile);

.. code-block:: ruby

    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['general.useragent.override'] = "some UA string"
    driver = Selenium::WebDriver.for :firefox, :profile => profile
    
.. code-block:: python

    profile = webdriver.FirefoxProfile()
    profile.set_preference("general.useragent.override", "some UA string")
    driver = webdriver.Firefox(profile)


Drag And Drop
~~~~~~~~~~~~~

Here's an example of using the Actions class to perform a drag and drop.
Native events are required to be enabled.

.. code-block:: java

    WebElement element = driver.findElement(By.name("source"));
    WebElement target = driver.findElement(By.name("target"));

    (new Actions(driver)).dragAndDrop(element, target).perform();
    
.. code-block:: ruby

    element = driver.find_element(:name => 'source')
    target = driver.find_element(:name => 'target')
    
    driver.action.drag_and_drop(element, target).perform

.. code-block:: python

    from selenium.webdriver.common.action_chains import ActionChains
    element = driver.find_element_by_name("source")
    target =  driver.find_element_by_name("target")
    
    ActionChains(driver).drag_and_drop(element, target).perform()


Driver Specifics and Tradeoffs
------------------------------

Selenium-WebDriver's Drivers
-------------------------------

WebDriver is the name of the key interface against which tests should be
written, but there are several implementations. These include:

HtmlUnit Driver
~~~~~~~~~~~~~~~

This is currently the fastest and most lightweight implementation of WebDriver.
As the name suggests, this is based on HtmlUnit. HtmlUnit is a java based implementation
of a WebBrowser without a GUI. For any language binding (other than java) the 
Selenium Server is required to use this driver.

Usage
+++++

.. literalinclude:: /examples/Chapter3/Java/HtmlUnitUsage.java
   :language: java

.. literalinclude:: /examples/Chapter3/CSharp/HtmlUnitUsage.cs
   :language: csharp

.. literalinclude:: /examples/Chapter3/Python/HtmlUnitUsage.py
   :language: python

.. literalinclude:: /examples/Chapter3/Ruby/HtmlUnitUsage.rb
   :language: ruby


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

    HtmlUnitDriver driver = new HtmlUnitDriver(true);

.. code-block:: csharp

    WebDriver driver = new RemoteWebDriver(new Uri("http://127.0.0.1:4444/wd/hub"),
                           DesiredCapabilities.HtmlUnitWithJavaScript());

.. code-block:: ruby

    caps = Selenium::WebDriver::Remote::Capabilities.htmlunit(:javascript_enabled => true)
    driver = Selenium::WebDriver.for :remote, :url => "http://localhost:4444/wd/hub", :desired_capabilities => caps

.. code-block:: python

    driver = webdriver.Remote("http://localhost:4444/wd/hub", webdriver.DesiredCapabilities.HTMLUNITWITHJS)

This will cause the HtmlUnit Driver to emulate Firefox 3.6's JavaScript
handling by default.

Firefox Driver
~~~~~~~~~~~~~~

Controls the `Firefox <http://getfirefox.com>`_ browser using a Firefox plugin.
The Firefox Profile that is used is stripped down from what is installed on the
machine to only include the Selenium WebDriver.xpi (plugin). A few settings are
also changed by default (`see the source to see which ones 
<http://code.google.com/p/selenium/source/browse/trunk/java/client/src/org/openqa/selenium/firefox/FirefoxProfile.java#55>`_)
Firefox Driver is capable of being run and is tested on Windows, Mac, Linux. 
Currently on versions 3.6, 10, latest - 1, latest

Usage
+++++

.. literalinclude:: /examples/Chapter3/Java/FirefoxUsage.java
   :language: java

.. literalinclude:: /examples/Chapter3/CSharp/FirefoxUsage.cs
   :language: csharp

.. literalinclude:: /examples/Chapter3/Python/FirefoxUsage.py
   :language: python

.. literalinclude:: /examples/Chapter3/Ruby/FirefoxUsage.rb
   :language: ruby

Pros
++++

* Runs in a real browser and supports JavaScript
* Faster than the `Internet Explorer Driver`_

Cons
++++

* Slower than the `HtmlUnit Driver`_


Modifying the Firefox Profile
+++++++++++++++++++++++++++++

Suppose that you wanted to modify the user agent string (as above), but you've
got a tricked out Firefox profile that contains dozens of useful extensions.
There are two ways to obtain this profile. Assuming that the profile has been
created using Firefox's profile manager (``firefox -ProfileManager``):

.. code-block:: java

    ProfilesIni allProfiles = new ProfilesIni();
    FirefoxProfile profile = allProfiles.getProfile("WebDriver");
    profile.setPreferences("foo.bar", 23);
    WebDriver driver = new FirefoxDriver(profile);

Alternatively, if the profile isn't already registered with Firefox:

.. code-block:: java

    File profileDir = new File("path/to/top/level/of/profile");
    FirefoxProfile profile = new FirefoxProfile(profileDir);
    profile.addAdditionalPreferences(extraPrefs);
    WebDriver driver = new FirefoxDriver(profile);

As we develop features in the `Firefox Driver`_, we expose the ability to use them.
For example, until we feel native events are stable on Firefox for Linux, they
are disabled by default. To enable them:

.. code-block:: java

    FirefoxProfile profile = new FirefoxProfile();
    profile.setEnableNativeEvents(true);
    WebDriver driver = new FirefoxDriver(profile);

.. code-block:: python

    profile = webdriver.FirefoxProfile()
    profile.native_events_enabled = True
    driver = webdriver.Firefox(profile)

.. code-block:: ruby
    
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile.native_events = true
    driver = Selenium::WebDriver.for :firefox, :profile => profile
    
    

Info
++++

See the `Firefox section in the wiki page <http://code.google.com/p/selenium/wiki/FirefoxDriver>`_ for the most up to date info.

Internet Explorer Driver
~~~~~~~~~~~~~~~~~~~~~~~~

This driver is controlled by a .dll and is thus only available on Windows OS.
Each Selenium release has it's core functionality tested against versions
6, 7 and 8 on XP, and 9 on Windows7.

Usage
+++++

.. literalinclude:: /examples/Chapter3/Java/IEUsage.java
   :language: java

.. literalinclude:: /examples/Chapter3/CSharp/IEUsage.cs
   :language: csharp

.. literalinclude:: /examples/Chapter3/Python/IEUsage.py
   :language: python

.. literalinclude:: /examples/Chapter3/Ruby/IEUsage.rb
   :language: ruby

Pros
++++

* Runs in a real browser and supports JavaScript with all the quirks
  your end users see.

Cons
++++

* Obviously the `Internet Explorer Driver`_ will only work on Windows!
* Comparatively slow (though still pretty snappy :)
* XPath is not natively supported in most versions. Sizzle is injected automatically
  which is significantly slower than other browsers and slower when comparing to CSS
  selectors in the same browser.
* CSS is not natively supported in versions 6 and 7. Sizzle is injected instead.
* CSS selectors in IE 8 and 9 are native, but those browsers don't fully support CSS3

Info
++++

See the `Internet Explorer section of the wiki page <http://code.google.com/p/selenium/wiki/InternetExplorerDriver>`_ for the most up to date info.
Please take special note of the Required Configuration section.


Chrome Driver
~~~~~~~~~~~~~

Chrome Driver is maintained / supported by the `Chromium <http://code.google.com/p/chromium/>`_ 
project iteslf. WebDriver works with Chrome through the chromedriver binary (found on the chromium
project's download page). You need to have both chromedriver and a version of chrome browser installed.
chromedriver needs to be placed somewhere on your system's path in order for WebDriver to automatically
discover it. The Chrome browser itself is discovered by chromedriver in the default installation path.
These both can be overridden by environment variables. Please refer to `the wiki <http://code.google.com/p/selenium/wiki/ChromeDriver>`_
for more information.

Usage
+++++

.. literalinclude:: /examples/Chapter3/Java/ChromeUsage.java
   :language: java

.. literalinclude:: /examples/Chapter3/CSharp/ChromeUsage.cs
   :language: csharp

.. literalinclude:: /examples/Chapter3/Python/ChromeUsage.py
   :language: python

.. literalinclude:: /examples/Chapter3/Ruby/ChromeUsage.rb
   :language: ruby

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

Info
++++

`See our wiki <http://code.google.com/p/selenium/wiki/ChromeDriver>`_ for the most up to date info.
More info can also be found on the `downloads page </download/>`_

Getting running with Chrome Driver
++++++++++++++++++++++++++++++++++

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



Alternative Back-Ends: Mixing WebDriver and RC Technologies
-----------------------------------------------------------



WebDriver-Backed Selenium-RC
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Java version of WebDriver provides an implementation of the Selenium-RC API.  These means that
you can use the underlying WebDriver technology using the Selenium-RC API.  This is primarily 
provided for backwards compatibility.  It allows those who have existing test suites using the 
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
    WebDriver driverInstance = ((WebDriverBackedSelenium) selenium).getWrappedDriver();

    //Finally, close the browser. Call stop on the WebDriverBackedSelenium instance
    //instead of calling driver.quit(). Otherwise, the JVM will continue running after
    //the browser has been closed.
    selenium.stop();

Pros
++++

* Allows for the WebDriver and Selenium APIs to live side-by-side
* Provides a simple mechanism for a managed migration from the Selenium RC API
  to WebDriver's
* Does not require the standalone Selenium RC server to be run

Cons
++++

* Does not implement every method
* More advanced Selenium usage (using "browserbot" or other built-in JavaScript
  methods from Selenium Core) may not work
* Some methods may be slower due to underlying implementation differences

Backing WebDriver with Selenium
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

WebDriver doesn't support as many browsers as Selenium RC does, so in order to
provide that support while still using the WebDriver API, you can make use of
the ``SeleneseCommandExecutor``

Safari is supported in this way with the following code (be sure to disable
pop-up blocking):

.. code-block:: java

    DesiredCapabilities capabilities = new DesiredCapabilities();
    capabilities.setBrowserName("safari");
    CommandExecutor executor = new SeleneseCommandExecutor(new URL("http://localhost:4444/"), new URL("http://www.google.com/"), capabilities);
    WebDriver driver = new RemoteWebDriver(executor, capabilities);

There are currently some major limitations with this approach, notably that
findElements doesn't work as expected. Also, because we're using Selenium Core
for the heavy lifting of driving the browser, you are limited by the JavaScript
sandbox.

Running Standalone Selenium Server for use with RemoteDrivers
-------------------------------------------------------------

From `Selenium's Download page <https://code.google.com/p/selenium/downloads/list>`_ download selenium-server-standalone-<version>.jar and optionally IEDriverServer. If you plan to work with Chrome, download it from `Google Code <http://chromedriver.googlecode.com/>`_. 

Unpack IEDriverServer and/or chromedriver and put them in a directory which is on the $PATH / %PATH% - the Selenium Server should then be able to handle requests for IE / Chrome without additional modifications. 

Start the server on the command line with 

.. code-block:: bash
  
  java -jar <path_to>/selenium-server-standalone-<version>.jar

If you want to use native events functionality, indicate this on the command line with the option 

.. code-block:: bash
  
  -Dwebdriver.enable.native.events=1

For other command line options, execute 

.. code-block:: bash

  java -jar <path_to>/selenium-server-standalone-<version>.jar -help

In order to function properly, the following ports should be allowed incoming TCP connections: 4444, 7054-5 (or twice as many ports as the number of concurrent instances you plan to run). Under Windows, you may need to unblock the applications as well.


.. _SeleniumWebDriverWiki:

Additional Resources
--------------------

You can find further resources for WebDriver
in `WebDriver's wiki <http://code.google.com/p/selenium/wiki/FurtherResources>`_

Of course, don't hesitate to do an internet search on any Selenium topic, including 
Selenium-WebDriver's drivers.  There are quite a few blogs on Selenium along with numerous posts
on various user forums.  Additionally the Selenium User's Group is a great resource.
`<http://groups.google.com/group/selenium-users>`_

Next Steps
----------

This chapter has simply been a high level walkthrough of WebDriver and some of its key
capabilities.  Once getting familiar with the Selenium-WebDriver API you will then want to learn
how to build test suites for maintainability, extensibility, and reduced fragility when features of
the AUT frequently change.  The approach most Selenium experts are now recommending is to design
your test code using the Page Object Design Pattern along with possibly a Page Factory.  
Selenium-WebDriver provides support for this by supplying a PageFactory class in Java and C#.  
This is presented,along with other advanced topics, in the 
:ref:`next chapter <chapter04-reference>`.  Also, for high-level description of this
technique, you may want to look at the
:ref:`Test Design Considerations chapter <chapter06-reference>`.  Both of these
chapters present techniques for writing more maintainable tests by making your test code more
modular.
