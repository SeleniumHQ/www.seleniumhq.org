
Test Design Considerations 
==========================

.. _chapter06-reference:


Introducing Test Design
-----------------------

We've provided in this chapter information that will be useful to both, those new to test automation
and for the experienced QA professional.  Here we describe the most common types of automated tests.  
We also describe 'design patterns' commonly used in test automation for improving the maintenance
and extensibily of your automation suite.  The more experienced reader will find these interesting
if not already using these techniques.


Types of Tests
--------------

What parts of your application should you test?  That depends on aspects of
your project:  user expectations, time allowed for the project, priorities
set by the project manager and so on.  Once the project boundaries are defined
though, you, the tester, will certainly make many decisions on what to test.

We've created a few terms here for the purpose of categorizing the types of test you may
perform on your web application.  These terms are by no means standard, although the concepts
we present here are typical for web-application testing.

   

Testing Static Content
~~~~~~~~~~~~~~~~~~~~~~
The simplest type of test, a *content test*, is a simple test for the existence
of a static, non-changing, UI element.  For instance

- Does each page have its expected page title?  This can be used to verify your 
  test found an expected page after following a link.
- Does the application's home page contain an image expected to be at the top of
  the page?  
- Does each page of the website contain a footer area with links to the company
  contact page, privacy policy, and trademarks information?  
- Does each page begin with heading text using the <h1> tag?  And, does each
  page have the correct text within that header?

You may or may not need content tests.  If your page content is not likely to be
affected then it may be more efficient to test page content manually.  If, for example,
your application involves files being moved to different locations, content tests may prove valuable.

Testing Links
~~~~~~~~~~~~~
A frequent source of errors for web-sites is broken links or missing pages
behind links.  Testing involves clicking each link
and verifying the expected page.  If static links are infrequently changed then manual tseting 
may be sufficient.  However if your web designers frequently alter links, or if files are occassionally
relocated, link tests should be automated.


Function Tests
~~~~~~~~~~~~~~
These would be tests of a specific function within your application, requiring
some type of user input, and returning some type of results.  Often a function
test will involve multiple pages with a form-based input page containing a
collection of input fields, Submit and Cancel operations, and one or more
response pages.  User input can be via text-input fields, check boxes, drop-down
lists, or any other browser-supported input.

Function tests are often the most complex tests you'll automate, but are usually the most 
important.  Typical tests can be for login, registration to the site, user account operations,
account settings changes, complex data retrieval operations, among others.  Function tests
typically mirro the user-scenarios used to specify the features and design or your application.

Testing Dynamic Elements
~~~~~~~~~~~~~~~~~~~~~~~~
Often a web page element has a unique identifier used to uniquely locate that
element within the page.  Usually these are implemented using the html tag's 
'id' attribute or it's 'name' attribute.  These names can be a static, i.e 
unchanging, string constant.  They can also be dynamically generated values that
vary each  instance of the page.  For example, some web servers might name a diplayed
document doc3861 one instance of a page, and 'doc6148' on a different instance of the 
page depending on what 'document' the user was retrieving.  This means your test script which
is verify that a document exists may not have a consistent identifier to user for locating that
document.  Often, dynamic elements with varying identifiers are on some type of result page 
based on a user action.  Thing though certainly depends on the function of the web application.  

Here's an example.  
           
.. code-block:: html

    <input type="checkbox" value="true" id="addForm:_ID74:_ID75:0:_ID79:0:
	checkBox"/>

This shows an HTML tag for a check box. Its ID  
(addForm:_ID74:_ID75:0:_ID79:0:checkBox) is a dynamically generated value. 
The next time the same page is opened it will likely be a different value.


Ajax Tests
~~~~~~~~~~ 

Ajax is a technology which supports dynamically changing user interface
elements which can dynamically change without the browser having to reload
the page, such as animation, RSS feeds, and real-time data updates among others.
There's a countless ways Ajax can be used to update elements on a web page.
But, the easy way to think of this is that in Ajax-driven applications, data can
retrieved from the application server and then displayed on the page without 
reloading the entire page.  Only a portion of the page, or strictly the element
itself is reloaded.

Validating Results
------------------

