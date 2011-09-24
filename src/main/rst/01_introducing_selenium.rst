Introduction
============

.. _chapter01-reference:

Test Automation for Web Applications
------------------------------------
Many, perhaps most, software applications today are written as web-based
applications to be run in an Internet browser. The  effectiveness of testing
these applications varies widely among companies and organizations. In an era
of highly interactive and responsive software processes where many organizations
are using some form of Agile methodology, test automation is frequently
becoming a requirement for software projects.  Test automation is often the
answer. Test automation means using a software tool to run repeatable tests
against the application to be tested.  For regression testing this provides
that responsiveness.
  
There are many advantages to test automation. Most are related to the
repeatability of the tests and the speed at which the tests can be executed.
There are a number of commercial and open source tools available for assisting
with the development of test automation. Selenium is possibly the most
widely-used open source solution. This user's guide will assist both new and
experienced Selenium users in learning effective techniques in building test
automation for web applications. 

This user's guide introduces Selenium, teaches its features, and 
presents commonly used best practices accumulated from the Selenium 
community. Many examples are provided. Also, technical information on the 
internal structure of Selenium and recommended uses of Selenium are provided.

Test automation has specific advantages for 
improving the long-term efficiency of a software team's testing processes. 
Test automation supports:

* Frequent regression testing 
* Rapid feedback to developers
* Virtually unlimited iterations of test case execution 
* Support for Agile and extreme development methodologies 
* Disciplined documentation of test cases
* Customized defect reporting
* Finding defects missed by manual testing

To Automate or Not to Automate?
-------------------------------
Is automation always advantageous? When should one decide to automate
test cases? 

It is **not** always advantageous to automate test cases. There are 
times when manual testing may be more appropriate. For instance, if the 
application's user interface will change considerably in the near future, 
then any automation might need to be rewritten anyway. Also, sometimes there simply 
is not enough time to build test automation. For the short term, manual testing 
may be more effective. If an application has a very tight deadline, there is 
currently no test automation available, and it's imperative that the testing 
get done within that time frame, then manual testing is the best solution.  

Introducing Selenium 
--------------------
Selenium is set of different software tools each with a different approach
to supporting test automation. Most Selenium QA Engineers focus on the one 
or two tools that most meet the needs of their project, however learning all
the tools will give you many different options for approaching different 
test automation problems.
The entire suite of tools results in a rich set of 
testing functions specifically geared to the needs of testing of web 
applications of all types. These operations are highly flexible, allowing many options for 
locating UI elements and comparing expected test results against actual 
application behavior. One of Selenium's key features is the support for executing one's tests on
multiple browser platforms.  

.. _selenium-history:

Brief History of The Selenium Project
-------------------------------------
Selenium first came to life in 2004 when Jason Huggins was testing an internal
application at ThoughtWorks. Being a smart guy, he realized there were better
uses of his time than manually stepping through the same tests with every
change he made. He developed a Javascript library that could drive interactions
with the page, allowing him to automatically rerun tests against multiple
browsers. That library eventually became Selenium Core, which underlies all the
functionality of Selenium Remote Control (RC) and Selenium IDE. Selenium RC was
ground-breaking because no other product allowed you to control a browser from
a language of your choosing.

While Selenium was a tremendous tool, it wasn't without it's drawbacks.
Because of its Javascript based automation engine and the security limitations
browsers apply to Javascript, different things became impossible to do.  To
make things "worst", webapps became more and more powerful over time, using all
sorts of special features new browsers provide and making this restrictions
more and more painful.

In 2006 a plucky engineer at Google named Simon Stewart started work on
a project he called WebDriver. Google had long been a heavy user of Selenium,
but testers had to work around the limitations of the product. Simon wanted
a testing tool that spoke directly to the browser using the 'native' method for
the browser and operating system, thus avoiding the restrictions of a sandboxed
Javascript environment. The WebDriver project began with the aim to solve the
Selenium' pain-points.

