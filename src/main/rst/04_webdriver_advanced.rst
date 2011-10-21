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
Todo

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
