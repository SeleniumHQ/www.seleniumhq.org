<%!private String text(Element e, String name) {
    return e.getElementsByTagName(name).item(0).getFirstChild().getNodeValue();
}%>
<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://www.opensymphony.com/oscache" prefix="oscache" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="generator" content=
  "HTML Tidy (version num removed), see www.w3.org" />

  <title>Selenium - Web Browser Automation</title>
  <link rel="alternate" type="application/rss+xml" title="Selenium Blog Posts Feed" href="http://feeds.feedburner.com/Selenium" />
</head>

<body class="homepage">
  <h2>What is Selenium?</h2>
  <p><i>Selenium automates browsers</i>. That's it. What you do with that power is entirely up to you. Primarily it is for automating web applications for testing purposes, but is certainly not limited to just that. Boring web-based administration tasks can (and should!) also be automated as well.</p>
  <p>Selenium has the support of some of the largest browser vendors who have taken (or are taking) steps to make Selenium a native part of their browser. It is also the core technology in countless other browser automation tools, APIs and frameworks.</p>
  
  <h2>Which part of Selenium is appropriate for me?</h2>

  <table id="choice">
    <tbody>
      <tr>
        <td style="border-right: 1px solid #CCCCCC"><center><a href="/projects/ide/"><img alt="Selenium IDE Logo" class="icon" src="images/selenium-ide-logo.png" /></a></center><br />
If you want to
<ul>
  <li>create quick bug reproduction scripts</li>
  <li>create scripts to aid in automation-aided exploratory testing</li>
</ul>
<br />
<p>Then you want to use <a href="/projects/ide/">Selenium IDE</a>; a Firefox add-on that will do simple record-and-playback of interactions with the browser</p>
        </td>
        <td><center><a href="/projects/webdriver/"><img alt="Selenium Logo" class="icon" src="images/selenium-logo.png" /></a><a href="/projects/webdriver/"><img alt="Selenium Grid Logo" class="icon" src="images/selenium-grid-logo.png" /></a></center><br />
If you want to
<ul>
  <li>create robust, browser-based regression automation</li>
  <li>scale and distribute scripts across many environments</li>
</ul>
<br />
<p>Then you want to use <a href="/projects/webdriver/">Selenium WebDriver</a>; a collection of language specific bindings to drive a browser -- the way it is meant to be driven.</p>
<p>Selenium WebDriver is the successor of <a href="/projects/remote-control/">Selenium Remote Control</a> which has been officially deprecated. The Selenium Server (used by both WebDriver and Remote Control) now also includes built-in grid capabilities.</p>
        </td>
      </tr>
    </tbody>
  </table>
  
<!--   <h2>Learn Selenium</h2>

  <ul>
    <li><a href="/about/how.html">The Magic of Selenium: How it
    works</a></li>

    <li>Support Matrix: <a href=
    "/about/platforms.html#browsers">Browsers</a>, <a href=
    "/about/platforms.html#operating-systems">Operating
    Systems</a>, <a href=
    "/about/platforms.html#programming-languages">Programming
    Languages</a>, <a href=
    "/about/platforms.html#testing-frameworks">Testing
    Frameworks</a></li>

    <li><a href="http://release.openqa.org/selenium-core/1.0/reference.html">Selenium
    API</a></li>
  </ul> -->

  <h2>Selenium News</h2>

  <%@include file="/news.jspf"%>
</body>
</html>
