Selenium Basics 
================

.. _chapter02-reference:

Getting Started -- Choosing Your Selenium Tool 
-----------------------------------------------
Most people get started with Selenium-IDE. This is what we recommend. It's 
an easy way to get familiar with Selenium commands quickly. You can develop
your first script in just a few minutes. Selenium-IDE is also very easy
to install. See the :ref:`chapter on Selenium-IDE <chapter03-reference>` for 
specifics.
  
You may also run your scripts from the Selenium-IDE. It's  
simple to use and is recommended for less-technical users. The IDE allows 
developing and running tests without the need for programming skills as
required by Selenium-RC. The Selenium-IDE can serve as an excellent way to 
train junior-level employees in test automation. Anyone who understands how to
conduct manual testing of a website can easily transition to 
using the Selenium-IDE for running and developing tests. 

Some testing tasks are too complex though for the Selenium-IDE. When 
programming logic is required Selenium-RC must be used. For example, 
any tests requiring iteration, such as testing each element of a variable 
length list requires running the script from a programming 
language. Selenium-IDE does not support iteration or condition statements.

Finally, Selenium-Core is another way of running tests. One can run test 
scripts from a web-browser using the HTML interface *TestRunner.html*. This is 
the original method for running Selenium commands. It has limitations though; 
similar to Selenium-IDE, it does not support iteration.

Selenium-Core also cannot switch between http and https protocols. Since the 
development of Selenium-IDE and Selenium-RC, more people are using these 
tools rather than Selenium-Core. At the time of writing (April 09) it 
is still available and may be convenient for some. However, the Selenium 
community is encouraging the use Selenium-IDE and RC and discouraging the use 
of Selenium-Core. Support for Selenium-Core is becoming less available and 
it may even be deprecated in a future release. 

Introducing Selenium Commands 
------------------------------

Selenium Commands -- Selenese
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Selenium provides a rich set of commands for fully testing your web-app 
in virtually any way you may imagine. The command set is often called 
*selenese*. These commands essentially create a testing language. 

In selenese, one can test the existence of UI elements based 
on their HTML tags, test for specific content, test for broken links, 
input fields, selection list options, submitting forms, and table data among
other things. In addition Selenium commands support testing of window size,
mouse position, alerts, Ajax functionality, pop up windows, event handling,
and many other web-application features. The Command Reference (available at 
SeleniumHQ.org) lists all the available commands. 

A *command* is what tells Selenium what to do. Selenium commands come in 
three "flavors": **Actions**, **Accessors** and **Assertions**. 

* **Actions** are commands that generally manipulate the state of the 
  application. They do things like "click this link" and "select that option". 
  If an Action fails, or has an error, the execution of the current test is 
  stopped. 

  Many Actions can be called with the "AndWait" suffix, e.g. "clickAndWait". 
  This suffix tells Selenium that the action will cause the browser to make a 
  call to the server, and that Selenium should wait for a new page to load. 

* **Accessors** examine the state of the application and store the results in 
  variables, e.g. "storeTitle". They are also used to automatically generate 
  Assertions. 

* **Assertions** are like Accessors, but they verify that the state of the 
  application conforms to what is expected. Examples include "make sure the 
  page title is X" and "verify that this checkbox is checked". 

  All Selenium Assertions can be used in 3 modes: "assert", "verify", and "
  waitFor". For example, you can "assertText", "verifyText" and "waitForText". 
  When an "assert" fails, the test is aborted. When a "verify" fails, the test 
  will continue execution, logging the failure. This allows a single "assert" 
  to ensure that the application is on the correct page, followed by a bunch of 
  "verify" assertions to test form field values, labels, etc. 

  "waitFor" commands wait for some condition to become true (which can be 
  useful for testing Ajax applications). They will succeed immediately if the 
  condition is already true. However, they will fail and halt the test if the 
  condition does not become true within the current timeout setting (see the 
  setTimeout action below). 
  
.. Peter: setTimeout doesn't yet exist in this document. I'll assume it's 
   going in the Commonly Used Selenium Commands section. Is there somewhere
   else this should link to?

Script Syntax 
~~~~~~~~~~~~~~
Selenium commands are simple, they consist of the command and two parameters. 
For example:

==========  ===========  =====
verifyText  //div//a[2]  Login 
==========  ===========  =====

The parameters are not always required; it depends on the command. In some 
cases both are required, in others one parameter is required, and in still 
others the command may take no parameters at all. Here are a couple more 
examples:
  
