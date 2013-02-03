<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Stale Element Reference Exception</title>
<%@include file="/jsp/head.jspf"%>
</head>
<body>
<%@include file="/jsp/header.jspf"%><div id="mainContent">
<h1>Stale Element Reference Exception</h1>
    
<p>You have probably been directed to this page because you've seen a StaleElementReferenceException in your tests.</p>
    
<h2>Common Causes</h2>

<p>A stale element reference exception is thrown in one of two cases, the first being more common than the second:</p>

<ul>
<li>The element has been deleted entirely.</li>
<li>The element is no longer attached to the DOM.</li>
</ul>

<h3>The Element has been Deleted</h3>

<p>The most frequent cause of this is that page that the element was part of has been refreshed, or the user has navigated away to another page. A less common, but still common cause is where a JS library has deleted an element and replaced it with one with the same ID or attributes. In this case, although the replacement elements may look identical they are different; the driver has no way to determine that the replacements are actually what's expected.</p>

<p>If the element has been replaced with an identical one, a useful strategy is to look up the element again. If you do this automatically, be aware that you may well be opening your tests to a race condition and potential flakiness. For example, given the code:</p>

<pre class="code">
WebElement element = driver.findElement(By.id("example"));
String text = element.getText();
</pre>

<p>If "element.getText" returns before the element is removed from the DOM you'll get one result. If, however, the element is removed from the DOM and your code does an automatic lookup for the element again before "element.getText" a different result may be returned.</p>

<p>Should you wish to head down this route, the simplest hook point is to call <a href="http://selenium.googlecode.com/git/docs/api/java/org/openqa/selenium/remote/RemoteWebDriver.html#setElementConverter(org.openqa.selenium.remote.internal.JsonToWebElementConverter)">setElementConverter</a>.

<h3>The Element is not Attached to the DOM</h3>

<p>A common technique used for simulating a tabbed UI in a web app is to prepare DIVs for each tab, but only attach one at a time, storing the rest in variables. In this case, it's entirely possible that your code might have a reference to an element that is no longer attached to the DOM (that is, that has an ancestor which is &quot;document.documentElement&quot;).</p>

If WebDriver throws a stale element exception in this case, even though the element still exists, the reference is lost. You should discard the current reference you hold and replace it, possibly by locating the element again once it is attached to the DOM.</p>

<h2>Edge Cases</h2>

<ul>
<li>The element changes type, but keeps the same locator sematics (JQuery and others)</li>
</ul>

<h3>The element changes type, but keeps the same locator sematics (JQuery and others)</h3>

<p>Watermarked fields in JQuery change from a regular input to a password field as they get focus. The first end-user key press arrives in the password variant.  Refer to pwField2 in <a href="http://regression-tests.seleniumhq.org/issues/2915.groovy">this example</a></p>
<%@include file="/jsp/footer.jspf"%>
</body>        
</html>
