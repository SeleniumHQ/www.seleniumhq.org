Introducing Selenium 
====================

.. _chapter01-reference:

To Automate or Not to Automate?  That is the Question!
------------------------------------------------------
Is automation always advantageous? When should one decide to automate
test cases? 

It is **not** always advantageous to automate test cases. There are 
times when manual testing may be more appropriate. For instance, if the 
application's user interface will change considerably in the near future, 
then any automation would need to be rewritten. Also, sometimes there simply 
is not enough time to build test automation. For the short term, manual testing 
may be more effective. If an application has a very tight deadline, there is 
currently no test automation available, and it's imperative that the testing 
get done within that time frame, then manual testing is the best solution. 

However, automation has specific advantages for 
improving the long-term efficiency of a software team's testing processes. 
Test automation supports:

* Frequent regression testing 
* Rapid feedback to developers during the development process
* Virtually unlimited iterations of test case execution
* Customized reporting of application defects 
* Support for Agile and eXtreme development methodologies 
* Disciplined documentation of test cases
* Finding defects missed by manual testing

Test Automation for Web Applications
------------------------------------
Many, perhaps most, software applications today are written as web-based 
applications to be run in an Internet browser. The  
effectiveness of testing these applications varies widely among companies and 
organizations. In an era of continuously improving software processes,  
such as eXtreme programming (XP) and Agile,  
it can be argued that disciplined testing and quality assurance practices are 
still underdeveloped in many organizations. Software testing is often 
conducted manually. At times, this is effective; however there are 
alternatives to manual testing that many organizations are unaware of, or 
lack the skills to perform.  Utilizing these alternatives would in most cases
greatly improve the efficiency of their software development by adding 
efficiencies to their testing. 

Test automation is often the answer. Test automation means using a tool to 
run repeatable tests against the target application whenever necessary.
  
There are many advantages to test automation. Most are related to 
the repeatability of the tests and the speed at which the tests can be executed.
There are a number of commercial and open source tools available for assisting
with the development of test automation. Selenium is possibly the most 
widely-used open source solution. This user's guide will assist both new and 
experienced Selenium users in learning effective techniques in building 
test automation for web applications. 

This guide introduces Selenium, teaches its most widely used features, and 
provides useful advice in best practices accumulated from the Selenium 
community. Many examples are provided. Also, technical information on the 
internal structure of Selenium and recommended uses of Selenium are provided as 
contributed by a consortium of experienced Selenium users. It is our hope that 
this guide will get additional new users excited about using Selenium for test 
automation.  We hope this guide will assist in "getting the word out" that quality
assurance and software testing have many options beyond what is currently 
practiced. We hope this user's guide and Selenium itself provide a valuable aid
to boosting the reader's efficiency in his or her software testing processes. 

Introducing Selenium 
--------------------
Selenium is a robust set of tools that supports rapid development of test 
automation for web-based applications. Selenium provides a rich set of 
testing functions specifically geared to the needs of testing of a web 
application. These operations are highly flexible, allowing many options for 
locating UI elements and comparing expected test results against actual 
application behavior. 

One of Selenium's key features is the support for executing one's tests on
multiple browser platforms.  

Selenium Components
-------------------
Selenium is composed of three major tools. Each one has a specific role in 
aiding the development of web application test automation. 

Selenium-IDE
~~~~~~~~~~~~
Selenium-IDE is the Integrated Development Environment for building Selenium 
test cases. It operates as a Firefox add-on and provides an easy-to-use 
interface for developing and running individual test cases or entire test 
suites. Selenium-IDE has a recording feature, which will keep account of user 
actions as they are performed and store them as a reusable script to play back. 
It also has a context menu (right-click) integrated with the Firefox browser, 
which allows the user to pick from a list of assertions and verifications for 
the selected location. Selenium-IDE also offers full editing of test cases for 
more precision and control. 

Although Selenium-IDE is a Firefox only add-on, tests created in it can also be 
run against other browsers by using Selenium-RC and specifying the name of the 
test suite on the command line.

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
automated testing to be integrated with a project's automated build 
environment. 

