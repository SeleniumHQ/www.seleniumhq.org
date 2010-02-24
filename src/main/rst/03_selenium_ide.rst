Selenium-IDE 
============

.. _chapter03-reference:

Introduction 
------------
The Selenium-IDE (Integrated Development Environment) is the tool you use to 
develop your Selenium test cases.  It's an easy-to-use Firefox plug-in and is 
generally the most efficient way to develop test cases.  It also contains a 
context menu that allows you to first select a UI element from the browser's 
currently displayed page and then select from a list of Selenium commands 
with parameters pre-defined according to the context of the selected UI 
element.  This is not only a time-saver, but also an excellent way of 
learning Selenium script syntax. 
  
This chapter is all about the Selenium IDE and how to use it effectively. 
  
Installing the IDE 
------------------
Using Firefox, first, download the IDE from the SeleniumHQ `downloads page`_
  
.. _`downloads page`: http://seleniumhq.org/download/
  
When downloading from Firefox, you'll be presented with the following window. 
 
.. image:: images/chapt3_img01_IDE_Installation.png
   :class: align-center

Select Install Now.  The Firefox Add-ons window pops up, first showing a 
progress bar, and when the download is complete, displays the following. 
  
.. image:: images/chapt3_img02_IDE_Installation.png
   :class: align-center
  
Restart Firefox.  After Firefox reboots you will find the Selnium-IDE listed under the Firefox Tools menu. 

.. image:: images/chapt3_img03_IDE_Installation.png
   :class: align-center

Opening the IDE 
---------------
To run the Selenium-IDE, simply select it from the Firefox Tools menu.  It opens 
as follows with an empty script-editing window and a menu for loading, or 
creating new test cases. 
  
.. Darn!  I need to redo this.  No time now, gotta go!!!!

.. image:: images/chapt3_img04_IDE_open.png
   :class: align-center
  
IDE Features  
------------
Menu Bar 
++++++++
The File menu allows you to create, open and save test case and test suite 
files.  The Edit menu allows copy, paste, delete, undo and select all 
operations for editing the commands in your test case.  The Options menu allows 
the changing of settings.  You can set the timeout value for 
certain commands, add user-defined user extensions to the base set of Selenium 
commands, and specify the format (language) used when saving your 
test cases.  The Help menu is the standard Firefox Help menu; only one
item on this menu--UI-Element Documentation--pertains to Selenium-IDE.
  
Toolbar 
++++++++
The toolbar contains buttons for controlling the execution of your test 
cases, including a step feature for debugging your test cases.  The right-most 
button, the one with the red-dot, is the record button.  
  
.. image:: images/chapt3_img05_IDE_features.png
   :class: align-center
  
|speed control|
    Speed Control:  controls how fast your test case runs. 
|run all|
    Run All: Runs the entire test suite when a test suite with multiple test 
    cases is loaded. 
|run|
    Run:  Runs the currently selected test.  When only a single test is 
    loaded this button and the Run All button have the same effect.  
|pause resume|
    Pause/Resume:  Allows stopping and re-starting of a running test case.
|step|
    Step:  Allows one to "step" through a test case by running it one command at a 
    time.  Use for debugging test cases. 
|testrunner|
    TestRunner Mode:  Allows you to run the test case in a browser loaded with 
    the Selenium-Core TestRunner.  The TestRunner is not commonly used now 
    and is likely to be deprecated.  This button is for evaluating test cases
    for backwards compatibility with the TestRunner.  Most users will 
    probably not need this button.   
|rollup|
    Apply Rollup Rules: This advanced feature allows repetitive sequences of
    Selenium commands to be grouped into a single action.  Detailed documentation
    on rollup rules can be found in the UI-Element Documentation on the Help
    menu.

|record|
    Record:  Records the user's browser actions.  

.. |speed control| image:: images/chapt3_img06_Speed_Control.png
.. |run all| image:: images/chapt3_img07_Run_All.png
.. |run| image:: images/chapt3_img08_Run.png
.. |pause resume| image:: images/chapt3_img09_Pause.png
.. |step| image:: images/chapt3_img11_Step.png
.. |testrunner| image:: images/chapt3_img12_TestRunner_Mode.png
.. |rollup| image:: images/chapt3_img13_Apply_Rollup_Rules.png
.. |record| image:: images/chapt3_img14_Record.png
 
