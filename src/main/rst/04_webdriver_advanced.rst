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
