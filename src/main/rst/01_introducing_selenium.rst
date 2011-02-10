Introducing Selenium 2.0
========================

.. _chapter01-reference:

Test Automation for Web Applications
------------------------------------
Many, perhaps most, software applications today are written as web-based 
applications to be run in an Internet browser. The  
effectiveness of testing these applications varies widely among companies and 
organizations. In an era of highly interative and responsive software processes
where many organizations are using some form of Agile methodology, test automation
is frequently becoming a requirement for software projects.  Test automation is often the answer. Test automation means using a software tool to 
run repeatable tests against the application to be tested.  For regression testing
this provides that responsiveness.
  
There are many advantages to test automation. Most are related to 
the repeatability of the tests and the speed at which the tests can be executed.
There are a number of commercial and open source tools available for assisting
with the development of test automation. Selenium is possibly the most 
widely-used open source solution. This user's guide will assist both new and 
experienced Selenium users in learning effective techniques in building 
test automation for web applications. 

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
* Support for Agile and eXtreme development methodologies 
* Disciplined documentation of test cases
* Customized defect reporting
* Finding defects missed by manual testing

To Automate or Not to Automate?
------------------------------------------------------
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

Selenium's Tool Suite
---------------------
Selenium is composed of multiple software tools. Each  has a specific role. 

Selenium-WebDriver
~~~~~~~~~~~~~~~~~~

Selenium WebDriver is the future direction of Selenium and the newest addition
to the Selenium tool suite.  WebDriver is an API (application programming
interface) which supports web application test automation just as 
does Selenium-RC (see next section).  However the WebDriver API addresses
some limitations of the old Sel-RC API.  The integration of the WebDriver
API is the primary improvement which defined Selenium 2.0.

WebDriver originally was a separate project from Selenium.  It is relatively
recent compared to Selenium's history and was specifically designed to address
some Selenium 1.0 limitations.  Both the Selenium developers and WebDriver
developers agreed that both tools have advantatges and that merging the two
projects would make a much more robust automation tool.  Selenium 2.0 is the
product of that effort.  It supports the WebDriver API and underlying
technology, along with also supporting the Selenium 1.0 technology underneath
the WebDriver API for maximum flexibility in developing web-app tests.  In
addition, Selenium 2.0 still supports the Selenium 1.0 Sel-RC interface for
backwards compatability.

Selenium-RC (Remote Control)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Selenium-RC allows the test 
automation developer to use a programming language for maximum flexibility and
extensibility in developing test logic. For instance, if the application under
test returns a result set, and if the automated test program needs to run tests
on each element in the result set, the programming language's iteration support
can be used to iterate through the result set, calling Selenium commands to run
tests on each item. 

Selenium-RC provides an API (Application Programming Interface)
and library for each of its supported languages:
HTML, Java, C#, Perl, PHP, Python, and Ruby.
This ability to use Selenium-RC with a high-level programming language
to develop test cases also allows the 
automated testing to use *continuous integration*, that is, to be integrated with
a project's automated build  environment so the test automatically run each time
the project is rebuilt. 

Selenium-IDE
~~~~~~~~~~~~
Selenium-IDE (Integrated Development Environment) is a prototyping tools 
for building Selenium 
test scripts. It is a Firefox plugin and provides an easy-to-use 
interface for developing automated tests. Selenium-IDE has a recording feature, 
which records user 
actions as they are performed and then stores them as a reusable script that can be
played back,  all the while watching the browser's behavior while the playback occurs. 
It also has a context menu (right-click) integrated with the Firefox browser, 
which allows the user to pick from a list of assertions and verifications for 
the selected UI element. Selenium-IDE also offers full editing of test cases for 
more precision and control. 

Note that Sel-IDE *is not designed to run your test passes nor is it designed to build all 
the automated tests you will need*. Specifically, Sel-IDE cannot add iteration or
condition-statements to a test script.  For that you will need a programming language
combined with either Sel-WebDriver or Sel-RC. At the time of writing there is no plan
to add iteration or conditions to Sel-IDE.  The reasons are partly technical and partly
that the Selenium developers wish to encourage best practices in test automation which
always requires some amount of programming.  _Sel-IDE is simply intended as a rapid
prototyping tool._  The Selenium developers recommend for serious, robust test automation
either Sel-WebDriver or Sel-RC should be used with one of the many supported programming
languages.

In Addition, since Selenium-IDE is a Firefox plugin, it can only run it's test scripts
against Firefox.  For running tests using additional browsers you must run Selenium using
one of the other tools.


Selenium-Grid 
~~~~~~~~~~~~~~
Selenium-Grid allows the Selenium-RC solution to scale for large test suites 
or test suites that must be run in multiple environments. With Selenium-Grid, 
multiple instances of Selenium-RC are running on various operating system and 
browser configurations;  Each of these when launching register with a hub. 
When tests are sent to the hub they are then redirected to an available 
Selenium-RC, which will launch the browser and run the test. This allows for 
running tests in parallel, with the entire test suite theoretically taking 
only as long to run as the longest individual test.
 
  
Supported Browsers
------------------

*IMPORTANT:  This list was for Sel 1.0, It requires updating for Sel2.0--we will do that very soon.*

