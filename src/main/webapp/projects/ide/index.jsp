<!DOCTYPE html>
<html>
<head>
<title>Selenium IDE</title>
<%@include file="/jsp/head.jspf"%>
</head>
<body class="sectionProjects">
<%@include file="/jsp/header.jspf"%><div id="mainContent">

<table border="0">
<tr>
<td valign="top">
  <p>
  <b>Selenium IDE</b> is an integrated development environment for Selenium scripts. It is implemented as a Chrome and Firefox extension, and allows you to record, edit, and debug tests.
  </p>
  <p>
  Selenium IDE is not only a recording tool: <b>it is a complete IDE</b>. You can choose to use its recording capability, or you may edit your scripts by hand. With autocomplete support and the ability to move commands around quickly, Selenium IDE is the ideal environment for creating Selenium tests no matter what style of tests you prefer.
  </p>
  <p>
  <h3>Features:</h3>
  <ul>
    <li>Easy record and playback</li>
    <li>Intelligent field selection will use IDs, names, or XPath as needed</li>
    <li>Autocomplete for all common Selenium commands</li>
    <li>Walk through tests</li>
    <li>Debug and set breakpoints</li>
    <li>All in one project file, containing all test cases and suites</li>
  </ul>
  </p>
  <p>
  Selenium IDE has plugin support. For details, see the <a href="https://github.com/SeleniumHQ/selenium-ide/wiki/Getting-Started-with-Plugins">Getting Started with Plugins</a> project wiki page.
  </p>
</td>
<td valign="top">
  <img width="400" src="selenium-ide.png"/>
</td>
</tr>
</table>

<script>
var downloadLinks = document.querySelectorAll("a[href='/download/']");
for (var i=0; i< downloadLinks.length; i++) {
  downloadLinks[i].href = '/download/#selenium_ide';
}
</script>

<%@include file="/jsp/footer.jspf"%>
</body>
</html>