Assert vs. Verify
~~~~~~~~~~~~~~~~~

When should you use an assert command and when should you use a verify command?
This is up to you.  The difference is in what you want to happen when the check
fails.  Do you want your test to terminate, or to continue and simply record that the check
failed?

Here's the trade-off. If you use an assert, the test will stop at that point and
not run any subsequent checks.  Sometimes, perhaps often, that is what you want.
If the test fails you will immediately know the test did not pass.  Test engines
such as TestNG and JUnit have plugins for commonly used development environments
(Chap 5) which conveniently flag these tests as failed tests.  The advantage:
you have an immediate visual of whether the checks
passed.  The disadvantage:  when a check does fail, there are other checks
which were never performed, so you have no information on their status.

In contrast, verify commands will not terminate the test.  If your test uses
only verify commands you are guaranteed (assuming no unexpected exceptions)
the test will run to completion whether the checks find defects
or not.  The disadvantage:  you have to do more work to examine your test
results.  That is, you won't get feedback from TestNG or JUnit.
You will need to look at the results of a console printout or a log output.
And you will need to take the time to look through
this output every time you run your test.  If you are
running hundreds of tests, each with it's own log, this will be time-consuming,
and the immediate feedback of asserts will be more appropriate.  Asserts are more
commonly used then verifys due to their immediate feedback.

Trade-offs: *assertTextPresent*, *assertElementPresent*, *assertText* 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You should now be familiar with these commands, and the mechanics of using them.
If not, please refer to Chapter 3 first.  When constructing your tests, you
will need to decide

- Do I only check that the text exists on the page?  (*verify/assertTextPresent*)
- Do I only check that the HTML element exists on the page?  That is, the text, 
image, or other content is not to be checked, only the HTML tag is what is relevant. (*verify/assertElementPresent*)
- Must I test both, the element and it's text content?  (*verify/assertText*)

There is no right answer.  It depends on the requirements for your test.  Which, of course, 
depend on the requirements for the application you're testing.
If in doubt, use *assertText* since this is the strictest type of checkpoint.  You 
can always change it later but at least you won't be missing any potential failures.

*Verify/assertText* is the *most specific test* type.  This can fail if either the HTML element (tag)
OR the text is not what your test is expecting.
Perhaps your web-designers are frequently changing the page and you don't want your test to fail every time
they do this because the changes themselves are expected periodically.  However, assume you still need to
check that *something* is on the page, say a paragraph, or heading text, or an image.  In this case you
can use *verify/assertElementPresent*.  It will ensure that a particular type of element exists
(and if using XPath can ensure it exists relative to other objects within the page).  But you don't
care what the content is.  You only care that a specific element, say, an image, is at a specific location.

Getting a feel for these types of decisions will come with time and a little experience.  They are
easy concepts, and easy to change in your test.

Location Strategies
-------------------
		
Choosing a Location Strategy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are multiple ways of selecting an object
on a page.  But what are the trade offs of each of these locator types?  Recall
we can locate an object using

- the element's ID
- the element's name attribute
- an XPath statement
- by a links text
- document object model (DOM)

Using an element ID or name locator is the most efficient in terms of test performance,
and also makes your test code more readable, assuming the ID or name within the page source is well-named.
XPath statements take longer to process since the browser must run it's XPath processor.  Xpath has 
been known to be especially slow in Internet Explorer version 7.  Locating via a link's text is often
convenient and performs well.  This technique is speciic to links though.  Also,
if the link text is likely to change frequently, locating by the <a> element
would be the better choice.
  
Sometimes though, you must use an XPath locator.  If the page source does not
have an ID or name attribute you may have no choice but to use an XPath locator.
(DOM locators are no longer commonly used since Xpath can do everything they can and more.
DOM locators are available simply to support legacy tests.)

There is an advantage to using XPath that locating via ID or name
attributes do not have. With XPath (and DOM) you can locate an object with
respect to another object on the page.  For example, if there is a link
that must occur within the second paragraph within a <div> section,
you can use XPath to specify this.  With ID and name locators,
you can only specify that they occur on the page that is, somewhere on the page.
If you must test that an image displaying the company logo appears at 
the top of the page within a header section XPath may be the better locator. 


