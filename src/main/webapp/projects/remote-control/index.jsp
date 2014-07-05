<!DOCTYPE html>
<html><title>Selenium Remote-Control</title>
<%@include file="/jsp/head.jspf"%>
</head>
<body class="sectionProjects">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
<p><b>Selenium Remote Control</b> (RC) is a test tool that allows you to write automated web application UI tests in any programming language against any
HTTP website using any mainstream JavaScript-enabled browser. </p>
<p>Selenium RC comes in two parts.&nbsp;</p>
<ol>
  <li>A server which
    automatically launches and kills browsers, and acts as a
    HTTP proxy for web requests from them.</li>
  <li>Client libraries for your favorite computer language.</li>
</ol>
<p>Here is a simplified architectural representation....</p>
<p><img style="width: 538px; height: 525px;" alt="rc arch diagram" src="/selenium-rc.png"><br>
</p>
<p>Selenium Remote Control is great for testing complex AJAX-based web user interfaces
  under a Continuous Integration system.  It is also an ideal solution for users of
  Selenium IDE who want to write tests in a more
  expressive programming language than the Selenese HTML table format.</p>
<p>Read More about Selenium Remote-Control in <a href="/docs/05_selenium_rc.jsp">our documentation</a></p>
<%@include file="/jsp/footer.jspf"%>
</html>
