
Test Design Considerations 
==========================

.. _chapter06-reference:

*NOTE: Some sections of this chapter are not yet complete.*

Introducing Test Design
-----------------------

In this subsection we describe a few types of different tests you can do with
Selenium.  This may not be new to you, but we provide this as a framework for
relating Selenium test automation to the decisions a quality assurance
professional will make when deciding what tests to perform, the priority for
each of those tests, and whether to automate those tests or not.


What to Test?
-------------

What parts of your application should you test?  That depends on aspects of
your project:  user expectations, time allowed for the project, priorities
set by the project manager and so on.  Once the project boundaries are defined
though, you, the tester, will certainly make many decisions on what to test.

We will define some terms here to help us categorize the types of testing typical
for a web-application.  These terms are by no means standard, although the concepts
we present here are typical for web-application testing.  We've created a few
terms here of our own for the purposes of categorizing the types of test you may
perform on your web application.

   

Testing for Expected Content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The simplest type of test, a *content test*, is a simple test for the existence
of a static, non-changing, UI element.  For instance

- Does each page have its expected page title?  This can be used to verify your test found an expected page after following a link.
- Does the application's home page contain an image expected to be at the top of the page?  
- Does each page of the website contain a footer area with links to the company contact page, 
  privacy policy, and trademarks information?  
- Does each page begin with heading text using the <h1> tag?  And, does each page have the correct text within that header?



You may or may not need content tests.  If your page content is not likely to be
affected then it may be more efficient to test page content manually.  If, however,
your application will be undergoing platform changes, or files will likely be
moved to different locations, content tests may prove valuable.

Testing Links
~~~~~~~~~~~~~
A frequent source of errors for web-sites is broken links and missing pages
behind those broken links.  Testing for these involves clicking each link
and verifying the expected page behind that link loads correctly.

*Need to include a description of how to design this test and a simple example.
Should that go in this section or in a separate section?*  


Function Tests
~~~~~~~~~~~~~~
These would be tests of a specific function within your application, requiring
some type of user input, and returning some type of results.  Often a function
test will involve multiple pages with a form-based input page containing a
collection of input fields, Submit and Cancel operations, and one or more
response pages.  User input can be via text-input fields, check boxes, drop-down
lists, or any other browser-supported input.


Testing Dynamic Elements
~~~~~~~~~~~~~~~~~~~~~~~~
Every web page element has an Identifier, a name that can be use to locate the
element.  These names can be static - for example, when you enter a search term
into Google, the text field in which you type your query is always named 'q'.  
These names can also be dynamic - generated fresh, new, and unique for every 
instance of a web page.  For example, some web servers might name a text entry 
field 'q1' on the first instance of a page, and 'q2' on the next instance of the 
same page, etc.  This means your test script could be looking at a different field
name every time you run the script.  Dynamic names are usually on a result page 
of some given function.  

An example would be a result set of data returned to the user.  Suppose each
data result, in, say for example a list of documents, had a unique Identifier
for each specific document.  So, for a particular search, the search results
page returns a data set with one set of documents and their corresponding
Identifiers.  Then, in a different search, the search results page returns
a different data set where each document in the result set uses different
Identifiers.

An example will help.  Dynamic content involve UI elements who Identifying
properties change each time you open the page displaying them.  For example,

Dynamic HTML of an object might look as:
           
.. code-block:: html

    <input type="checkbox" value="true" id="addForm:_ID74:_ID75:0:_ID79:0:
	checkBox" name="addForm:_ID74:_ID75:0:_ID79:0:checkBox"/>

This is HTML snippet for a check box. Its ID and name 
(addForm:_ID74:_ID75:0:_ID79:0:checkBox) are same and both are dynamic 
(they will change the next time you open the application). In this case


Ajax Tests
~~~~~~~~~~ 

Ajax is a technology which supports dynamic real-time UI elements such as
animation and RSS feeds.  In Ajax-driven web applications, data is
retrieved from the application server without refreshing the page. 

Verifying Results
-----------------

Assert vs. Verify
~~~~~~~~~~~~~~~~~

When should you use an assert command and when should you use a verify command?
This is up to you.  The difference is in what you want to happen when the check
fails.  Do you want your test to terminate or continue and record that the check
failed?