Locating Dynamic Elements
~~~~~~~~~~~~~~~~~~~~~~~~~

As was described earlier in the section on types of tests, a dynamic element is a page element
who's identifer varies with each instance of the page.  For example,
           
.. code-block:: html

    <a class="button" id="adminHomeForm" onclick="return oamSubmitForm('adminHomeForm',
	'adminHomeForm:_ID38');" href="#">View Archived Allocation Events</a>

This HTML anchor tag defines a button with an ID attribute of "adminHomeForm".
It's a fairly complex anchor tag when compared to most HTML tags, but it is still
a static tag.  The HTML will be the same each time this page is loaded in the
browser.  Its ID remains constant with all instances of this page. That is,
when this page is displayed, this UI element will always have this Identifier.
So, for your test script to click this button you simply need to use the following
selenium command.

.. code-block:: java

    click	adminHomeForm

Or, in Selenium 1.0 
	
.. code-block:: java

    selenium.click("adminHomeForm");

Your application, however, may generate HTML
dynamically where the identifier varies on different instances
of the webpage.  For instance, HTML for a dynamic page element
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
	
If however, you do need to use the ID to locate the element, a different solution
is needed.  You can capture this ID from the website before you use it in a Selenium
command. It can be done like this.

.. code-block:: java

   String[] checkboxids  = selenium.getAllFields(); // Collect all input IDs on page.
		for(String checkboxid:checkboxids) {
		       if(checkboxid.contains("addForm")) {
                   selenium.click(expectedText);
               }
		}

This approach will work if there is only one check box whose ID has the text 
'expectedText' appended to it.


Locating Ajax Elements
~~~~~~~~~~~~~~~~~~~~~~
As was presented in the Test Types subsection above, a page element implemented with Ajax
is an element that
can be dynamically refreshed without having to refresh the entire page.  
The best way to locate and verify an Ajax element is to use the Selenium 2.0 WebDriver API.
It was specifically designed to address testing of Ajax elements where Selenium 1 has some
limitations.

In Selenim 2.0 you use the waitFor() method to wait for a page element to become available.
The parameter is a By object which is how WebDriver implements locators.  This is explained in detail in the WebDriver chapters.

To do this with Selenium 1.0 (Selenium-RC) a bit more coding is involved, but it 
isn't difficult.  The approach is to check for the element, if it's not availble 
wait for a predefined period and then again recheck it.  This is then executed with a loop with a predetermined time-out terminating the loop if the element isn't found.

Let's consider a page which brings a link (link=ajaxLink) on click
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

This certainly isn't the only solution.  Ajax is a common topic in the user forum and we
recommend searching previous discussions to see what others have done.  

Wrapping Selenium Calls
-----------------------

As with any programming, you will want to use utility functions to handle code 
that would otherwise be duplicated throughout your tests.  One way to prevent this
is to wrap frequently used selenium calls with functions or class methods of your
own design.  For example, many tests will frequently click on a page element 
and wait for page to load multiple times within a test.

.. code-block:: java

	selenium.click(elementLocator);
	selenium.waitForPageToLoad(waitPeriod);

Instead of duplicting this code you	could write a wrapper method that performs
both functions.

.. code-block:: java

	/**
	 * Clicks and Waits for page to load.
	 * 
	 * param elementLocator
	 * param waitPeriod
	 */
	public void clickAndWait(String elementLocator, String waitPeriod) {
		selenium.click(elementLocator);
		selenium.waitForPageToLoad(waitPeriod);
	}
	

'Safe Operations' for Element Presence
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Another common usage of wrapping selenium methods is to check for presence of 
an element on page before carrying out some operation. This is sometimes called 
a 'safe operation'.  For instance, the following method could be used to implement
a safe operation that depends on an expected element being present.

.. code-block:: java

	/**
	 * Selenum-RC -- Clicks on element only if it is available on page.
	 * 
	 * param elementLocator
	 */
	public void safeClick(String elementLocator) {
		if(selenium.isElementPresent(elementLocator)) {
			selenium.click(elementLocator);
		} else {
			// Using the TestNG API for logging			
			Reporter.log("Element: " +elementLocator+ ", is not available on page - "
					+selenium.getLocation());
		}
	}

