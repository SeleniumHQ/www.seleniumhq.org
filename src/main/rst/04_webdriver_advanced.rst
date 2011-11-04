WebDriver: Advanced Usage
==========================

.. _chapter04-reference:

.. _explicit_and_implicit_waits-reference:

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

.. literalinclude:: /examples/Chapter4/CSharp/ExplicitWaitExample01.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/ExplicitWaitExample01.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/ExplicitWaitExample01.rb
   :language: ruby

This waits up to 10 seconds before throwing a TimeoutException or if it finds the element will return it in 0 - 10 seconds.
WebDriverWait by default calls the ExpectedCondition every 500 milliseconds until it returns successfully. A successful return is
for ExpectedCondition type is Boolean return true or not null return value for all other ExpectedCondition types.

This example is also functionally equivalent to the first `Implicit Waits`_ example.

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

AdvancedUserInteractions
------------------------

The Actions class(es) allow you to build a Chain of Actions and perform them.
There are too many possible combinations to count. Below are a few of the common
interactions that you may want to use. For a full list of actions please refer to
the API docs `Java <http://selenium.googlecode.com/svn/trunk/docs/api/java/index.html?org/openqa/selenium/interactions/Actions.html>`_ 
`C# <http://selenium.googlecode.com/svn/trunk/docs/api/dotnet/html/AllMembers_T_OpenQA_Selenium_Interactions_Actions.htm>`_ 
`Ruby <http://selenium.googlecode.com/svn/trunk/docs/api/rb/Selenium/WebDriver/ActionBuilder.html>`_ 
`Python <http://selenium.googlecode.com/svn/trunk/docs/api/py/webdriver/selenium.webdriver.common.action_chains.html>`_

The Advanced User Interactions require native events to be enabled. Here's a table
of the current support Matrix for native events:

=================  ===  ===  ===  ===  ======  ======  =============  ===========  ==========  ===== ======= ===
platform           IE6  IE7  IE8  IE9  FF3.6   FF4-7   Chrome stable  Chrome beta  Chrome dev  Opera Android iOS  
=================  ===  ===  ===  ===  ======  ======  =============  ===========  ==========  ===== ======= ===
Windows XP         Y    Y    Y    n/a  Y       Y       Y              Y            Y           ?     Y [1]_  n/a
Windows 7          n/a  n/a  Y    Y    Y       Y       Y              Y            Y           ?     Y [1]_  n/a
Linux (Ubuntu)     n/a  n/a  n/a  n/a  Y [2]_  Y [2]_  Y              Y            Y           ?     Y [1]_  n/a
Mac Lion           n/a  n/a  n/a  n/a  N       N       Y              Y            Y           ?     Y [1]_  N
Mac Snow Leopard   n/a  n/a  n/a  n/a  N       N       Y              Y            Y           ?     Y [1]_  N
Mobile Device      n/a  n/a  n/a  n/a  n/a     ?       n/a            n/a          n/a         ?     Y       N 
=================  ===  ===  ===  ===  ======  ======  =============  ===========  ==========  ===== ======= ===

.. [1] Using the emulator
.. [2] With explicitly enabling native events

Mouse Movement
~~~~~~~~~~~~~~

These examples show how to Mouse over an element, drag and drop, and move the mouse out of an element

.. literalinclude:: /examples/Chapter4/Java/AUIMouseMove.java
   :language: java

.. literalinclude:: /examples/Chapter4/CSharp/AUIMouseMove.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/AUIMouseMove.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/AUIMouseMove.rb
   :language: ruby

Clicks
~~~~~~

These examples show you how to context click (right click),
perform a simple click, and double click.

.. literalinclude:: /examples/Chapter4/Java/AUIClicking.java
   :language: java

.. literalinclude:: /examples/Chapter4/CSharp/AUIClicking.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/AUIClicking.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/AUIClicking.rb
   :language: ruby

Modifier Keys
~~~~~~~~~~~~~

These examples show you how to use a `modifier key <http://en.wikipedia.org/modifier_key>`_.

.. literalinclude:: /examples/Chapter4/Java/AUIModifierKeys.java
   :language: java

.. literalinclude:: /examples/Chapter4/CSharp/AUIModifierKeys.cs
   :language: csharp

.. literalinclude:: /examples/Chapter4/python/AUIModifierKeys.py
   :language: python

.. literalinclude:: /examples/Chapter4/ruby/AUIModifierKeys.rb
   :language: ruby

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

Firefox
+++++++
Firefox maintains it's proxy configuration in a profile. You can preset the
proxy in a profile and use that Firefox Profile or you can set it on profile
that is created on the fly as is shown in the following example.

.. literalinclude:: /examples/Chapter4/Java/ProxySetupFirefox.java
    :language: java

.. #literalinclude:: /examples/Chapter4/CSharp/ProxySetupFirefox.cs
..    :language: csharp

.. literalinclude:: /examples/Chapter4/python/ProxySetupFirefox.py
    :language: python

.. literalinclude:: /examples/Chapter4/ruby/ProxySetupFirefox.rb
    :language: ruby

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
Todo