Here's the trade-off. If you use an assert, the test will stop at that point and
not run any subsequent checks.  Sometimes, perhaps often, that is what you want.
If the test fails you will immediately know the test did not pass.  Test engines
such as TestNG and JUnit have plugins for commonly used development environments
(Chap 5) which conveniently flag these tests as failed tests.  The advantage:
you have an immediate visual of whether the checks (those using asserts anyway)
passed.  The disadvantage:  when a check does fail, there are other checks
which were never performed, so you have no information on their status.

In contrast, verify commands will not terminate the test.  If your test uses
only verify commands you are guaranteed (assuming no unexpected exceptions)
the test will run to completion whether the checks find defects in the AUT
or not.  The disadvantage:  you have to do more work to examine your test
results.  That is, you won't get feedback from TestNG or JUnit.  Rather,
you will need to look at the results of a console printout or a log output
by your test application.  And you will need to take the time to look through
this output every time you run your test.  For Java, Logging Selenium (Chap 5)
is a convenient logging utility for recording the results of verify commands,
however you still need to open the logs and examine the results.  If you are
running hundreds of tests, each with it's own log, this will be time-consuming. 

Trade-offs: *assertTextPresent*, *assertElementPresent*, *assertText* 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You should now be familiar with these commands, and the mechanics of using them.
If not, please refer to Chapter 4 first.  When constructing your tests, you
will need to decide

- Do I only check that the text exists on the page?  (*verify/assertTextPresent*)
- Do I only check that the HTML element exists on the page?  That is, the text, image, or other content is not to be checked, only the HTML tag is what is relevant. (*verify/assertElementPresent*)
- Must I test both, the element and it's text content?  (*verify/assertText*)

There is no right answer.  It depends on the requirements for your test.  Which, of course, depend on the requirements for the application you're testing.
If in doubt, and if the requirements are not clear, you can go with your best guess
and can always change the test later.  Most of these are easily changed in either Sel-IDE or Sel-RC.

Realize that *verify/assertText* is the *most specific test*.  This can fail if either the HTML element (tag) OR the text is not what your test is expecting.
Sometimes, for instance if HTML changes frequently by your programmers, *verifyTextPresent* makes more sense.  It can check for the content, but will pass
the test when the programmers change the HTML used to present that text.  Alternatively,  perhaps your web-designers are frequently changing the page and you don't want your test to fail every time they do this because the changes themselves are expected periodically.  However, assume you still need to check that
*something* is on the page, say a paragraph, or heading text, or an image.  In this case you can use *verify/assertElementPresent*.  It will ensure that a particular type of element exists (and if using XPath can ensure it exists relative to other objects within the page).  But you don't care what the content is, that is, a specific image file, or specific text.  You only care that some type of image exists.

Getting a feel for these types of decisions will come with time and a little experience.  They are easy concepts, and easy to change in your test, but they do depend do depend on the requirements of your AUT.  For some projects the requirements are clear and therefore your tests will be clear.  For others, not so much, and you will have to give it your best guess.  The purpose of this subsection 
is to help you anticipate your needs so you can make these decisions more efficiently.
		
		
Choosing a Location Strategy
----------------------------

You know from the Selenese section there are multiple ways of selecting an object
on a page.  But what are the trade offs of each of these locator types?  Recall
we can locate an object using

- the element ID
- the element name attribute
- an XPath statement
- document object model (DOM)

Generally, using an ID locator is more efficient as it makes your test code
more readable, assuming the ID used by the AUT's page source is a meaningful
one.  Using the name attribute also has similar advantages.  These
also give the best performance.  XPath statements have been known to be slow
in Internet Explorer due to limitations of IE's XPath processor.
  
Sometimes though, you must use an XPath locator.  If the page source does not
have an ID or name attribute you have no choice but to use an XPath or DOM locator.
It appears at the time of writing that DOM locators are not commonly used now,
and XPath appears to the preferred choice, possibly because XPath provides a
rich set of possibilities for Identifying an object--it is quite flexible.

There is an advantage to using XPath or DOM that locating via ID or name
attributes do not have. With XPath and DOM you can locate an object with
respect to another object on the page.  For example, if there is a link
that must occur within the second paragraph within a <div> section,
you can use XPath or DOM to specify this.  With ID and name locators,
you can only specify that they occur on the page--somewhere on the page.
If you must test that an image displaying the company logo appears at 
the top of the page within a header section XPath may be the better locator. 


