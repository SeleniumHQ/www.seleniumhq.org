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
  "#programming-languages">programming languages and testing frameworks</a>. From Firefox to
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
    <p>Versions 7, 8, 9, 10 and 11 are supported. Version 11 requires
      <a href="https://github.com/SeleniumHQ/selenium/wiki/InternetExplorerDriver#required-configuration">additional configuration</a>.</p>
    <p>The selenium project tests each release on Windows 7.</p>
  </div>

  <div class="browser">
    <h4>Safari</h4>
    <p><a href="https://github.com/SeleniumHQ/selenium/wiki/SafariDriver">SafariDriver</a> requires Safari 5.1+ (<strong>Note</strong>, due to Apple potentially <a href="http://appleinsider.com/articles/12/07/25/apple_kills_windows_pc_support_in_safari_60">dropping support</a> > Safari 6.X for Windows, new developments in the bindings may not work in the Windows platform)</p>
  </div>
  <div class="browser">
    <h4>Opera</h4>
    <p><a href="https://github.com/operasoftware/operachromiumdriver/">OperaDriver</a> is supported by Opera Software, refer to their documentation for supported versions.</p>
  </div>
  <div class="browser">
    <h4>Chrome</h4>
    <p><a href="https://sites.google.com/a/chromium.org/chromedriver/">ChromeDriver</a> is supported by the Chromium project, please refer to their documentation for any compatibility information</p>
  </div>

  <h3><a name="operating-systems" id=
  "operating-systems"></a>Operating Systems</h3>

  <div class="OS">
    <h4>Microsoft Windows</h4>
    <p>Most versions of MS Windows that are currently still supported by Microsoft should work with Selenium. Although we currently run tests before each release against Windows 7.
    This does not mean Selenium won't attempt to support different versions of Windows. This only means we don't continually run tests on other particular version of Windows.
    </p>
  </div>

  <div class="OS">
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

  <p>Programming languages are supported through Selenium "drivers." These are libraries made for each language
  that expose commands from the <a href="/download/#client-drivers">Selenium API</a> natively in the
  form of methods/functions.</p>

  <p>Selenium is often used for automating web applications for testing purposes, but it does not include a testing framework. Some testing frameworks that can be used with Selenium are listed below.</p>

  <div class="language">
    <h4>C#</h4>
    <p>Frameworks available: <a href="http://www.nunit.org/">NUnit</a></p>
  </div>

  <div class="language">
    <h4>Haskell</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Java</h4>
    <p>Frameworks available: <a href="https://github.com/junit-team/junit">JUnit</a>, <a href="http://testng.org/doc/index.html">TestNG</a></p>
  </div>

  <div class="language">
    <h4>JavaScript</h4>
    <p>Frameworks available: <a href="https://github.com/SeleniumHQ/selenium/wiki/WebDriverJs">WebdriverJS</a>, <a href="http://webdriver.io/">WebdriverIO</a>, <a href="http://nightwatchjs.org/">NightwatchJS</a></p>
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
    <p>Frameworks available: <a href="https://github.com/Behat/en-mink.behat.org/blob/master/index.rst">Behat + Mink</a></p>
  </div>

  <div class="language">
    <h4>Python</h4>
    <p>Frameworks available: unittest, <a href="http://pyunit.sourceforge.net/">pyunit</a>, <a href="http://pytest.org/latest/">py.test</a>, <a href="http://code.google.com/p/robotframework-seleniumlibrary">robot framework</a></p>
  </div>

  <div class="language">
    <h4>R</h4>
    <p></p>
  </div>

  <div class="language">
    <h4>Ruby</h4>
    <p>Frameworks available: <a href="http://rspec.info/">RSpec</a>, Test::Unit</p>
  </div>

<%@include file="/jsp/footer.jspf"%>
</body>
</html>
