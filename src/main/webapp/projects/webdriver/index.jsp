<!DOCTYPE html>
<html>
<head>
  <title>
    Selenium WebDriver
  </title>
<%@include file="/jsp/head.jspf"%>
</head>
<body class="sectionProjects">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <h2>Selenium WebDriver</h2>
  <p>The biggest change in Selenium recently has been the inclusion of the WebDriver API. Driving a browser natively <i>as a user would</i> either locally or on a remote machine using the Selenium Server it marks a leap forward in terms of browser automation.</p>
  <p>Selenium WebDriver fits in the same role as RC did, and has incorporated the original 1.x bindings. It refers to both the language bindings and the implementations of the individual browser controlling code. This is commonly referred to as just "WebDriver" or sometimes as Selenium 2.</p>
  <i> Selenium 1.0 + WebDriver = Selenium 2.0 </i>
<ul>
<li>WebDriver is designed in a simpler and more concise programming interface along with addressing some limitations in the Selenium-RC API.</li>
<li>WebDriver is a compact Object Oriented API when compared to Selenium1.0</li>
<li>It drives the browser much more effectively and overcomes the limitations of Selenium 1.x which affected our functional test coverage, like the file upload or download, pop-ups and dialogs barrier</li>
<li>WebDriver overcomes the limitation of Selenium Rc's <a href="http://en.wikipedia.org/wiki/Same_origin_policy">Single Host origin policy</a></li>
</ul>
<p>WebDriver is the name of the key interface against which tests should be written in Java, the implementing classes one should use are listed as below:</p>
<p>
<a title="class in org.openqa.selenium.android" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/android/AndroidDriver.html">AndroidDriver</a>,
<a title="class in org.openqa.selenium.chrome" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/chrome/ChromeDriver.html">ChromeDriver</a>,
<a title="class in org.openqa.selenium.support.events" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/support/events/EventFiringWebDriver.html">EventFiringWebDriver</a>,
<a title="class in org.openqa.selenium.firefox" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/firefox/FirefoxDriver.html">FirefoxDriver</a>,
<a title="class in org.openqa.selenium.htmlunit" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/htmlunit/HtmlUnitDriver.html">HtmlUnitDriver</a>,
<a title="class in org.openqa.selenium.ie" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/ie/InternetExplorerDriver.html">InternetExplorerDriver</a>,
<a title="class in org.openqa.selenium.phantomjs" href="https://github.com/detro/ghostdriver/blob/master/binding/java/src/main/java/org/openqa/selenium/phantomjs/PhantomJSDriver.java">PhantomJSDriver</a>,
<a title="class in org.openqa.selenium.remote" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html">RemoteWebDriver</a>,
<a title="class in org.openqa.selenium.safari" href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/safari/SafariDriver.html">SafariDriver</a>
</p>

<p>For More information on Selenium WebDriver, please see <a href="http://seleniumhq.org/docs/03_webdriver.html">the documentation</a> and <a href="http://seleniumhq.org/docs/appendix_migrating_from_rc_to_webdriver.html">Remote Control to WebDriver Migration Notes</a>.</p>
 
</body>
<%@include file="/jsp/footer.jspf"%>
</html>
