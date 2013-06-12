<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">

<html>
<head>
  <meta name="generator" content=
  "HTML Tidy (version num removed), see www.w3.org">

  <title>Platforms Supported by Selenium</title>
<%@include file="/jsp/head.jspf"%>
</head>

<body class="sectionAbout">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <h2>Platforms Supported by Selenium</h2>

  <p>We take compatibility seriously - that's why Selenium works
  with many <a href="#browsers">browsers</a>, <a href=
  "#operating-systems">operating systems</a>, <a href=
  "#programming-languages">programming languages</a>, and <a href=
  "#testing-frameworks">testing frameworks</a>. From Firefox to
  JUnit, we've got you covered.</p>

  <h3><a name="browsers" id="browsers"></a>Browsers</h3>

  <table>
    <tr>
      <th>Browser</th>

      <th>Selenium IDE</th>

      <th>Selenium Remote Control</th>

      <th>Selenium Core</th>
	  
	  <th>Selenium 2/Webdriver API</th>
    </tr>

    <tr>
      <th>Firefox 10</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 9</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 8</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 7</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 6</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 5</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>

      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 4</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 3.6</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Firefox 3</th>

      <td>Record and playback tests</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  	  
      <td>not supported</td>
    </tr>
    <tr>
      <th>IE 9</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  	  
      <td>Run tests</td>
    </tr>
    <tr>
      <th>IE 8</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>IE 7</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Safari 3</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
	  <td>not supported</td>
    </tr>

    <tr>
      <th>Safari 2</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
	  <td>not supported</td>
    </tr>

    <tr>
      <th>Opera 9</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>

    <tr>
      <th>Opera 8</th>

      <td>not supported</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
      <td>Run tests</td>
    </tr>
  
    <tr>
      <th>Chrome</th>

      <td>not supported</td>

      <td>Start browser, run tests***</td>

      <td>Run tests***</td>
	  
      <td>Run tests***</td>
    </tr>

    <tr>
      <th>Others</th>

      <td>not supported</td>

      <td>Partial support possible*</td>

      <td>Run tests**</td>
	  
	  <td>not supported</td>
    </tr>
  </table>

  <p class="remark">* Selenium Remote Control server can start any
  executable, but depending on browser security settings, there may
  be technical limitations that would limit certain features.</p>

  <p class="remark">** Selenium Core is written in Javascript so it
  should work (in theory) on most browsers with decent Javascript
  support. Some operations are only possible via Selenium Remote
  Control because of browser security settings.</p>

  <p class="remark">*** Chrome is supported in collaboration with 
  the Chromium team. See 
  <a href="https://code.google.com/p/selenium/wiki/ChromeDriver">
  this website</a> for more information on Chromedriver.
  </p>

  <h3><a name="operating-systems" id=
  "operating-systems"></a>Operating Systems</h3>

  <table>
    <tr>
      <th>OS</th>

      <th>Selenium IDE</th>

      <th>Selenium Remote Control</th>

      <th>Selenium Core</th>
	  
	  <th>Selenium 2/Webdriver API</th>
    </tr>

    <tr>
      <th>Windows</th>

      <td>Works in Firefox 2+</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
	  <td>Run tests</td>
    </tr>

    <tr>
      <th>OS X</th>

      <td>Works in Firefox 2+</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
	  <td>Run tests</td>
    </tr>

    <tr>
      <th>Linux</th>

      <td>Works in Firefox 2+</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
	  <td>Run tests</td>
    </tr>

    <tr>
      <th>Solaris</th>

      <td>Works in Firefox 2+</td>

      <td>Start browser, run tests</td>

      <td>Run tests</td>
	  
	  <td>Run tests</td>
    </tr>

    <tr>
      <th>Others</th>

      <td>Should work in Firefox 2+</td>

      <td>Start browser, run tests*</td>

      <td>Run tests**</td>
	  
	  <td>Run tests</td>
    </tr>
  </table>

  <p class="remark">* Selenium Remote Control server is written in
  Java, so it may run on other systems as well, as long as there's
  a supported web browser available.</p>

  <p class="remark">** Selenium Core is written in Javascript so it
  should work (in theory) on most browsers with decent Javascript
  support. Some operations are only possible via Selenium Remote
  Control because of browser security settings.</p>

  <h3><a name="programming-languages" id=
  "programming-languages"></a>Programming Languages</h3>

  <p>Programming languages are supported through Selenium Remote
  Control "drivers." These are libraries made for each language
  that expose commands from the <a href=
  "/download/#client-drivers">Selenium API</a> natively in the
  form of methods/functions.</p>

  <table>
    <tr>
      <th>Language</th>

      <th>Selenium IDE</th>

      <th>Selenium Remote Control</th>

      <th>Selenium Core</th>
	  
	  <th>Selenium 2/Webdriver API</th>
    </tr>

    <tr>
      <th>C#</th>

      <td>Generate code</td>

      <td>Library ("driver") support</td>

      <td>n/a</td>
	  
	  <td>Library ("driver") support</td>
    </tr>

    <tr>
      <th>Java</th>

      <td>Generate code</td>

      <td>Library ("driver") support</td>

      <td>n/a</td>
	  
	  <td>Library ("driver") support</td>
    </tr>

    <tr>
      <th>Perl</th>

      <td>Generate code</td>

      <td>Library ("driver") support</td>

      <td>n/a</td>
	  
	  <td>not supported**</td>
    </tr>

    <tr>
      <th>PHP</th>

      <td>Generate code</td>

      <td>Library ("driver") support</td>

      <td>n/a</td>
	  
	  <td>not supported**</td>
    </tr>

    <tr>
      <th>Python</th>

      <td>Generate code</td>

      <td>Library ("driver") support</td>

      <td>n/a</td>
	  
	  <td>Library ("driver") support</td>
    </tr>

    <tr>
      <th>Ruby</th>

      <td>Generate code</td>

      <td>Library ("driver") support</td>

      <td>n/a</td>
	  
	  <td>Library ("driver") support</td>
    </tr>

    <tr>
      <th>Others</th>

      <td>Generate custom code*</td>

      <td>Commands via HTTP requests**</td>

      <td>n/a</td>
	  
	  <td>not supported**</td>
    </tr>
  </table>

  <p class="remark">* You can actually set up a custom code
  generator to output to any language. The templates are written in
  Javascript, but they just output text.</p>

  <p class="remark">** Any language that can make an HTTP call can
  pass commands to the Selenium Remote Control server. Languages
  listed here have a wrapper library made already.</p>

  <h3><a name="testing-frameworks" id=
  "testing-frameworks"></a>Testing Frameworks</h3>

  <p>Testing frameworks aren't required, but they can be helpful if
  you want to automate your tests.</p>

  <table>
    <tr>
      <th>Framework</th>

      <th>Selenium IDE</th>

      <th>Selenium Remote Control</th>

      <th>Selenium Core</th>
    </tr>

    <tr>
      <th>Bromine</th>

      <td>Comes with template to add to IDE</td>

      <td>Manipulate browser, check assertions via custom
      driver</td>

      <td>Special support**</td>
    </tr>

    <tr>
      <th>JUnit</th>

      <td>Out-of-the-box code generation</td>

      <td>Manipulate browser, check assertions via Java driver</td>

      <td>n/a</td>
    </tr>

    <tr>
      <th>NUnit</th>

      <td>Out-of-the-box code generation</td>

      <td>Manipulate browser, check assertions via .NET driver</td>

      <td>n/a</td>
    </tr>

    <tr>
      <th>RSpec (Ruby)</th>

      <td>Custom code generation template*</td>

      <td>Manipulate browser, check assertions via Ruby driver</td>

      <td>n/a</td>
    </tr>

    <tr>
      <th>Test::Unit (Ruby)</th>

      <td>Out-of-the-box code generation</td>

      <td>Manipulate browser, check assertions via Ruby driver</td>

      <td>n/a</td>
    </tr>

    <tr>
      <th>TestNG (Java)</th>

      <td>Custom code generation template*</td>

      <td>Manipulate browser, check assertions via Java driver</td>

      <td>n/a</td>
    </tr>

    <tr>
      <th>unittest (Python)</th>

      <td>Out-of-the-box code generation</td>

      <td>Manipulate browser, check assertions via Python
      driver</td>

      <td>n/a</td>
    </tr>

    <tr>
      <th>Others</th>

      <td>Custom code generation template*</td>

      <td>Manipulate browser, check assertions via HTTP
      requests***</td>

      <td>n/a</td>
    </tr>
    
    <tr>
      <th><a href="http://code.google.com/p/robotframework-seleniumlibrary">Robot Framework SeleniumLibrary</a></th>
      <td>n/a</td>
      <td>Utilizes the Python driver</td>
      <td>n/a</td>
    </tr>

    <tr>
      <th><a href="http://www.infostretch.com/QA/selenium-framework.php">ISFW</a></th>
      <td>Out-of-the-box code generation****</td>
      <td>Manipulate browser, check assertions via  Java  driver, also works with webdriver/remote webdriver, Grid2, Sauce on demand </td>
      <td>n/a</td>
    </tr>
    <tr>
      <th><a href="http://www.w3qa.eu">Hermes</a></th>
      <td>Comes with template to add to IDE</td>
      <td>Manipulate browser, check assertions via Java driver. Full integration with Selenium GRID and Saucelabs infrastructure</td>
      <td>n/a</td>
    </tr>
  </table>

  <p class="remark">* Built-in code generation creates code
  specifically for the "out-of-the-box" frameworks, but you can
  modify the Javascript-based templates to output any kind of code
  you want.</p>

  <p class="remark">** Bromine is built specifically for Selenium
  and it directly supports both Selenium Core and Selenium Remote
  Control. The other testing frameworks use Selenium Remote Control
  drivers for testing.</p>

  <p class="remark">*** Using the appropriate driver (or HTTP
  commands), you can manipulate and test the browser using any
  testing framework by calling commands like "click" or
  "isElementPresent." Selenium Remote Control just deals with the
  commands and doesn't care about what actually calls those
  commands.</p>

  <p class="remark">**** Selenium <a href="http://blog.infostretch.com/?p=1106">IDE Plug-in for InfoStretch Framework</a> includes a formatter for <a href="http://blog.infostretch.com/806">ISFW</a> as well as a bunch of other extensions.</p>

<%@include file="/jsp/footer.jspf"%>
</body>
</html>