Test Case Pane
++++++++++++++
Your script is displayed in the test case pane.  It has two tabs, one for 
displaying the command and their parameters in a readable "table" format.  

.. image:: images/chapt3_img15_Table_Format.png
   :class: align-center
  
The Source tab displays the test case in the native format in which the file 
will be stored.  By default, this is HTML although it can be changed to a 
programming language such as Java or C#, or a scripting language like Python.
See the Options menu for details.  The Source view also allows one to edit 
the test case in its raw form, including copy, cut and paste operations. 
  
The Command, Target, and Value entry fields display the currently selected 
command along with its parameters.  These are entry fields where you 
can modify the currently selected command.  The first parameter specified for
a command in the Reference tab of the bottom pane always goes in the Target
field.  If a second parameter is specified by the Reference tab, it always
goes in the Value field.
  
.. image:: images/chapt3_img16_Entry_Fields.png
   :class: align-center
  
If you start typing in the Command field, a drop-down list will be populated 
based on the first characters you type; you can then select your desired 
command from the drop-down. 
  
Log/Reference/UI-Element/Rollup Pane
++++++++++++++++++++++++++++++++++++
The bottom pane is used for four different functions--Log, Reference,
UI-Element, and Rollup--depending on which tab is selected.

Log
~~~

When you run your test case, error messages
and information messages showing the progress are displayed 
in this pane automatically, even if you do not first select the Log
tab.  These messages are often useful for test case debugging.   Notice the Clear 
button for clearing the Log.  Also notice the Info button is a drop-down 
allowing selection of different levels of information to display.  
  
.. image:: images/chapt3_img17_Bottom_Box.png
   :class: align-center

Reference
~~~~~~~~~

The Reference tab is the default selection whenever you are
entering or modifying Selenese commands and parameters in Table
mode.  In Table mode, the Reference pane will display documentation on the current command.  When entering or modifying
commands, whether from Table or Source mode, it is critically
important to ensure that the parameters specified in the
Target and Value fields match those specified in the parameter
list specified in the Reference pane.  The number of parameters provided
must match the number specified, the order of parameters provided must
match the order specified, and the type of parameters provided must match
the type specified.  
If there is a mismatch in any of these three areas, the command will not 
run correctly.

.. image:: images/chapt3_img18_Bottom_Box_Ref.png
   :class: align-center

While the Reference tab is invaluable as a quick reference, it is still often
necessary to consult the Selenium Reference_ document.

.. _Reference: http://release.openqa.org/selenium-core/1.0/reference.html
  
UI-Element and Rollup
~~~~~~~~~~~~~~~~~~~~~

Detailed information on these two panes (which cover advanced features)
can be found in the 
UI-Element Documentation on the Help menu of Selenium-IDE.
     
Building Test Cases
-------------------
There are three primary methods for developing test cases.  Frequently, 
a test
developer will require all three techniques. 

Recording  
+++++++++
Many first-time users begin by recording a test case from their interactions 
with a website.  When Selenium-IDE is first opened, the record button is ON by 
default. 

.. note::
    This can be set to OFF as a default with an available user extension. 

.. TODO: mam-p: We need a link to this user extension.  It doesn't appear to be on the extensions page to which we've already referred readers. 

During recording, Selenium-IDE will automatically insert commands into your 
test case based on 
your actions.  Typically, this will include:
  
* clicking a link - *click* or *clickAndWait* commands 
* entering values - *type* command 
* selecting options from a drop-down listbox - *select* command 
* clicking checkboxes or radio buttons - *click* command 
  
Here are some "gotchas" to be aware of:
  
* The *type* command may require clicking on some other area of the web page 
  for it to record. 
* Following a link usually records a *click* command. You will often need to 
  change this to *clickAndWait* to ensure your test case pauses until the new page 
  is completely loaded.  Otherwise, your test case will continue running commands
  before the page has loaded all its UI elements. This will cause unexpected 
  test case failures.
  
Adding Verifications and Asserts With the Context Menu 
++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
Your test cases will also need to check the properties of a web-page.  This 
requires *assert* and *verify* commands.  We won't describe the specifics of 
these commands here; that is in the chapter on :ref:`"Selenese" Selenium Commands <chapter04-reference>`.  Here we'll 
simply describe how to add them to your test case. 
  
With Selenium-IDE recording, go to the browser displaying your test application and 
right click anywhere on the page.  You will see a context menu showing *verify* 
and/or *assert* commands.  