=============  ==================================================  ===========================  =====================
**Browser**    **Selenium-IDE**                                    **Selenium-RC**              **Operating Systems**
Firefox 3.x    Record and playback tests                           Start browser, run tests     Windows, Linux, Mac
Firefox 3      Record and playback tests                           Start browser, run tests     Windows, Linux, Mac
Firefox 2      Record and playback tests                           Start browser, run tests     Windows, Linux, Mac
IE 8           Test execution only via Selenium-RC*                Start browser, run tests     Windows
IE 7           Test execution only via Selenium-RC*                Start browser, run tests     Windows
IE 6           Test execution only via Selenium-RC*                Start browser, run tests     Windows
Safari 4       Test execution only via Selenium-RC                 Start browser, run tests     Mac
Safari 3       Test execution only via Selenium-RC                 Start browser, run tests     Mac
Safari 2       Test execution only via Selenium-RC                 Start browser, run tests     Mac
Opera 10       Test execution only via Selenium-RC                 Start browser, run tests     Windows, Linux, Mac
Opera 9        Test execution only via Selenium-RC                 Start browser, run tests     Windows, Linux, Mac
Opera 8        Test execution only via Selenium-RC                 Start browser, run tests     Windows, Linux, Mac 
Google Chrome  Test execution only via Selenium-RC (Windows)       Start browser, run tests     Windows
Others         Test execution only via Selenium-RC                 Partial support possible**   As applicable 
=============  ==================================================  ===========================  =====================

\* Tests developed on Firefox via Selenium-IDE can be executed on any other 
supported browser via a simple Selenium-RC command line.

** Selenium-RC server can start any executable, but depending on 
browser security settings there may be technical limitations that would limit
certain features.

.. Santi: Should we include Selenium Core in this list???
   How about chrome and mock?? I've noticed they have a browser mod on RC and
   are not included in this list 

.. TODO: Refine this list.
  
Flexibility and Extensibility
------------------------------
You'll find that Selenium is highly flexible.  There are many ways you
can add functionality to both Selenium test scripts and Selenium's framework
to customize your test automation. This is perhaps Selenium's 
greatest strenght when compared with other automation tools. These customizations
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

:ref:`Selenium Basics <chapter02-reference>`
    Introduces Selenium by describing how to select the Selenium component 
    most appropriate for your testing tasks. Also provides a general 
    description of Selenium commands and syntax. This section allows you to 
    get a general feel for how Selenium approaches test automation and
    helps you decide where to begin. 

:ref:`Selenium-IDE <chapter03-reference>`
    Teaches how to build test cases using the Selenium Integrated Development 
    Environment. This chapter also describes useful techniques for making your 
    scripts more readable when interpreting defects caught by your Selenium tests. 
    We explain how your test script can be 
    "exported" to the programming language of your choice. Finally, this section 
    describes some configurations available for extending and customizing how 
    the Selenium-IDE supports test case development. 

:ref:`Selenium Commands <chapter04-reference>`
    Describes a subset of the most useful Selenium commands in detail. This 
    chapter shows what types of actions, verifications and 
    assertions can be made against a web application. 

:ref:`Selenium-RC <chapter05-reference>`
    Explains how to develop an automated test program using the Selenium-RC API.
    Many examples are presented in both a programming language and a scripting 
    language. Also, the installation and setup of Selenium-RC is covered here. 
    The various modes, or configurations, that Selenium-RC supports are
    described, along with their trade-offs and limitations. Architecture
    diagrams are provided to help illustrate these points. 
    A number of solutions to problems which are often difficult for the new user are
    described in this chapter. This includes handling Security Certificates,
    https requests, pop-ups, and the opening of new windows. 

:ref:`Test Design Considerations <chapter06-reference>`
    Presents many useful techniques for using Selenium efficiently. This 
    includes scripting techniques and programming techniques for use with 
    Selenium-RC. We cover examples of source code showing how to report defects 
    in the application under test. We also cover techniques commonly asked about 
    in the user group such as how to implement data-driven tests (tests where
    one can vary the data between different test passes).

:ref:`Selenium-Grid <chapter07-reference>`
    *This chapter is not yet developed.*
  
:ref:`User extensions <chapter08-reference>`
    Presents all the information required for easily extending Selenium. 
  
..  :ref:`Getting Help <chapter09-reference>`
    Describes how to be a part of the Selenium community for getting help and 
    exchanging advice. Specifically this section describes the user group as 
    an avenue for obtaining assistance. 

The Documentation Team--Authors Past and Present
------------------------------------------------

In alphabetical order, the following people have made significant contributions
to the authoring of this user's guide or with out publishing infrastructure
or both.

* Dave Hunt
* Mary Ann May-Pumphrey
* Paul Grandjean
* Peter Newhook
* Santiago Suarez Ordonez
* Tarun Kumar



Acknowledgements
~~~~~~~~~~~~~~~~
A huge special thanks goes to Patrick Lightbody.  As an administrator of the 
SeleniumHQ website, creator of SEl-RC, and long term involvement in the Selenium
community, his support was invaluable when writing the original user's
guide.  Patrick helped us understand the our audience. 
He also set us up with 
everything we needed on the seleniumhq.org website for publishing the documents.
Also thanks goes to Andras Hatvani for his advice on publishing
solutions, and to Amit Kumar for participating in our discussions and for 
assisting with reviewing the document.

And of course, we must *recognize the Selenium Developers*.  They have truly 
designed an amazing tool. Without the vision of the original designers, and 
the continued efforts of the current developers, we would not have such a 
great tool to pass on to you.