Locating Dynamic Objects
~~~~~~~~~~~~~~~~~~~~~~~~

First, you must understand what a dynamic object is, and to do so, we will
contrast that with a static object.  Until now, all the AUT page elements
we have been considering have been static objects.  These are objects who's
html page source is the same each time the page is loaded in the browser.

For example,
           
.. code-block:: html

    <a class="button" id="adminHomeForm" onclick="return oamSubmitForm('adminHomeForm',
	'adminHomeForm:_ID38');" href="#">View Archived Allocation Events</a>

This is HTML anchor tag defining an button with an ID attribute of "adminHomeForm".
It's a fairly complex anchor tag when compared to most HTML tags, but it is still
a static tag.  The HTML will be the same each time this page is loaded in the
browser.  Its ID remains constant within all instances of this page. That is,
when this page is displayed, this UI element will always have this Identifier.
So, for your test script to click this button you simply need to use the following
selenium command.

.. code-block:: java

    click	adminHomeForm

Or, in Selenium-RC 
	
.. code-block:: java

    selenium.click("adminHomeForm");

Your application, however, may generate HTML with IDs that are generated
dynamically and therefore the ID itself varies on different instances
of the webpage under test.  For instance, HTML for a dynamic page element
might look like this.
           
.. code-block:: html

    <input type="checkbox" value="true" id="addForm:_ID74:_ID75:0:_ID79:0:checkBox"
	name="addForm:_ID74:_ID75:0:_ID79:0:checkBox"/>

This defines a checkbox. Its ID and name  attributes 
(both addForm:_ID74:_ID75:0:_ID79:0:checkBox) are dynamically generated values.
In this case, using a standard locator would look something like the following.

.. code-block:: java

    click 	addForm:_ID74:_ID75:0:_ID79:0:checkBox

Or, again in Selenium-RC
	