Selenium-Grid 
~~~~~~~~~~~~~~
Selenium-Grid allows the Selenium-RC solution to scale for large test suites 
or test suites that must be run in multiple environments. With Selenium-Grid, 
multiple instances of Selenium-RC are running on various operating system and 
browser configurations.  Each of these when launching register with a hub. 
When tests are sent to the hub they are then redirected to an available 
Selenium-RC, which will launch the browser and run the test. This allows for 
running tests in parallel, with the entire test suite theoretically taking 
only as long to run as the longest individual test.
 
  
Supported Browsers
------------------

=============  ==================================================  ===========================  =====================
**Browser**    **Selenium-IDE**                                    **Selenium-RC**              **Operating Systems**
Firefox 3      1.0 Beta-1 & 1.0 Beta-2: Record and playback tests  Start browser, run tests     Windows, Linux, Mac
Firefox 2      1.0 Beta-1: Record and playback tests               Start browser, run tests     Windows, Linux, Mac
IE 8                                                   			   Under development            Windows
IE 7           Test execution only via Selenium-RC*                Start browser, run tests     Windows
Safari 3       Test execution only via Selenium-RC                 Start browser, run tests     Mac
Safari 2       Test execution only via Selenium-RC                 Start browser, run tests     Mac
Opera 9        Test execution only via Selenium-RC                 Start browser, run tests     Windows, Linux, Mac
Opera 8        Test execution only via Selenium-RC                 Start browser, run tests     Windows, Linux, Mac 
Google Chrome  Test execution only via Selenium-RC(Windows)        Start browser, run tests     Windows
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
You'll find that Selenium is highly flexible.  There are multiple ways in which
one can add functionality to Selenium's framework to customize test 
automation for one's specific testing needs. This is, perhaps, Selenium's 
strongest characteristic when compared with proprietary test automation tools
and other open source solutions. Selenium-RC support for multiple programming
and scripting languages allows the test writer to build any logic they need
into their automated testing and to use a preferred programming or scripting
language of one's choice. 
  
Selenium-IDE allows for the addition of user-defined "user-extensions" for 
creating additional commands customized to the user's needs. Also, it is 
possible to re-configure how the Selenium-IDE generates its Selenium-RC code.
This allows users to customize the generated code to fit in with their
own test frameworks. Finally, Selenium is an Open Source project where 
code can be modified and enhancements can be submitted for contribution.

About this Book
---------------
This reference documentation targets both new users of Selenium and those who 
have been using Selenium and are seeking additional knowledge. It introduces 
the novice to Selenium test automation. We do not assume the reader has 
experience in testing beyond the basics.  

The experienced Selenium user will also find this reference valuable. It compiles
in one place a set of useful Selenium techniques and best practices by drawing 
from the knowledge of multiple experienced Selenium QA professionals. 

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

The Documentation Team
----------------------

The Original Authors
~~~~~~~~~~~~~~~~~~~~
* Dave Hunt
* Paul Grandjean
* Santiago Suarez Ordonez
* Tarun Kumar

The original authors who kickstarted this document are listed in alphabetical 
order.  Each of us contributed significantly by taking a leadership role in 
specific areas.  Each chapter originally had a primary author who kicked off 
the intial writing, but in the end, each of us made significant contributions 
to each chapter throughout the project.

Current Authors
~~~~~~~~~~~~~~~
* Mary Ann May-Pumphrey
* Peter Newhook

In addition to the original team members who are still involved (May '09), 
Mary Ann, and Peter have recently made major contributions.  Their reviewing 
and editorial contributions proved invaluable.  Mary Ann is actively writing 
new subsections and has provided editorial assistance throughout the document.
Peter has provided assistance with restructuring our most difficult chapter 
and has provided valuable advice on topics to include. Their enthusiasm and 
dedication has been incredibly helpful.  We hope they continue to be involved.  

Acknowledgements
~~~~~~~~~~~~~~~~
A huge special thanks goes to Patrick Lightbody.  As an administrator of the 
SeleniumHQ website, his support has been invaluable.  Patrick has helped us 
understand the Selenium community--our audience. He also set us up with 
everything we needed on the SeleniumHQ website for developing and releasing 
this user's guide.  His enthusiasm and encouragement definitely helped drive 
this project.  Also thanks goes to Andras Hatvani for his advice on publishing
solutions, and to Amit Kumar for participating in our discussions and for 
assisting with reviewing the document.

And of course, we must *recognize the Selenium Developers*.  They have truly 
designed an amazing tool. Without the vision of the original designers, and 
the continued efforts of the current developers, we would not have such a 
great tool to pass on to you, the reader.
