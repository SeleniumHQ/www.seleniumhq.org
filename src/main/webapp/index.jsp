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

  <title>Selenium web application testing system</title>
  <link rel="alternate" type="application/rss+xml" title="Selenium Blog Posts Feed" href="http://feeds.feedburner.com/Selenium" />
</head>

<body class="homepage">
  <h2>Get started with Selenium!</h2>

  <div class="bigMenu">
    <h3 id="step0">0. Watch: see the magic.</h3>

    <div>
      <center>
        <a class="video" href="movies/intro.mov" title=
        "Watch the video"><img alt="video icon" src=
        "images/intro-video-icon.png" />2 Minute Intro</a>
      </center>
    </div>

    <h3 id="step1">1. Begin: write and run tests in Firefox.</h3>

    <div>
      <a href="/projects/ide/"><img alt="Selenium IDE Logo" class=
      "icon" src="images/selenium-ide-logo.png" /></a>

      <p><strong><a href="/projects/ide/">Selenium IDE</a></strong>
      is a Firefox add-on that records clicks, typing, and other
      actions to make a test, which you can play back in the
      browser.</p>

      <ul>
        <li><a href="/download">Download Selenium IDE</a></li>

        <li><a href="/projects/ide/">Learn more</a></li>

        <li><a href="/projects/ide/">Screenshots</a></li>
      </ul>
    </div>

    <h3 id="step2">2. Customize: your language, your browser.</h3>

    <div>
      <a href="/projects/remote-control/index.html"><img alt=
      "Selenium RC Logo" class="icon" src=
      "images/selenium-rc-logo.png" /></a>

      <p><strong><a href="/projects/remote-control/">Selenium
      Remote Control (RC)</a></strong> runs your tests in <a href=
      "/about/platforms.html#browsers">multiple browsers</a> and
      <a href=
      "/about/platforms.html#operating-systems">platforms</a>.
      Tweak your tests in your <a href=
      "/about/platforms.html#programming-languages">preferred
      language</a>.</p>

      <ul>
        <li><a href="/download">Download Selenium RC</a></li>

        <li><a href="/projects/remote-control">Learn more</a></li>
      </ul>
    </div>

    <h3 id="step3">3. Deploy: scale out, speed up.</h3>

    <div>
      <a href="http://selenium-grid.openqa.org/"><img alt=
      "Selenium Grid Logo" class="icon" src=
      "images/selenium-grid-logo.png" /></a>

      <p><strong><a href=
      "http://selenium-grid.openqa.org/">Selenium Grid</a></strong>
      extends Selenium RC to distribute your tests across multiple
      servers, saving you time by running tests in parallel.</p>

      <ul>
        <li><a href=
        "http://selenium-grid.openqa.org/download.html">Download
        Selenium Grid</a></li>

        <li><a href=
        "http://selenium-grid.seleniumhq.org/how_it_works.html">Learn
        more</a></li>
      </ul>
    </div>
  </div>

  <h2>Learn Selenium</h2>

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

    <li><a href="/documentation/screencasts/">Screencasts</a></li>

    <li><a href="/documentation/tutorials">Tutorials /
    Labs</a></li>

    <li><a href="http://release.openqa.org/selenium-core/1.0/reference.html">Selenium
    API</a></li>
  </ul>

  <h2>Selenium News</h2>

  <%@include file="/news.jspf"%>
</body>
</html>