Jump to 2008. The Beijing Olympics mark China's arrival as a global power,
massive mortgage default in the United States triggers the worst international
recession since the Great Depression, The Dark Knight is viewed by every human
(twice), still reeling from the untimely loss of Heath Ledger. But the most
important story of that year was the merging of Selenium and WebDriver.
Selenium had massive community and commercial support, but WebDriver was
clearly the tool of the future. The joining of the two tools provided a common
set of features for all users and brought some of the brightest minds in test
automation under one roof.  Perhaps the best explanation for why WebDriver and
Selenium are merging was detailed by Simon Stewart, the creator of WebDriver,
in a joint email to the WebDriver and Selenium community on August 6, 2009.

    "Why are the projects merging?  Partly because webdriver addresses some
    shortcomings in selenium (by being able to bypass the JS sandbox, for
    example. And we've got a gorgeous API), partly because selenium addresses
    some shortcomings in webdriver (such as supporting a broader range of
    browsers) and partly because the main selenium contributors and I felt that
    it was the best way to offer users the best possible framework."


Selenium's Tool Suite
---------------------
Selenium is composed of multiple software tools. Each has a specific role. 

Selenium 2 (aka. Selenium Webdriver)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Selenium 2 is the future direction of the project and the newest addition
to the Selenium toolkit.  This brand new automation tool provides all sorts of
awesome features, including a more cohesive and object oriented API as well as
an answer to the limitations of the old implementation.

As you can read in `Brief History of The Selenium Project`_, both the Selenium
and WebDriver developers agreed that both tools have advantages and that
merging the two projects would make a much more robust automation tool.

Selenium 2.0 is the product of that effort.  It supports the WebDriver API and
underlying technology, along with the Selenium 1 technology underneath the
WebDriver API for maximum flexibility in porting your tests.
In addition, Selenium 2 still runs Selenium 1's Selenium RC interface for
backwards compatibility.

Selenium 1 (aka. Selenium RC or Remote Control)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
As you can read in `Brief History of The Selenium Project`_, Selenium RC was
the main Selenium project for a long time, before the WebDriver/Selenium merge
brought up Selenium 2, the newest and more powerful tool. 

Selenium 1 is still actively supported (mostly in maintenance mode) and
provides some features that may not be available in Selenium 2 for a while,
including support for several languages (Java, Javascript, PRuby, HP, Python,
Perl and C#) and support for almost every browser out there.

Selenium IDE
~~~~~~~~~~~~
Selenium IDE (Integrated Development Environment) is a prototyping tool for
building test scripts. It is a Firefox plugin and provides an easy-to-use
interface for developing automated tests. Selenium IDE has a recording feature,
which records user actions as they are performed and then exports them as
a reusable script in one of many programming languages that can be later
executed. 

.. Note:: Even though Selenium IDE has a "Save" feature that allows users to
   keep the tests in a table-based format for later import and execution, it
   *is not designed to run your test passes nor is it designed to build all the
   automated tests you will need*. Specifically, Selenium IDE doesn't provide
   iteration or conditional statements for test scripts.  At the time of writing
   there is no plan to add such thing.  The reasons are partly technical and
   partly based on the Selenium developers encouraging best practices in test
   automation which always requires some amount of programming. **Selenium IDE
   is simply intended as a rapid prototyping tool**.  The Selenium developers
   recommend for serious, robust test automation either Selenium 2 or Selenium
   1 to be used with one of the many supported programming languages.


Selenium-Grid 
~~~~~~~~~~~~~~
Selenium-Grid allows the Selenium RC solution to scale for large test suites
and for test suites that must be run in multiple environments. Selenium Grid
allows you to run your tests in parallel, that is, different tests can be run
at the same time on different remote machines.  This has two advantages.
First, if you have a large test suite, or a slow-running test suite, you can
boost its performance substantially by using Selenium Grid to divide your
test suite to run different tests at the same time using those different
machines.  Also, if you must run your test suite on multiple environments you
can have different remote machines supporting and running your tests in them at
the same time.  In each case Selenium Grid greatly improves the time it takes
to run your suite by making use of parallel processing. 

Choosing Your Selenium Tool 
---------------------------
Many people get started with Selenium IDE. If you are not already experienced
with a programming or scripting language you can use Selenium IDE to get
familiar with Selenium commands.  Using the IDE you can create simple tests
quickly, sometimes within seconds.  

We don't, however, recommend you do all your test automation using Selenium
IDE.  To effectively use Selenium you will need to build and run your tests
using either Selenium 2 or Selenium 1 in conjunction with one of the supported
programming languages.  Which one you choose depends on you.  

At the time of writing the Selenium developers are planning on the
Selenium-WebDriver API being the future direction for Selenium.  Selenium 1 is
provided for backwards compatibility.  Still, both have strengths and
weaknesses which are discussed in the corresponding chapters of this document.

We recommend those who are completely new to Selenium to read through these
sections.  However, for those who are adopting Selenium for the first time, and
therefore building a new test suite from scratch, you will probably want to go
with Selenium 2 since this is the portion of Selenium that will continue to be
supported in the future.

  
Supported Browsers
------------------

*IMPORTANT:  This list was for Sel 1.0, It requires updating for Sel2.0--we will do that very soon.*

=============  ==================================================  ===========================  =====================
**Browser**    **Selenium IDE**                                    **Selenium 1 (RC)**          **Operating Systems**
Firefox 3.x    Record and playback tests                           Start browser, run tests     Windows, Linux, Mac
Firefox 3      Record and playback tests                           Start browser, run tests     Windows, Linux, Mac
Firefox 2      Record and playback tests                           Start browser, run tests     Windows, Linux, Mac
IE 8           Test execution only via Selenium RC*                Start browser, run tests     Windows
IE 7           Test execution only via Selenium RC*                Start browser, run tests     Windows
IE 6           Test execution only via Selenium RC*                Start browser, run tests     Windows
Safari 4       Test execution only via Selenium RC                 Start browser, run tests     Windows, Mac
Safari 3       Test execution only via Selenium RC                 Start browser, run tests     Windows, Mac
Safari 2       Test execution only via Selenium RC                 Start browser, run tests     Windows, Mac
Opera 10       Test execution only via Selenium RC                 Start browser, run tests     Windows, Linux, Mac
Opera 9        Test execution only via Selenium RC                 Start browser, run tests     Windows, Linux, Mac
Opera 8        Test execution only via Selenium RC                 Start browser, run tests     Windows, Linux, Mac 
Google Chrome  Test execution only via Selenium RC                 Start browser, run tests     Windows, Linux, Mac
Others         Test execution only via Selenium RC                 Partial support possible**   As applicable 
=============  ==================================================  ===========================  =====================

\* Tests developed on Firefox via Selenium IDE can be executed on any other 
supported browser via a simple Selenium RC command line.

** Selenium RC server can start any executable, but depending on 
browser security settings there may be technical limitations that would limit
certain features.

Flexibility and Extensibility
------------------------------
You'll find that Selenium is highly flexible.  There are many ways you
can add functionality to both Selenium test scripts and Selenium's framework
to customize your test automation. This is perhaps Selenium's 
greatest strength when compared with other automation tools. These customizations
are described in various places throughout this document.  In addition, since Selenium is Open Source, the sourcecode can always be 
downloaded and modified.

What's in this Book?
--------------------
This user's guide targets both new users and those who 
have already used Selenium but are seeking additional knowledge. We introduce 
Selenium to new users and we do not assume prior Selenium experience.  We do
assume, however, that the user has at least a basic understanding of test
automation.  For the more experienced user, this guide can act as a reference.
For the more experienced, we recommend browsing the chapter and subheadings.
We've provided information on the Selenium architecture, examples of common usage,
and a chapter on test design techniques. 

The remaining chapters of the reference present:

:ref:`Selenium IDE <chapter02-reference>`
    Introduces Selenium IDE and describes how to use it to build test scripts. using the 
    Selenium Integrated Development Environment.  If you are not experienced in programming,
    but still hoping to learn test automation this is where you should start and you'll find
    you can create quite a few automated tests with Selenium IDE.  Also, if you are experienced
    in programming, this chapter may still interest you in that you can use Selenium IDE
    to do rapid prototyping of your tests.  This section also demonstrates how your test
    script can be "exported" to a programming language for adding more advanced capabilities
    not supported by Selenium IDE.

:ref:`Selenium 2 <chapter03-reference>`
    Explains how to develop an automated test program using Selenium 2.

:ref:`Selenium 1 <chapter05-reference>`
    Explains how to develop an automated test program using the Selenium RC API.
    Many examples are presented in both programming languages and scripting 
    languages. Also, the installation and setup of Selenium RC is covered here. 
    The various modes, or configurations, that Selenium RC supports are
    described, along with their trade-offs and limitations. An architecture
    diagram is provided to help illustrate these points. 
    Solutions to common problems frequently difficult for new Sel-R users are
    described here, for instance, handling Security Certificates,
    https requests, pop-ups, and the opening of new windows. 

:ref:`Test Design Considerations <chapter06-reference>`
    This chapter presents programming techniques for use with Selenium-WebDriver and
    Selenium RC. We also demonstrate techniques commonly asked about 
    in the user forum such as how to design setup and teardown functions, how to 
    implement data-driven tests (tests where one can varies the data between test passes)
    and other methods of programming common test automation tasks.

:ref:`Selenium-Grid <chapter07-reference>`
    *This chapter is not yet developed.*
  
:ref:`User extensions <chapter08-reference>`
    Describes ways that Selenium can be modified, extended and customized. 
  
..  :ref:`Getting Help <chapter09-reference>`
    This section shows how can be a part of the Selenium community for getting help and 
    exchanging advice. Specifically this section describes the user group as 
    an avenue for obtaining assistance. 

The Documentation Team--Authors Past and Present
------------------------------------------------

In alphabetical order, the following people have made significant contributions
to the authoring of this user's guide, its publishing infrastructure,
or both.  We are very grateful to all of them.

* Dave Hunt
* Mary Ann May-Pumphrey
* Noah Sussman
* Paul Grandjean
* Peter Newhook
* Santiago Suarez-Ordonez
* Simon Stewart
* `Tarun Kumar`_

.. _`Tarun Kumar`: http://seleniumsoftwaretesting.blogspot.com/



Acknowledgements
~~~~~~~~~~~~~~~~
A special thanks goes to Patrick Lightbody.  As an administrator of the 
SeleniumHQ website, major contributor to Selenium RC, his support was invaluable when 
writing the first release of the user's guide.  Patrick helped us understand our audience. 
He also set us up with 
everything we needed on the seleniumhq.org website for publishing the documents.
Also a thanks goes to Andras Hatvani for his advice on publishing
solutions, and to Amit Kumar for participating in our discussions and for 
assisting with reviewing the document.

And of course, we must *recognize the Selenium Developers*.  They have truly 
designed an amazing tool. Without the vision of the original designers, and 
the continued efforts of the current developers, we would not have such a 
great tool to pass on to you.