This example uses the Selenium 1 API but Selenium 2 also supports this.

.. code-block:: java

	/**
	 * Selenium-WebDriver -- Clicks on element only if it is available on page.
	 * 
	 * param elementLocator
	 */
	public void safeClick(String elementLocator) {
		WebElement webElement = getDriver().findElement(By.XXXX(elementLocator));
		if(webElement != null) {
			selenium.click(elementLocator);
		} else {
			// Using the TestNG API for logging			
			Reporter.log("Element: " +elementLocator+ ", is not available on page - "
					+ getDriver().getUrl());
		}
	}

In this second example 'XXXX' is simply a placeholder for one of the multiple location
methods that can be called here.

Using safe methods is up to the test developer's discretion.
Hence, if test execution is to be continued, even in the wake of missing elements 
on the page, then safe methods could be used, while posting a message to a log about
the missing element. This, essentially, implements a 'verify' with a reporting 
mechanism as opposed to an abortive assert.  But if element must be available on page in order 
to be able to carry out further operations (i.e. login button on home page 
of a portal) then this safe method technique should not be used.


UI Mapping
----------

A UI map is a mechanism that stores all the locators for a test suite in one place
for easy modification when identifiers or paths to UI elements change in
the AUT.  The test script then uses the UI Map for locating
the elements to be tested.  Basically, a UI map is a repository of test script objects
that correspond to UI elements of the application being tested.  

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

Consider the following, difficult to understand, example (in java). 

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
   
This script would be hard to follow for anyone not familiar 
with the AUT's page source. Even regular users of the application 
might have difficulty understanding what thus script does. A better 
script could be:
   
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
   
Now, using some comments and whitespace along with the UI Map identifiers makes
a very readable script.
   
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
   
There are various ways a UI Map can be implemented.  One could create a class 
or struct which only stores public String variables each storing a locator.  
Alternatively, a text file storing key value pairs could be used.  In Java, a properties file containing key/value pairs is probably best method.
   
Consider a property file *prop.properties* which assigns as 'aliases' 
reader-friendly identifiers for UI elements from the previous example. 
   
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
Map. For more on Java properties files refer to the following `link`_.

.. _link: http://java.sun.com/docs/books/tutorial/essential/environment/properties.html


Page Object Design Pattern
---------------------------

Page Object is a Design Pattern which has become popular in test automation 
for enhancing test maintenance and reducing code duplication.  A page object 
is an object-oriented class that serves as an interface to a page of your AUT.  
The tests then use the methods of this page object class whenever they need to 
interact with that page of the UI.  The benefit is that if the UI changes for 
the page, the tests themselves don't need to change, only the code within the page 
object needs to change.  Subsequently all changes to support that new UI are located in one place.

The Page Object Design Pattern provides the following 
advantages.

