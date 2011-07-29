
Hiring Staff to work with Selenium
==================================

Mixed skills
------------

Ideally people working with Selenium to automate the testing of applications will have some development 
skills in addition to their QA skills. It could be that they are an experienced developer and they are 
helping start a QA automation side to their employer's project.  It could be that they are a QA who has 
used a number of tools (like QTP) and is now trying to apply those skills to a more accessible Selenium
solution.  Lastly, it could be that they are a manual QA in the past and this is their first foray into
QA Automation.

We're going to try to speak to all of those types in this section of SeleniumHQ. We will phase this as
if it were candidate selection for interviews to join a project team.

Inexperienced
-------------

The candidate in question has not used Selenium in the work place, and may only have played with 
Selenium-IDE in advance of an interview (at the recruitment agent's suggestion perhaps).  

They may have a resume that speaks of Quick Test Professional (QTP), Test Director, or even WinRunner 
from some years ago.  They may alternatively have a resume that details manual testing of web 
applications, using or not using tools to the cataloging of manual test suites and execution of the 
same.

When meeting these candidates, you may find programming languages, technologies, libraries, frameworks
listed, but be aware that the candidate may be talking of team experience rather than personal use.

Entry Level
-----------

The candidate has used Selenium-IDE for recording scripts and playback.  These suites may be saved to 
SCM, but could have been just on a their 'C drive' and implicitly not shared between team-mates.  The
suites could have been highly evolved, relative exhaustive and relied on by the project to validate
applications prior to deployment.

The candidate may not qualify for Entry level Selenium skills if they have just used Selenium-IDE 
sporadically to aid form filling as they manually test.

If you think they qualify for entry level selenium, they should be able to use it in front of you to
test a site of your choosing.

One the advanced side, they may be running their suites automatically from Continuous Integration 
tools, and have a high level of confidence and ability to move forward with confidence.  Perhaps they
are using Selenium-RC to execute whole sets of 'html' Selenium tests.

(There is at least one friend of the Selenium project that has really pushed this space, and we're not
wanting to cast that dev team as beginners with Selenium here)

The nature of HTML, JavaScript and CSS should be understood to a rudimentary degree.

Data driving tests experience may or may not figure at this level.

The candidate has knowledge of the DOM, and for selenium specifically, how XPath, CSS or by-ID 
selectors are used to test the application.

They are also going to be able to checkout, and commit back to one of a number os SCM tools. Most 
likely with a UI rather than a from the command line.

Intermediate
------------

On top of Entry level ...

The candidate has transitioned to Selenium-RC or increasingly WebDriver in the workplace.  They will
be able to speak to the differences.

They are able to program in one of Java (including Groovy & Scala), Ruby, Python, Perl, C# (or VB.Net), 
PHP. Or similar 3GL languages.  They are also adept with unit-testing (JUnit, NUnit, TestNG) frameworks
for their language, as well as appropriate use of assertion technologies.

They may have OO knowledge, or may be beginning to understand it.  Without it, they are likely to be 
using their language in a procedural way (which can also be fine, if its relatively clean from a 
purists point of view).

If they are procedural (not yet OO savvy) they must be able to demonstrate looping and appropriate 
conditional aspects of the languages they are experienced with.  If they are in the territory of OO
in terms of experience, they should be able to give examples of where the facets of OO apply to
Selenium test scripts. 

The candidate will be able to discern between alternate selector strategies to use the most suitable.
They will also use Firebug (or alternatives) to help them, and perhaps also be adept with XPathChecker 
or XPanther, though hopefully using them far less than Firebug.

That pages are loaded in increasingly strange orders (we're looking at you Web 2.0) should not be a
hurdle to the intermediate Selenium developer.  They will be able to demonstrate techniques to wait 
for page events such that the test scripts they make do not fail when the application is slower than
normal. 

This level of candidate should be able to respond to broken builds (we're all using CI right?) find 
the issues, and liaise with the application developers to fix things.

They can, most likely, arbitrate over merge conflicts with the SCM tool they are experienced with.
Hopefully they are as savvy with the command line, as they are with the SCM tool's GUI.

In terms of testing style, this candidate will be able to separate happy-path tests from regression
suites and project related QA.

The candidate, in the interview, should be able to extend an existing Selenium-RC or WebDriver 
codebase one or two tests more.

Advanced
--------

On top of Intermediate ...

This candidate has more programming experience. Specifically:

#1 Closures (Groovy, Python, Ruby) should be familiar to them and they know how to make or use them
in a test script, and why to use them.  Groovy's community knows these as 'Builders'

#2 Functional programming constructs are likely to be known by the candidate, though they are not 
in position to use them.

The tester-developer should be able to craft large suites from scratch and define architectures 
for Selenium-RC or WebDriver tests.  Their code, indeed because of them the whole style of the codebase
should be compositional (this over and above OO).  They should be able to train any newbie to 
the team (from formal development, or from the QA universe) in the tools and techniques needed to grow 
the test-base, and keep it running.

The storage of test-run results in (and otherwise use of) databases is a skill this candidate will have, 
as is the integration of related technologies for things that are suitable for them 
(like Selenium-SoapUI).

Testing architectures that adhere to behavior-driven testing (Cucumber, JBehave, NBehave, Cuke4Duke,
RSpec and more) may figure at this ability level. The candidate will know when to use them, and when to 
stick with Unit-testing type technologies.

The configuration of a cloud capability for their Selenium scripts to use, should be within their 
skills.  These could be Selenium-Grid, SauceLabs, or BrowserMob (though these are all for different
purposes).

The candidate, in the interview, should be able to start a Selenium-RC or WebDriver project, get it 
under source control, hook it up to a pre-existing CI machine and keeps things appropriately separated 
within the project.

Expert
------

One top of Advanced ...

The candidate will be able to build reusable frameworks and libraries that use Selenium-RC or WebDriver that introduce real 
value (rather than alleged value) for the for the their team.  

They will be able to debug into Selenium itself and provide contributions back to the Selenium team
They are more than likely to be a master of more than one 3GL.

The candidates name might be Simon Stewart.