=================  ===========   =======================
goBackAndWait 
verifyTextPresent                Welcome to My Home Page 
type               id=phone      \(555\) 666-7066 
type               id=address1   ${myVariableAddress} 
=================  ===========   =======================
 
The command reference describes the parameter requirements for each command. 
  
Parameters vary, however they are typically 
  
* a *locator* for identifying a UI element within a page. 
* a *text pattern* for verifying or asserting expected page content 
* a *text pattern* or a selenium variable for entering text in an input field 
  or for selecting an option from an option list. 

Locators, text patterns, 
selenium variables, and the commands themselves are described in considerable
detail in the section on Selenium Commands. 
  
Selenium scripts that will be run from Selenium-IDE may be stored in an HTML
text file format. This consists of an HTML table with three columns. The first
column identifies the Selenium command, the second is a target, and the
final column contains a value. The second and third columns may not require
values depending on the chosen Selenium command, but they should be present.
Each table row represents a new Selenium command. Here is an example of a test
that opens a page, asserts the page title and then verifies some content on the
page:
           
.. code-block:: html

   <table>
       <tr><td>open</td><td></td><td>/download/</td></tr>
       <tr><td>assertTitle</td><td></td><td>Downloads</td></tr>
       <tr><td>verifyText</td><td>//h2</td><td>Downloads</td></tr>
   </table>

Rendered as a table in a browser this would look like the following:

===========  ====  ==========
open               /download/
assertTitle        Downloads
verifyText   //h2  Downloads
===========  ====  ==========

The Selenese HTML syntax can be used to write and run tests without requiring 
knowledge of a programming language.  With a basic knowledge of selenese and 
Selenium-IDE you can quickly produce and run testcases.
   
Test Suites 
------------
A test suite is a collection of tests.  Often one will run all the tests in a
test suite as one continuous batch-job.  

When using Selenium-IDE, test suites also can be defined using a simple HTML 
file.  The syntax again is simple.  An HTML table defines a list of tests where
each row defines the filesystem path to each test.  An example tells it all.

.. code-block:: html

      <html> 
      <head> 
      <title>Test Suite Function Tests - Priority 1</title> 
      </head> 
      <body> 
      <table> 
        <tr><td><b>Suite Of Tests</b></td></tr> 
        <tr><td><a href="./Login.html">Login</a></td></tr> 
        <tr><td><a href="./SearchValues.html">Test Searching for Values</a></td></tr> 
        <tr><td><a href="./SaveValues.html">Test Save</a></td></tr> 
      </table> 
      </body> 
      </html>  

A file similar to this would allow running the tests all at once, one after
another, from the Selenium-IDE.

Test suites can also be maintained when using Selenium-RC.  This is done via
programming and can be done a number of ways.  Commonly Junit is used to
maintain a test suite if one is using Selenium-RC with Java.  Additionally, if
C# is the chosen language, Nunit could be employed.  If using an interpreted 
language like Python with Selenium-RC than some simple programming would be
involved in setting up a test suite.  Since the whole reason for using Sel-RC
is to make use of programming logic for your testing this usually isn't a
problem.

Commonly Used Selenium Commands 
--------------------------------
To conclude our introduction of Selenium, we'll show you a few typical Selenium
commands.  These are probably the most commonly used commands for building test.

open
   opens a page using a URL.
click/clickAndWait
   performs a click operation, and optionally waits for a new page to load.
verifyTitle/assertTitle
   verifies an expected page title.
verifyTextPresent
   verifies expected text is somewhere on the page.
verifyElementPresent
   verifies an expected UI element, as defined by its HTML tag, is present on
   the page.
verifyText
   verifies expected text and it's corresponding HTML tag are present on the page.
verifyTable
   verifies a table's expected contents.
waitForPageToLoad
   pauses execution until an expected new page loads.  Called automatically when 
   clickAndWait is used.
waitForElementPresent
   pauses execution until an expected UI element, as defined by its HTML tag,
   is present on the page. 


Summary 
--------
Now that you've seen an introduction to Selenium, you're ready to start writing
your first scripts.  We recommend beginning with the Selenium IDE and its
context-sensitive, right-click, menu.  This will allow you to get familiar with
the most common Selenium commands quickly, and you can have a simple script
done in just a minute or two.  Chapter 3 gets you started and then guides you
through all the features of the Selenium-IDE.