1. There is clean separation between test code and page specific code such 
as locators (or their use if you're using a UI map) and layout.

2. There is single repository for the services or operations offered by the 
page rather than having these services scattered through out the tests. 

In both cases this allows any modifications required due to UI changes to all 
be made in one place.  Useful information on this technque can be found on 
numerous blogs as this 'test design pattern' is becomming widely used.  
*We encourage the reader who wishes to know more to search the internet for blogs on this subject.*  
Many have written on this design pattern and can provide useful tips beyond the scope 
of this user guide.  To get you started, though, we'll illustrate page objecs with a simple example.

First, consider an example, typical of test automation, that does not use a page object.

.. code-block:: java

	/***
	 * Tests login feature
	 */
	public class Login {

		public void testLogin() {
			selenium.type("inputBox", "testUser");
			selenium.type("password", "my supersecret password");
			selenium.click("sign-in");
			selenium.waitForPageToLoad("PageWaitPeriod");
			Assert.assertTrue(selenium.isElementPresent("compose button"),
					"Login was unsuccessful");
		}
	}
	
There are two problems with this approach.

- There is no separation between the test method and the AUTs locators (IDs in this example); 
both are intertwined in a single method.  If the AUT's UI changes it's identifiers, layout, or how a login is input and processed, the test itself must change.
- The id-locators would would be spread in multiple tests, all tests that had to use this login page.	

Applying the page object techniques this example could be rewritten like this.

Page Object for Sign-in page -

.. code-block:: java

	/**
	 * Page Object encapsulates the Sign-in page.
	 */
	public class SignInPage {
		
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
	 * Page Object encapsulates the Home Page
	 */
	public class HomePage {

		private Selenium selenium;

		public HomePage(Selenium selenium) {
			if (!selenium.getTitle().equals("Home Page of logged in user")) {
				throw new IllegalStateException("This is not Home Page of logged in user, current page" +
						"is: " +selenium.getLocation());
			}
		}
		
		public HomePage manageProfile() {
			// Page encapsulation to manage profile functionality
			return new HomePage(selenium);
		}
		
		/*More methods offering the services represented by Home Page
		of Logged User. These methods in turn might return more Page Objects
		for example click on Compose mail button could return ComposeMail class object*/
		
	}
	
So now, the login test woud use these two page objects as follows.

.. code-block:: java

	/***
	 * Tests login feature
	 */
	public class TestLogin {

		public void testLogin() {
			SignInPage signInPage = new SignInPage(selenium);
			HomePage homePage = signInPage.loginValidUser("userName", "password");
			Assert.assertTrue(selenium.isElementPresent("compose button"),
					"Login was unsuccessful");
								
			homePage.manageProfile();
			// Few more test for Home Page
			
		}
	}

There is a lot of flexibility in how the page objects may be designed, but there are a few basic rules for getting the desired maintainability of your test code.	
Page objects themselves should never be make verifications or assertions. This is part of your test and should always be within the test's code, never in an page object. The page object will contain the representation of the page, and the services the page provides via methods but no code related to what is being tested should be within the page object.

There is one, single, verification which can, and should, be within the page object and that is to verify that the page, and possibly critical elements on the page, were loaded correctly.  This verification should be done while instantiating the page object. In the examples above, both the SignInPage and HomePage constructors check that the expected page is availabe and ready for requests from the test.

A page object does not necessarily need to represent an entire page. The Page Object design pattern could be used to represent components on a page.  If a page in the AUT has multiple components, it may improved maintainablity if there was a separate page object for each component.

There are other design patterns that also may be used in testing.  Some use a Page Factory for instantiating their page objects.  Discussing all of these is beyond the scope of this user guide.  Here, we merely want to introduce the concepts to make the reader aware of some of the things that can be done.  As was mentioned earlier, many have blogged on this topic and we encourage the reader to search for blogs on these topics.


Data Driven Testing
--------------------
Data Driven Testing refers to using the same test (or tests) multiple times with varying data.  These data sets are often from external files i.e. .csv file, text file, or perhaps loaded from a database. Data driven testing is a commonly used test automation technique used to validate an application against many varying input.  When the test is designed for varying data, the input data can expand, essentially creating additional tests, without requiring changes to the test code.

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


The Python script above opens a text file.  This file contains a different search string on each line. The code then saves this in an array of strings, and iterates over the array doing a search and assert on each string. 

This is a very basic example, but the idea is to show that running a test with varying data can be done easily with a programming or scripting 
language.  For more examples, refer to the `Selenium RC wiki`_ for examples of reading data from a spreadsheet or for using the data provider capabilities of TestNG.  Additionally, this is a well-known topic among test automation professionals including those who don't use Selenium so searching the internet on "data-driven testing" should reveal many blogs on this topic.

.. _`Selenium RC wiki`: http://wiki.openqa.org/pages/viewpage.action?pageID=21430298

   
   
Database Validation
-------------------

Another common type of testing is to compare data in the UI against the data actually stored in the AUT's database.  Since you can also do database queries from a programming language, assuming you have database support functions, you can use them to retrieve data and then use the data to verify what's displayed by the AUT is correct.

Consider the example of a registered email address to be retrieved from a database and then later compared against the UI. An example of establishing a DB connection and retrieving data from the DB could look like this.  

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
   
This is a simple Java example of data retrieval from a database. 



.. Bitmap Comparison
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