.. TODO: add image here (it wasn't correctly uploaded in the GDocs version

The first time you use Selenium, there may only be one Selenium command listed.
As you use the IDE however, you will find additional commands will quickly be
added to this menu.  Selenium-IDE will attempt to predict what command, along 
with the parameters, you will need for a selected UI element on the current 
web-page. 
  
Let's see how this works. Open a web-page of your choosing and select a block 
of text on the page. A paragraph or a heading will work fine.  Now, right-click
the selected text.  The context menu should give you a *verifyTextPresent*
command and the suggested parameter should be the text itself. 
  
Also, notice the Show All Available Commands menu option.  This shows many, 
many more commands, again, along with suggested parameters, for testing your 
currently selected UI element. 
  
Try a few more UI elements. Try right-clicking an image, or a user control 
like a button or a checkbox.  You may need to use Show All Available Commands 
to see options other than *verifyTextPresent*. Once you select these other 
options, the more commonly used ones will show up on the primary context menu.
For example, selecting *verifyElementPresent* for an image should later cause 
that command to be available on the primary context menu the next time you 
select an image and right-click. 
  
Again, these commands will be explained in detail in the chapter on Selenium 
commands.  For now though, feel free to use the IDE to record and select 
commands into a test case and then run it.  You can learn a lot about 
the Selenium commands simply by experimenting though the IDE. 
  
Editing  
+++++++
Insert Command 
~~~~~~~~~~~~~~
Table View
__________
Select the point in your test case where you want to insert the command.  
Right-click and select Insert Command.  Now use the command editing text fields to 
enter your new command and its parameters. 

Source View
___________
Select the point in your test case where you want to insert the command, and
enter the HTML tags needed to create a 3-column row containing the Command,
first parameter (if one is required by the Command), and second parameter (again,
if one is required).  Be sure to save your test before switching back to
Table view.
  
Insert Comment 
~~~~~~~~~~~~~~
Comments may be added to make your test case more readable.  These comments are 
ignored when the test case is run. 

In order to add vertical white space (one or more blank lines) in your tests, you must
create empty comments.  An empty command will cause an error during execution.

Table View
__________
Select the point in your test case where you 
want to insert the comment.  Right-click and select Insert Comment.  Now use 
the Command field to enter the comment.  Your comment will appear in purple
font.

Source View
___________
Select the point in your test case where you want to insert the comment.  Add
an HTML-style comment, i.e., *<!-- your comment here -->*.
  
Edit a Command or Comment 
~~~~~~~~~~~~~~~~~~~~~~~~~
Table View
__________

Simply select the line to be changed and edit it using the Command, Target,
and Value fields. 

Source View
___________
Since Source view provides the equivalent of a WYSIWYG editor, simply modify
which line you wish--command, parameter, or comment.

Opening and Saving a Test Case
++++++++++++++++++++++++++++++
The File=>Open, Save and Save As menu commands behave similarly to opening and 
saving files in most other programs.  When you open an existing test case, Selenium-IDE 
displays its Selenium commands in the test case pane.
  
Test suite files can also be opened and saved via the File menu.  However,
such operations have their own menu entries near the bottom; the Open,
Save, and Save As items are only for files.  
  
.. note:: 
    At the time of this writing, there's a bug, where at times, when the IDE is 
    first opened and then you select File=>Open, nothing happens.  If you see 
    this, close down the IDE and restart it (you don't need to close the 
    browser itself).  This will fix the problem. 
  
Running Test Cases
------------------
  
The IDE allows many options for running your test case. You can run a test case
all at once, stop and start it, run it one line at a time, run a single command 
you are currently developing, and you can do a batch run of an entire test suite.
Execution of test cases is very flexible in the IDE. 
  
Run a Test Case
    Click the Run button to run the currently displayed test case. 
  
Run a Test Suite
    Click the Run All button to run all the test cases in the currently loaded 
    test suite. 
  
Stop and Start
    The Pause button can be used to stop the test case while it is running.  The 
    icon of this button then changes to indicate the Resume button.  To continue
    click Resume. 
  
Stop in the Middle
    You can set a breakpoint in the test case to cause it to stop on a 
    particular command.  This is useful for debugging your test case. To set a 
    breakpoint, select a command, right-click, and from the context menu 
    select Toggle Breakpoint. 
  
Start from the Middle
    You can tell the IDE to begin running from a specific command in the 
    middle of the test case.  This also is used for debugging.  To set a 
    startpoint, select a command, right-click, and from the context menu 
    select Set/Clear Start Point. 
  
Run Any Single Command
    Double-click any single command to run it by itself.  This is useful when 
    writing a single command.  It lets you immediately test a command you are 
    constructing, when you are not sure if it is correct.  You can double-click it to 
    see if it runs correctly.  This is also available from the context menu.
  

Using Base URL to Run Test Cases in Different Domains 
-----------------------------------------------------
The *Base URL* field at the top of the Selenium-IDE window is very useful
for allowing test cases to be run across different domains. 
Suppose that a site named \http://news.portal.com had an in-house beta site named
\http://beta.news.portal.com.  Any test cases for these sites that begin with
an *open*
statement should specify a *relative URL* as the argument to *open*
rather than an *absolute URL* (one
starting with a protocol such as http: or https:).  Selenium-IDE will
then create an absolute URL by appending the *open* command's
argument onto the end of the value of Base URL.  For example, the 
test case below would be run against \http://news.portal.com/about.html:

.. image:: images/chapt3_img20_BaseURL_prod.png
   :class: align-center

This same test case with a modified Base URL setting would be run against
\http://beta.news.portal.com/about.html:

.. image:: images/chapt3_img21_BaseURL_beta.png
   :class: align-center

Debugging 
---------
Debugging means finding and fixing errors in your test case.  This is a normal 
part of test case development. 
  
We won't teach debugging here as most new users to Selenium will already have 
some basic experience with debugging.  If this is new to you, we recommend 
you ask one of the developers in your organization. 
  
.. TODO: mam-p: The two sections below have a great deal of overlap with "Running Test Cases" above.

Breakpoints and Startpoints 
+++++++++++++++++++++++++++
 
The Sel-IDE supports the setting of breakpoints and the ability to start and 
stop the running of a test case, from any point within the test case.  That is, one 
can run up to a specific command in the middle of the test case and inspect how 
the test case behaves at that point.  To do this, set a breakpoint on the 
command just before the one to be examined.  
  
To set a breakpoint, select a command, right-click, and from the context menu 
select *Toggle Breakpoint*.  Then click the Run button to run your test case from 
the beginning up to the breakpoint. 
  
It is also sometimes useful to run a test case from somewhere in the middle to 
the end of the test case or up to a breakpoint that follows the starting point.  
For example, suppose your test case first logs into the website and then 
performs a series of tests and you are trying to debug one of those tests.  
However, you only need to login once, but you need to keep rerunning your 
tests as you are developing them.  You can login once, then run your test case
from a startpoint placed after the login portion of your test case.  That will 
prevent you from having to manually logout each time you rerun your test case. 
  
To set a startpoint, select a command, right-click, and from the context 
menu select *Set/Clear Start Point*.  Then click the Run button to execute the 
test case beginning at that startpoint. 
  
Stepping Through a Testcase
+++++++++++++++++++++++++++
To execute a test case one command at a time ("step through" it), follow these
steps:

1. Start the test case running with the Run button from the toolbar.

.. image:: images/chapt3_img08_Run.png

2. Immediately pause the executing test case with the Pause button.

.. image:: images/chapt3_img19_Pause-only.png

3. Repeatedly select the Step button.

.. image:: images/chapt3_img11_Step.png

Find Button 
+++++++++++
The Find button is used to see which UI element on the currently displayed 
webpage (in the browser) is used in the currently selected Selenium command.  
This is useful when building a locator for a command's first parameter (see the
section on :ref:`locators <locators-section>` in the Selenium Commands chapter).
It can be used with any command that must identify a UI element on a webpage, 
i.e. *click*, *clickAndWait*, *type*, and certain *assert* and *verify* commands, 
among others. 
  
