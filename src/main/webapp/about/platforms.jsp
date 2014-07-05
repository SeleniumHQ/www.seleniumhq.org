<!DOCTYPE html>
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

  <div class="browser">
    <h4>Firefox</h4>
    <p>Support for Firefox is the latest release, the previous release, the latest ESR release
    and the previous ESR release.<p>
    <p>For example Selenium 2.40.0 (released on Feb 19, 2014) supports Firefox 27, 26, 24, 17</p>
    <p>Selenium with Firefox can be run on any platform that Firefox supports for those versions,
    that also allow users to install a custom Firefox extension.</p>
  </div>
  
  <div class="browser">
    <h4>Internet Explorer</h4>
    <p>Versions 6, 7, 8, 9 and 10 are supported. 11 is currently awaiting 
      <a href="https://code.google.com/p/selenium/issues/detail?id=6511">a fix for this issue</a>.</p>
    <p>The selenium project tests each release on Windows XP, 7 and 8.</p>
  </div>

  <div class="browser">
    <h4>Safari</h4>
    <p><a href="https://code.google.com/p/selenium/wiki/SafariDriver">Safari Driver</a> requires Safari 5.1+ and only runs on OS X</p>
  </div>
  <div class="browser">
    <h4>Opera</h4>
    <p><a href="https://code.google.com/p/selenium/wiki/OperaDriver">Opera Driver</a> requires Opera 12.x and older versions</p>
  </div>
  <div class="browser">
    <h4>Chrome</h4>
    <p><a href="https://code.google.com/p/chromedriver">Chrome Driver</a> is supported by the Chromium project, please refer to their documentation for any compatibility information</p>
  </div>

  <h3><a name="operating-systems" id=
  "operating-systems"></a>Operating Systems</h3>

  <div class="OS">
    <h4>Microsoft Windows</h4>
    <p>Most versions of MS Windows that are currently still supported by Microsoft should work with Selenium. Altough here's the list of OS's we currently run tests against before each release:
    <ul>
      <li>Windows XP (to be unsupported on April 8, 2014)</li>
      <li>Windows 7</li>
      <li>Windows 8</li>
      <li>Windows 8.1</li>
    </ul>
    If your version of windows is not listed, it does not mean Selenium won't attempt to support it. That only means we don't continually run tests on that particular version of Windows.
    </p>
  </div>

  <div class"OS">
    <h4>Apple OS X</h4>
    <p>We currently do not use any version of OS X in our automated tests against the selenium project. However most developers on the project are using a recent version of OS X 
    and we'll continue to support the current stable release and often the previous release.</p>
  </div>

  <div class="OS">
    <h4>Linux</h4>
    <p>We test mainly on Ubuntu, but other variations of Linux should also work where the browser manufacturers support them.</p>
  </div>

  <h3><a name="programming-languages" id=
  "programming-languages"></a>Programming Languages &amp; Frameworks</h3>

  <p>Programming languages are supported through Selenium Remote
  Control "drivers." These are libraries made for each language
  that expose commands from the <a href=
  "/download/#client-drivers">Selenium API</a> natively in the
  form of methods/functions.</p>

  <div class="language">
    <h4>C#</h4>
    <p>Frameworks available: NUnit</p>
  </div>

  <div class="language">
    <h4>Haskell</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Java</h4>
    <p>Frameworks available: JUnit, TestNG</p>
  </div>

  <div class="language">
    <h4>JavaScript</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Objective-C</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Perl</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>PHP</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Python</h4>
    <p>Frameworks available: unittest, pyunit, <a href="http://code.google.com/p/robotframework-seleniumlibrary">robot framework</a></p>
  </div>

  <div class="language">
    <h4>R</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Ruby</h4>
    <p>Frameworks available: RSpec, Test::Unit</p>
  </div>

<%@include file="/jsp/footer.jspf"%>
</body>
</html>