.. code-block:: java

    selenium.click("addForm:_ID74:_ID75:0:_ID79:0:checkBox);

Given the dynamically generated Identifier, this approach would not work. 
The next time this page is loaded the Identifier will be a different value
from the one used in the Selenium command and therefore, will not be found.
The click operation will fail with an "element not found" error.

To correct this, a simple solution would be to just use an XPath locator rather than 
trying to use an ID locator.  So, for the checkbox you can simply use

.. code-block:: java

    click 	//input

Or, if it is not the first input element on the page (which it likely is not)
try a more detailed XPath statement.

.. code-block:: java

    click 	//input[3]

Or

.. code-block:: java

    click 	//div/p[2]/input[3]
	
If however, you do need to use the ID to locate the element, a programmed solution
is required.  Another solution is 
to capture this ID from the website itself, before you need to use it in a Selenium
command. It can be done like this.

.. code-block:: java

   String[] checkboxids  = selenium.getAllFields(); // Collect all input IDs on page.
   if(!GenericValidator.IsBlankOrNull(checkboxids[i])) // If collected ID is not null.
          {
                   // If the ID starts with addForm
                   if(checkboxids[i].indexOf("addForm") > -1) {                       
                       selenium.click(checkboxids[i]);                    
                   }
           }

This approach will work if there is only one field whose ID has the text 
'addForm' appended to it.

Consider one more example of a Dynamic object; a page with two links having 
the same name and the same html name. Now if href is used to click the link,
it would always be clicking on the first element. Clicking on the second link
can be achieved as follows.

.. code-block:: java

    // Flag for second appearance of link.
    boolean isSecondInstanceLink = false;
    
    // Desired link.
    String editInfo = null;

    // Collect all links.
    String[] links = selenium.getAllLinks();

    // Loop through collected links.
    for(String linkID: links) {

        // If retrieved link is not null
        if(!GenericValidator.isBlankOrNull(linkID))  {

            // Find the inner HTML of link.
            String editTermSectionInfo = selenium.getEval
			("window.document.getElementByID('"+linkID+"').innerHTML");

            // If retrieved link is expected link.
            if(editTermSectionInfo.equalsIgnoreCase("expectedlink")) {

                // If it is second appearance of link then save the link ID
				and break the loop.
                if(isSecondInstanceLink) {
                    editInfo = linkID;
                    break;
                }

            // Set the second appearance of Autumn term link to true as
            isSecondInstanceLink = true;
            }
        }
    }
    
    // Click on link.
    selenium.click(editInfo);
                   


How can I avoid using complex XPath expressions in my test?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Where possible, element IDs should be explicitly created by the application designer, 
not automatically generated. Automatically generated (non-descriptive) 
element IDs (i.e. id_147) tend to cause two problems: first, each time the 
application is deployed, different element IDs could be generated. If the 
element ID changes then your test will fail.  Second, a non-descriptive element
id makes it hard for automation testers to keep track of and determine which 
element IDs to use (which ID is associated with which GUI object).

You might consider trying the `UI-Element`_ extension in this situation.

.. _`UI-Element`:

	http://wiki.openqa.org/display/SIDE/Contributed+Extensions+and+Formats#ContributedExtensionsandFormats-UIElementLocator

Performance Considerations for Locators
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Custom Locators
~~~~~~~~~~~~~~~
  
*This section is not yet developed.*

  
.. Dave: New suggested section. I've been documenting location strategies and 
   it's possible in RC to add new strategies. Maybe an advanced topic but 
   something that isn't documented elsewhere to my knowledge.



Testing Ajax Applications
-------------------------

We introduced the special characteristics of AJAX technology earlier in this
chapter.  Basically, a page element implemented with Ajax is an element that
can be dynamically refreshed without having to refresh the entire page.

Waiting for an Ajax Element
~~~~~~~~~~~~~~~~~~~~~~~~~~~
For an Ajax element using Selenium's *waitForPageToLoad* wouldn't
work since the page is not actually loaded to refresh the Ajax element. Pausing
the test execution for a specified period of time is also not good
because the web element might appear later than expected leading to invalid
test failures (reported failures that aren't actually failures). 
A better approach is to wait for a predefined period and then continue
execution as soon as the element is found.

Consider a page which brings a link (link=ajaxLink) on click
of a button on page (without refreshing the page)  This could be handled
by Selenium using a *for* loop. 

.. code-block:: bash
   
   // Loop initialization.
   for (int second = 0;; second++) {
	
	// If loop is reached 60 seconds then break the loop.
	if (second >= 60) break;
	
	// Search for element "link=ajaxLink" and if available then break loop.
	try { if (selenium.isElementPresent("link=ajaxLink")) break; } catch (Exception e) {}
	
	// Pause for 1 second.
	Thread.sleep(1000);
	
   } 

This certainly isn't the only solution.  Ajax is a common topic in the user group and we
suggest searching previous discussions to see what others have done along with the questions
they have posted.  

Wrapping Selenium Calls
------------------------

Interaction of selenium object with web application can be made very compact
by delegating multiple selenium interactions to one single method. For example
how many times you click on an object on web page and then wait for page to load 

.. code-block:: java

	selenium.click(elementLocator);
	selenium.waitForPageToLoad(waitPeriod);

Instead of using this all around your tests you	could write a wrapper method to 
perform both click and waitForPageToLoad calls in one method it self, i.e.

.. code-block:: java

	/**
	 * Clicks and Waits for page to load.
	 * 
	 * @param elementLocator
	 * @param waitPeriod
	 */
	public void clickAndWait(String elementLocator, String waitPeriod) {
		selenium.click(elementLocator);
		selenium.waitForPageToLoad(waitPeriod);
	}

Now when ever you want to perform click and wait operation call to clickAndWait 
method would suffice.

Another common usage of wrapping selenium methods is to check for presence of 
element on page before carrying out any operation, which results in abortion of
test if element were not present on page. Hence instead of doing

.. code-block:: java

	selenium.click(elementLocator)

the following method could be used which carries out safe operation on element.

.. code-block:: java

	/**
	 * Clicks on element only if it is available on page.
	 * 
	 * @param elementLocator
	 */
	public void safeClick(String elementLocator) {
		if(selenium.isElementPresent(elementLocator)) {
			selenium.click(elementLocator);
		} else {
			// TestNG API for logging			
			Reporter.log("Element: " +elementLocator+ ", is not available on page - "
					+selenium.getLocation());
		}
	}

Using safe methods entirely boil down to discretion of test developer.
Hence if test execution is to be continued even in the wake of missing elements 
on page then safe methods could be used, while posting the log about
missing element in test report. But if element must be available on page in order 
to be able to carry out further operations (i.e. login button on home page 
of a portal) then safe methods should not be used.


UI Mapping
----------

A UI map is a mechanism that stores Identifiers, or in our case, locators, for
an application's UI elements.  The test script then uses the UI Map for locating
the elements to be tested.  Basically, a UI map is a repository of test script objects
that correspond to UI elements of the application being tested.

.. Santi: Yeah, there's a pretty used extension for this (UI-element), it's 
   also very well integrated with selenium IDE.   

What makes a UI map heplful?  Its primary purpose for making test script management
much easier.  When a locator needs to be edited, there is a central location for easily
finding that object, rather than having to search through test script code.  Also, it allows
changing the Identifier in a single place, rather than having to make the change in multiple
places within a test script, or for that matter, in multiple test scripts.

To summarize, a UI map has two significant advantages.

- Using a centralized location for UI objects instead of having them scattered 
  throughout the script.  This makes script maintenance more efficient.
- Cryptic HTML Identifiers and names can be given more human-readable names improving the 
  readability of test scripts.

Consider the following example (in java) of selenium tests for a website: 

.. code-block:: java

   public void testNew() throws Exception { 
   		selenium.open("http://www.test.com");
   		selenium.type("loginForm:tbUsername", "xxxxxxxx");
   		selenium.click("loginForm:btnLogin");
   		selenium.click("adminHomeForm:_activitynew");
   		selenium.waitForPageToLoad("30000");
   		selenium.click("addEditEventForm:_IDcancel");
   		selenium.waitForPageToLoad("30000");
   		selenium.click("adminHomeForm:_activityold");
   		selenium.waitForPageToLoad("30000");
   } 
   
This script is incomprehensible to anyone who isn't very familiar 
with the AUT's page source. Even regular users of the application 
would have difficulty understanding what the script does. A better 
script would be:
   
.. code-block:: java

   public void testNew() throws Exception {
   		selenium.open("http://www.test.com");
   		selenium.type(admin.username, "xxxxxxxx");
   		selenium.click(admin.loginbutton);
   		selenium.click(admin.events.createnewevent);
   		selenium.waitForPageToLoad("30000");
   		selenium.click(admin.events.cancel);
   		selenium.waitForPageToLoad("30000");
   		selenium.click(admin.events.viewoldevents);
   		selenium.waitForPageToLoad("30000");
   }
   
There are no comments provided but it is
more comprehensible because of the keywords used in scripts. (please
be aware that UI Map is NOT a replacement for comments!  Comments are still
important for documenting an automated test.) An even better test script could
look like this.
   
.. code-block:: java

   public void testNew() throws Exception {

		// Open app url.
   		selenium.open("http://www.test.com");
   		
   		// Provide admin username.
   		selenium.type(admin.username, "xxxxxxxx");
   		
   		// Click on Login button.
   		selenium.click(admin.loginbutton);
   		
   		// Click on Create New Event button.
   		selenium.click(admin.events.createnewevent);
   		selenium.waitForPageToLoad("30000");
   		
   		// Click on Cancel button.
   		selenium.click(admin.events.cancel);
   		selenium.waitForPageToLoad("30000");
   		
   		// Click on View Old Events button.
   		selenium.click(admin.events.viewoldevents);
   		selenium.waitForPageToLoad("30000");
   }
   
The idea is to have a centralized location for objects and using 
comprehensible names for those objects. To achieve this, properties files can 
be used in java. A properties file contains key/value pairs, where each 
key and value are strings.
   
Consider a property file *prop.properties* which assigns as 'aliases' easily
understood Identifiers for the HTML objects used earlier. 
   
.. code-block:: java
   
   admin.username = loginForm:tbUsername
   admin.loginbutton = loginForm:btnLogin
   admin.events.createnewevent = adminHomeForm:_activitynew
   admin.events.cancel = addEditEventForm:_IDcancel
   admin.events.viewoldevents = adminHomeForm:_activityold
   
The locators will still refer to html objects, but we have introduced a layer 
of abstraction between the test script and the UI elements.
Values are read from the properties file and used in the Test Class to 
implement the UI 
Map. For more on Properties files refer to the following `link`_.

.. _link: http://java.sun.com/docs/books/tutorial/essential/environment/properties.html


Page Object Design Pattern
---------------------------

Page Object Design Pattern models the page specific behaviour in a corresponding 
class which represents services (public methods) offered by page object. 
Selenium tests use page object to interact with application and their own 
verification/assertion to validate page. Page Object Design Pattern brings following 
advantages -

1. There is clean separation between automation code which knows about application 
html and the one which carries out actual tests.

2. There is single repository of services offered by page, instead of application 
html scattered through out the tests. Hence improved maintainability and reduction
in code duplication.

Let us see these problems in more detail by considering a selenium test -

.. code-block:: java

	/***
	 * Tests login feature
	 */
	public class Login extends SelTestCase {

		public void testLogin() {
			selenium.type("inputBox", "testUser");
			selenium.type("password", "my supersecret password");
			selenium.click("sign-in");
			selenium.waitForPageToLoad("PageWaitPeriod");
			Assert.assertTrue(selenium.isElementPresent("compose button"),
					"Login was unsuccessful");
		}
	}
	
There are two primary problems with this approach -

1. There is no separation between test method and application html as both of them 
are intertwined in one method.

2. Application html would be spread in multiple tests, which induces 
unwarranted redundancy and makes test maintenance difficult.	

Page Object may represent an entirely new page or just part of page. If user 
action causes control to be directed to new page then it is represented by 
new page else same page object could be returned.

For example login feature on sign-in page could be represented by HomePage class for 
user as sign in operation directs user to home page of logged in user. While auto 
suggest window of a search engine could be represented by same page as auto 
suggest window appears on the same page on which user is types in search term.

Applying the page object techniques, above mentioned example could be rewritten as 

Page Object for Sign-in page -

.. code-block:: java

	/**
	 * Models sign-in page for user
	 */
	public class SignInPage extends SelTestCase {
		
		private Selenium selenium;
		
		public SignInPage(Selenium selenium) {
			this.selenium = selenium;
			if(!selenium.getTitle().equals("Sign in page")) {
				throw new IllegalStateException("This is not sign in page, current page is: "
						+selenium.getLocation());
			}
		}
		
		/**
		 * Login as valid user
		 * 
		 * @param userName
		 * @param password
		 * @return HomePage object
		 */
		public HomePage loginValidUser(String userName, String password) {
			selenium.type("usernamefield", userName);
			selenium.type("passwordfield", password);
			selenium.click("sign-in");
			selenium.waitForPageToLoad("waitPeriod");
			
			return new HomePage(selenium);
		}	
	}
	
and page object for Home page would look as -

.. code-block:: java

	/**
	 *Models features presented by Home page
	 */
	public class HomePage extends SelTestCase {

		private Selenium selenium;

		public HomePage(Selenium selenium) {
			if (!selenium.getTitle().equals("Home Page of logged in user")) {
				throw new IllegalStateException("This is not Home Page of logged in user, current page" +
						"is: " +selenium.getLocation());
			}
		}
		
		/*More methods offering the services represented by Home Page
		of Logged User. These methods in turn might return more Page Objects
		for example click on Compose mail button could return ComposeMail class object*/
		
	}
	
and updated login test looks as -

.. code-block:: java

	/***
	 * Tests login feature
	 */
	public class TestLogin extends SelTestCase {

		public void testLogin() {
			SignInPage signInPage = new SignInPage(selenium);
			signInPage.loginValidUser("userName", "password");
			Assert.assertTrue(selenium.isElementPresent("compose button"),
					"Login was unsuccessful");
		}
	}
	
Page objects themselves should never be used to make verification/assertion and it 
is responsibility of tests to validate application state. Though there is an 
exception to it. While instantiating a page object it could be checked whether 
control is really on expected page or not. Hence in the examples illustrates above
both SignInPage and HomePage constructors check if control is on right page.


Bitmap Comparison
------------------
*This section has not been developed yet.*

.. Tarun: Bitmap comparison is about comparison of two images. This feature 
   is available in commercial web automation tools and helps in UI testing (or
   I guess so)
   Santi: I'm not really sure how this can be achieved using Selenium. The only
   Idea that I have right now is calculating the checksum of the image and 
   comparing that with the one of the image that should be present there, like:

   <pseudocode>
     img_url = sel.get_attribute("//img[@src]")
     image = wget(img_url)
     assertEqual(get_md5(image), "MD5SUMEXPECTED12341234KJL234")
   </pseudocode>

   But I've never implemented this before...

.. Santi: Isn't the "Advanced Selenium" chapter better for this topic to be 
   placed on?


Data Driven Testing
~~~~~~~~~~~~~~~~~~~
*This section needs an introduction and it has not been completed yet.*

**In Python:**

.. code-block:: python

   # Collection of String values
   source = open("input_file.txt", "r")
   values = source.readlines()
   source.close()
   # Execute For loop for each String in the values array
   for search in values:
       sel.open("/")
       sel.type("q", search)
       sel.click("btnG")
       sel.waitForPageToLoad("30000")
       self.failUnless(sel.is_text_present("Results * for " + search))

Why would we want a separate file with data in it for our tests?  One important 
method of testing is to run the same test repetitively with different data values.
This is called *Data Driven Testing* and is a very 
common testing task.  Test automation tools, Selenium included, generally 
handle this as it's a common reason for test automation. 

The Python script above opens a text file.  This file contains a different search
string on each line. The code then saves this in an array of strings, and iterates
over the array doing a search and assert on each string. 

This is a very basic example of what you can do, but the Idea is to show you
things that can easily be done with either a programming or scripting 
language when they're difficult or even impossible to do using Selenium-IDE.

Refer to the `Selenium RC wiki`_ for examples of reading data from spread sheet or using
data provider capabilities of TestNG with java client driver.

.. _`Selenium RC wiki`: http://wiki.openqa.org/pages/viewpage.action?pageID=21430298


Handling Errors
---------------

*Note: This section is not yet developed.*

Error Reporting
~~~~~~~~~~~~~~~


Recovering From Failure
~~~~~~~~~~~~~~~~~~~~~~~

A quick note though--recognize that your programming language's exception-
handling support can be used for error handling and recovery.

.. TODO: Complete this... Not sure if the scenario that I put is the best example to use
.. Then, what if google.com is down at the moment of our tests? Even if that sounds
   completely impossible. We can create a recovery scenario for that test. We can
   make our tests to wait for a certain amount of time and try again:

.. The Idea here is to use a try-catch statement to grab a really unexpected
   error.

*This section has not been developed yet.*

.. Tarun: Here Test attempt is re made against a website which comes up with 
   something unexpected i.e. pop up window or unexpected page etc, I guess 
   for selenium this largely depends on how tests are designed. Say in case 
   of java Try Catch Block might help achieving this.

.. Santi: Isn't the "Advanced Selenium" chapter better for this topic to be 
   placed on?

   
   
Database Validations
~~~~~~~~~~~~~~~~~~~~~

Since you can also do database queries from your favorite programming 
language, assuming you have database support functions, why not use them
for some data validations/retrieval on the Application Under Test?

Consider the example of a registration process where a registered email address
is to be retrieved from the database. An example of establishing a DB connection
and retrieving data from the DB would be:  

**In Java:**

.. code-block:: java

   // Load Microsoft SQL Server JDBC driver.   
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      
   // Prepare connection url.
   String url = "jdbc:sqlserver://192.168.1.180:1433;DatabaseName=TEST_DB";
   
   // Get connection to DB.
   public static Connection con = 
   DriverManager.getConnection(url, "username", "password");
   
   // Create statement object which would be used in writing DDL and DML 
   // SQL statement.
   public static Statement stmt = con.createStatement();
   
   // Send SQL SELECT statements to the database via the Statement.executeQuery
   // method which returns the requested information as rows of data in a 
   // ResultSet object.
   
   ResultSet result =  stmt.executeQuery
   ("select top 1 email_address from user_register_table");
   
   // Fetch value of "email_address" from "result" object.
   String emailaddress = result.getString("email_address");
   
   // Use the fetched value to login to application.
   selenium.type("userID", emailaddress);
   
This is a very simple example of data retrieval from a DB in Java. 
A more complex test could be to validate that inactive users are not
able to login to the application. This wouldn't take too much work from what you've 
already seen.