From Table view, select any command that has a locator parameter.
Click the Find button.  
Now look on the webpage displayed in the Firefox browser.  
There should be a bright green rectangle enclosing the element specified
by the locator parameter. 

Page Source for Debugging 
+++++++++++++++++++++++++
Often, when debugging a test case, you simply must look at the page source (the 
HTML for the webpage you're trying to test) to determine a problem.  Firefox 
makes this easy.  Simply, right-click the webpage and select Page Source.  
The HTML opens in a separate window.  Use its Search feature (Edit=>Find)
to search for a keyword to find the HTML for the UI element you're trying 
to test. 

Alternatively, select just that portion of the webpage for which you want to
see the source.  Then right-click the webpage and select View Selection
Source.  In this case, the separate HTML window will contain just a small
amount of source, with highlighting on the portion representing your
selection.

Locator Assistance
++++++++++++++++++
Whenever Selenium-IDE records a locator-type argument, it stores
additional information which allows the user to view other possible 
locator-type arguments that could be used instead.  This feature can be
very useful for learning more about locators, and is often needed to help
one build a different type of locator than the type that was recorded.  

This locator assistance is presented on the Selenium-IDE window as a drop-down
list accessible at the right end of the Target field 
(only when the Target field contains a recorded locator-type argument).  
Below is a snapshot showing the
contents of this drop-down for one command.  Note that the first column of
the drop-down provides alternative locators, whereas the second column
indicates the type of each alternative.

.. image:: images/chapt3_img22_IDE_Locator_Assistance.png

Writing a Test Suite 
--------------------
A test suite is a collection of test cases which is displayed in the leftmost
pane in the IDE.  
The test suite pane can be manually opened or closed via selecting a small dot
halfway down the right edge of the pane (which is the left edge of the 
entire Selenium-IDE window if the pane is closed).

The test suite pane will be automatically opened when an existing test suite 
is opened *or* when the user selects the New Test Case item from the
File menu.  In the latter case, the new test case will appear immediately
below the previous test case.

Selenium-IDE does not yet support loading pre-existing test cases into 
a test suite.  Users who want to create or modify a test suite by adding
pre-existing test cases must manually edit a test suite file.

A test suite file is an HTML file containing a one-column table.  Each
cell of each row in the <tbody> section contains a link to a test case.
The example below is of a test suite containing four test cases:

.. code-block:: html

	<html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Sample Selenium Test Suite</title>
        </head>
        <body>
            <table cellpadding="1" cellspacing="1" border="1">
                <thead>
                    <tr><td>Test Cases for De Anza A-Z Directory Links</td></tr>
                </thead>
            <tbody>
                <tr><td><a href="./a.html">A Links</a></td></tr>
                <tr><td><a href="./b.html">B Links</a></td></tr>
                <tr><td><a href="./c.html">C Links</a></td></tr>
                <tr><td><a href="./d.html">D Links</a></td></tr>
            </tbody>
            </table>
        </body>
	</html>
	
.. note::
   Test case files should not have to be co-located with the test suite file
   that invokes them.  And on Mac OS and Linux systems, that is indeed the
   case.  However, at the time of this writing, a bug prevents Windows users
   from being able to place the test cases elsewhere than with the test suite
   that invokes them.

.. do some testing here of test suites—do they save correctly?
   I've seen errors in the past. 
  
User Extensions 
---------------
User extensions are JavaScript files that allow one to create his or her own 
customizations and features to add additional functionality.  Often this is in 
the form of customized commands although this extensibility is not limited to 
additional commands.  
  
There are a number of useful extensions_ created by users.

.. _extensions: http://wiki.openqa.org/display/SEL/Contributed+User-Extensions

Perhaps the most popular of all Selenium-IDE extensions
is one which provides flow control in the form of while loops and primitive
conditionals.  This extension is the goto_sel_ide.js_.  For an example
of how to use the functionality provided by this extension, look at the
page_ created by its author.

.. _goto_sel_ide.js: http://wiki.openqa.org/download/attachments/379/goto_sel_ide.js
.. _page: http://51elliot.blogspot.com/2008/02/selenium-ide-goto.html

To install this extension, put the pathname to its location on your
computer in the **Selenium Core extensions** field of Selenium-IDE's
Options=>Options=>General tab.

.. image:: images/chapt3_img31_Extensions_install.png
   :class: align-center

After selecting the **OK** button, you must close and reopen Selenium-IDE
in order for the extensions file to be read.  Any change you make to an
extension will also require you to close and reopen Selenium-IDE.

Information on writing your own extensions can be found near the
bottom of the Selenium Reference_ document.

.. _Reference: http://release.openqa.org/selenium-core/1.0/reference.html

.. TODO:  mam-p: need info on how to install user extensions, especially on the diff
   between "Selenium Core Extensions" and "Selenium IDE" extensions on the
   Options=>Options=>General page.

Format 
------
Format, under the Options menu, allows you to select a language for saving 
and displaying the test case.  The default is HTML.
  
If you will be using Selenium-RC to run your test cases, this feature is used 
to translate your test case into a programming language.  Select the 
language, i.e. Java, PHP, you will be using with Selenium-RC for developing 
your test programs.  Then simply save the test case using File=>Save.  Your 
test case will be translated into a series of functions in the language you 
choose.  Essentially, program code supporting your test is generated for you 
by Selenium-IDE. 
  
Also, note that if the generated code does not suit your needs, you can alter 
it by editing a configuration file which defines the generation process.  
Each supported language has configuration settings which are editable.  This 
is under the Options=>Options=>Format tab. 
  
.. TODO: Add the steps here to change the format. 
  
.. note::
   At the time of this writing, this feature is not yet supported by the Selenium 
   developers.  However the author has altered the C# format in a limited 
   manner and it has worked well. 
  
Executing Selenium-IDE Tests on Different Browsers
--------------------------------------------------
While Selenium-IDE can only run tests against Firefox, tests
developed with Selenium-IDE can be run against other browsers, using a
simple command-line interface that invokes the Selenium-RC server.  This topic
is covered in the :ref:`Run Selenese tests <html-suite>` section on Selenium-RC
chapter. The *-htmlSuite* command-line option is the particular feature of interest.

Troubleshooting
---------------
Below is a list of image/explanation pairs which describe frequent
sources of problems with Selenium-IDE:

.. image:: images/chapt3_img30_Trouble_startup.png

This problem occurs occasionally when Selenium IDE is first brought up.  The 
solution is to close and reopen Selenium IDE.  The bug has been filed as `SIDE-230`_.

.. _SIDE-230: http://jira.openqa.org/browse/SIDE-230

------------------

.. image:: images/chapt3_img24_Trouble_open.png

You've used **File=>Open** to try to open a test suite file. Use **File=>Open Test Suite** instead.

------------------

.. image:: images/chapt3_img27_Trouble_timing.png

This type of **error** may indicate a timing problem, i.e., the element 
specified by a locator in your command wasn't fully loaded when the command 
was executed.  Try putting a **pause 5000** before the command to determine 
whether the problem is indeed related to timing.  If so, investigate using an 
appropriate **waitFor\*** or **\*AndWait** command immediately before the 
failing command.

------------------

.. image:: images/chapt3_img28_Trouble_param.png

Whenever your attempt to use variable substitution fails as is the
case for the **open** command above, it indicates
that you haven't actually created the variable whose value you're
trying to access.  This is 
sometimes due to putting the variable in the **Value** field when it 
should be in the **Target** field or vice versa.  In the example above,
the two parameters for the **store** command have been erroneously
placed in the reverse order of what is required.
For any Selenese command, the first required parameter must go 
in the **Target** field, and the second required parameter (if one exists) 
must go in the **Value** field.  

----------

.. image:: images/chapt3_img23_Trouble_ts.png

One of the test cases in your test suite cannot be found.  Make sure 
that the test case is indeed located where the test suite indicates 
it is located.  Also, 
make sure that your actual test case files have the .html extension both 
in their filenames, and in the test suite file where they are referenced.

----------

.. image:: images/chapt3_img25_Trouble_space.png

Selenium-IDE is very *space-sensitive*!  An extra space before or after 
a command will cause it to be unrecognizable.

----------

.. image:: images/chapt3_img26_Trouble_extension.png

Your extension file's contents have not been read by Selenium-IDE.  Be 
sure you have specified the proper pathname to the extensions file via 
**Options=>Options=>General** in the **Selenium Core extensions** field.
Also, Selenium-IDE must be restarted after any change to either an
extensions file *or* to the contents of the **Selenium Core extensions**
field.

----------

.. image:: images/chapt3_img29_Trouble_collapsed.png

This type of error message makes it appear that Selenium-IDE has generated
a failure where there is none.  However, Selenium-IDE is correct that
the actual value does not match the value specified in such test cases.
The problem is that the log file error messages collapse a series of
two or more spaces into a single space, which is confusing.  In the 
example above, note that the parameter for **verifyTitle** has two 
spaces between the words "System" and "Division."  The page's actual 
title has only one space between these words.  Thus, Selenium-IDE is 
correct to generate an error.
