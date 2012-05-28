Selenium-Grid
=============

.. _chapter07-reference:

*Note:  We are currently working on this chapter.  Presently we have introductory info here for people
completely new to Selnium-Grid.  Over the next few months we hope to provide useful examples and illustrations
to thoroughly explain how to use Selenium-Grid.*

Quick Start
-----------
If you're already experienced in Selenium test automation you may simply need a quick-start to get
up and running.  This chapter has much information geared to many skill levels, but may be too much
if you're looking for just a quick reference to quickly try things out.  For a quick-start, refer
to the Selenium-Grid articles in the `Selenium Wiki <http://code.google.com/p/selenium/wiki/Grid2>`_.


What is Selenium-Grid?
----------------------
Selenium-Grid allows you run your tests on different machines against
different browsers in parallel.  That is, running multiple tests at the same time against 
different machines running different browsers and operating systems.  Essentially, Selenium-Grid
support distributed test execution.  It allows for running your tests in 
a *distributed test execution* environment.  


When to Use It
--------------

Generally speaking, there's two reasons why you might want to use Selenium-Grid.

- To run your tests against multiple browsers, multiple versions of browser, and browsers running on different operating systems.
- To reduce the time it takes for the test suite to complete a test pass.


Selenium-Grid is used to speed up the execution of a test pass by using multiple machines to run
tests in parallel.  For example, if you have a suite of 100 tests, but you set up Selenium-Grid
to support 4 different machines (VMs or separate physical machines) to run those tests, your test
suite will complete in (roughly) one-fourth the time as it would if you ran your tests sequentially
on a single machine.  For large test suites, and long-running test suite such as those performing
large amounts of data-validation, this can be a significant time-saver.  Some test suites can take
hours to run.  Another reason to boost the time spent running the suite is to shorten the 
turnaround time for test results after developers check-in code for the AUT.  Increasingly 
software teams practicing Agile software development want test feedback as immediately as possible
as opposed to wait overnight for an overnight test pass.

Selenium-Grid is also used to support running tests against multiple runtime environments, specifically,
against different browsers at the same time.  For example, a 'grid' of virtual machines can be
setup with each supporting a different browser that the application to be tested must support.  So, 
machine 1 has Internet Explorer 8, machine 2, Internet Explorer 9, machine 3 the latest Chrome, and
machine 4 the latest Firefox.  When the test suite is run, Selenium-Grid receives each test-browser
combination and assigs each test to run against it's required browser.

In addition, one can have a grid of all the same browser, type and version.  For instance, one
could have a grid of 4 machines each running 3 instances of Firefox 12, allowing for a 'server-farm'
(in a sense) of available Firefox instances.  When the suite runs, each test is passed to
Selenium-Grid which assigns the test to the next available Firefox instance.  In this manner
one gets test pass where conceivably 12 tests are all running at the same time in parallel, 
significantly reducing the time required to complete a test pass.

Selenium-Grid is very flexible.  These two examples can be combined to allow multiple instances
of each browser type and version.  A configuration such as this would provide both, parallel
execution for fast test pass completion and support for multiple browser types and versions
simultaneously.


Selenium-Grid 2.0
-----------------
Selenium-Grid 2.0 is the latest release as of the writing of this document (5/26/2012).  It is
quite different from version 1 of Selenium-Grid.  In 2.0 Selenium-Grid was merged with the
Selenium-RC server.  Now, you only need to download a single .jar file to get the remote 
Selenium-RC-Server and Selenium-Grid all in one package.


Selenium-Grid 1.0
-----------------
Version 1 was the first general release of Selenium-Grid.  If you are new to Selenium-Grid you should
use version 2.  It's been updated and has new features, and supports Selenium-WebDriver.  Legacy
test systems may still be using version 1 however.  Information on Selenium-Grid version 1 may be 
found at the `Selenium-Grid website <http://selenium-grid.seleniumhq.org/>`_.


How Selenium-Grid Works--With a Hub and Nodes
---------------------------------------------
A grid consists of a single hub, and one or more nodes.  Both are started using the 
selenium-server.jar executable.  We've listed some examples in the following sections of this 
chapter.

The hub receives a test to be executed along with information on which
browser and 'platform' (i.e. WINDOWS, LINUX, etc) where the test should be run.  It 'knows' the 
configuration of each node that has been 'registered' to the hub.  Using this information it
selects an available node that has the requested browser-platform combination.  Once a node has
been selected, Selenium commands initiated by the test are send the the hub, which passes them to 
the node assigned to that test.  The node runs the browser, and executes the Selenium commands
within that browser against the application under test.

A `diagram <http://selenium-grid.seleniumhq.org/how_it_works.html>`_ illustrates this.  Refer to the
second diagram on this page (the first one is illustrating Selenium-RC).  The second diagram was for 
Selenium-Grid 1, however it still applies and is a good illustration of what we're describing here.
The only difference is one of terminology.
Replace the term 'Selenium Remote Control' with 'Selenium-Grid node' the diagram will match our
description for Selenium-Grid 2.


Installation
------------
Installation is simple.  Download the Selenium-Server jar file from the `SeleniumHq website's 
download page <http://seleniumhq.org/download/>`_.  You want the link under the section
"Selenium-Server (formerly Selenium-RC)".

Install it in a folder of your choice.  You'll need to be sure the java executable is on your
execution path so you can run it from the command-line.  If it does not run correcly, verify
your system's path variable includes the path to the java.exe.


Starting Selenium-Grid
----------------------
Generally you would start a hub first since nodes depend on a hub.  This is not abolutely necessary
however, since nodes can recognize when a hub has been started and vice-versa.  For learning 
purposes though, it would easier to start the hub first, otherwise you'll see error
messages that may not want to start off with your first time using Selenium-Grid.


Starting a Hub
~~~~~~~~~~~~~~
To start a hub with default parameters, run the following command from a command-line shell.  This
will work on all the supported platforms, Windows Linux, or MacOs.

.. code-block:: bash

    java -jar selenium-server-standalone-2.21.0.jar -hub
    
This starts a hub using default parameter values.  We'll explain these parameters in folowing 
subsections.  Note that you will likely have to change the version number in the jar filename 
depending on which version of the selenium-server you're using.


Starting a Node
~~~~~~~~~~~~~~~
To start a node using default parameters, run the following command from a command-line.

.. code-block:: bash

	java -jar selenium-server-standalone-2.21.0.jar -role node  -hub http://localhost:4444/grid/register

This assumes the hub has been started above using default parameters.  The default port the hub
uses to listen for new requests is port 4444.  This is why port 4444 was used in the URL for 
locating the hub.  Also the use of 'localhost' assumes your node is running on the same machine
as your hub.  For getting started this is probably easiest.  If running the hub and node on 
separate machines, simply replace 'localhost' with the hostname of the remote machine running the
hub.

WARNING:  Be sure to turn off the firewalls on the machine running your hub and nodes.  Otherwise
you'll likely receive connection errors.
	

Getting Command-Line Help
-------------------------



Node Configuration Examples
---------------------------


Timing Parameters
-----------------




