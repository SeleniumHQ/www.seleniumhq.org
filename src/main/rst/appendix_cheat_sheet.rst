Selenium WebDriver Cheat Sheet 
==============================

.. _cheat_sheet-reference:

Role Based Interfaces in Selenium WebDriver
-------------------------------------------

One of the differences between Selenium RC and Selenium WebDriver is that the WebDriver APIs make extensive use of "role-based interfaces" to allow users to determine whether a particular driver supports a feature. This can make it hard to know what features are available without first knowing which interface to try and use. The key interfaces are listed below.

+-----------+------+---------------+
| Interface | Role | Documentation |
+===========+======+===============+
| HasCapabilities | Provides access to the capabilities supported by this driver. | `Java <http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/HasCapabilities.html>`_ |
| JavascriptExecutor | Allows the execution of arbitrary JS commands. | Java <http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/JavascriptExecutor.html>`_ |
| Rotatable | Indicates whether the driver supports rotating the display (mostly just mobile drivers). | Java <http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/Rotatable.html>`_ |
| TakesScreenshot | Provides a mechanism for taking screenshots. | Java <http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/TakesScreenshot.html>`_ |
+-----------+------+---------------+

