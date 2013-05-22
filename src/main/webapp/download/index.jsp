<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">

<html>
<head>
  <meta name="generator" content=
  "HTML Tidy (version num removed), see www.w3.org">

  <title>Downloads</title>
<%@include file="/jsp/head.jspf"%>
  <style>
    .plugin {
      margin-top:5px;
    }
    .plugin .name {
      border-bottom:1px solid #ddd;
      font-weight:bold;
    }
    .plugin .column {
      width:50%;
      float:left;
    }
    .plugin th {
      font-weight:normal;
    }
    .plugin .description {
      clear:both;
      color:#444;
    }
    #release_announcements ul { float: left; }
    #release_announcements li { width:250px; }
    ul.thirdPartyBinding { list-style-type: none; padding: 0; }
    span.unsupported { color: red; }
  </style>
</head>

<body class="sectionDownload">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <h2>Downloads</h2>
  <p>Below is where you can find the latest releases of all the
  Selenium components. You can also find a list of <a href=
  "/download/previous.html">previous releases</a>, <a href="/download/source.html">source
  code</a>, and additional information for <a href=
  "/download/maven.html">Maven users</a> (Maven is a popular Java build
  tool).</p>

  
  <h3>Selenium IDE</h3>
  <p>Selenium IDE is a Firefox plugin that does record-and-playback of interactions with the browser. Use this to either create simple scripts, assist in exploratory testing. It can also export Remote Control or WebDriver scripts, though they tend to be somewhat brittle and should be overhauled into some sort of Page Object-y structure for any kind of resiliency.</p>
  <p>Download latest released version <a href="http://release.seleniumhq.org/selenium-ide/2.0.0/selenium-ide-2.0.0.xpi">2.0.0</a> released on 26/April/2013 or view the <a href="http://code.google.com/p/selenium/wiki/SeIDEReleaseNotes">Release Notes</a></p>
  <p>Download version under development <a href="http://ci.seleniumhq.org:8080/job/IDE/lastSuccessfulBuild/artifact/selenium-trunk/build/ide/selenium-ide-multi.xpi">unreleased</a></p>

  <h3>Selenium Server (formerly the Selenium RC Server)</h3>
  <p>The Selenium Server is needed in order to run either Selenium RC style scripts or Remote Selenium Webdriver ones. The 2.x server is a drop-in replacement for the old Selenium RC server and is designed to be backwards compatible with your existing infrastructure.</p>
  <p>Download version <a
    href="http://selenium.googlecode.com/files/selenium-server-standalone-2.33.0.jar">2.33.0</a>
  </p>
  <p>To use the Selenium Server in a Grid configuration <a href="http://code.google.com/p/selenium/wiki/Grid2">see the wiki page</a>.</p>

  <h3>The Internet Explorer Driver Server</h3>
  <p>This is required if you want to make use of the latest and greatest
  features of the WebDriver InternetExplorerDriver. Please make sure that this
  is available on your $PATH (or %PATH% on Windows) in order for the IE Driver
  to work as expected.</p>
  <p>Download version 2.33.0 for (recommended) <a
    href="http://code.google.com/p/selenium/downloads/detail?name=IEDriverServer_Win32_2.33.0.zip">32
    bit Windows IE</a> or <a
    href="http://code.google.com/p/selenium/downloads/detail?name=IEDriverServer_x64_2.33.0.zip">64 bit Windows IE</a></p>

  <a name="client-drivers"/>
  <h3>Selenium Client & WebDriver Language Bindings</h3>
  <p>In order to create scripts that interact with the Selenium Server (Selenium RC, Selenium Remote Webdriver) or create local Selenium WebDriver script you need to make use of language-specific client drivers. These languages include both 1.x and 2.x style clients.</p>
  <p>While language bindings for <a href="#thirdPartyLanguageBindings">other languages exist</a>, these are the core ones that are supported by the main project hosted on google code.</p>

  <table>
    <thead>
      <tr>
        <th>Language</th>
        <th>Client Version</th>
        <th>Release Date</th>
        <th>&nbsp;</th>
        <th>&nbsp;</th>
        <th>&nbsp;</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Java</td>
        <td>2.33.0</td>
        <td>2013-05-22</td>
        <td><a href="http://selenium.googlecode.com/files/selenium-java-2.33.0.zip">Download</a>&nbsp;&nbsp;</td>
        <td><a href="http://selenium.googlecode.com/git/java/CHANGELOG">Change log</a>&nbsp;&nbsp;</td>
        <td><a href="http://selenium.googlecode.com/git/docs/api/java/index.html" alt="Javadoc">Javadoc</a></td>
      </tr>
      <tr>
        <td>C#</td>
        <td>2.33.0</td>
        <td>2013-05-22</td>
        <td><a href="http://selenium.googlecode.com/files/selenium-dotnet-2.33.0.zip">Download</a></td>
        <td><a href="http://selenium.googlecode.com/git/dotnet/CHANGELOG">Change log</a></td>
        <td><a href="http://selenium.googlecode.com/git/docs/api/dotnet/index.html">API docs</a></td>
      </tr>
      <tr>
        <td>Ruby</td>
        <td>2.32.0</td>
        <td>2013-04-09</td>
        <td><a href="http://rubygems.org/gems/selenium-webdriver">Download</a></td>
        <td><a href="http://selenium.googlecode.com/git/rb/CHANGES">Change log</a></td>
        <td><a href="http://selenium.googlecode.com/git/docs/api/rb/index.html">API docs</a></td>
      </tr>
      <tr>
        <td>Python</td>
        <td>2.33.0</td>
        <td>2013-05-22</td>
        <td><a href="http://pypi.python.org/pypi/selenium">Download</a></td>
        <td><a href="http://selenium.googlecode.com/git/py/CHANGES">Change log</a></td>
        <td><a href="http://selenium.googlecode.com/git/docs/api/py/index.html">API docs</a></td>
      </tr>
    </tbody>
  </table>
  <h4>C# NuGet</h4>
  <p>NuGet latest release is 2.33.0, Released on 2013-05-22</p>
  <ul>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.RC">RC</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.WebDriver">WebDriver</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.WebDriverBackedSelenium">WebDriverBackedSelenium</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.Support">Support</a></li>
  </ul>
  <h4>Mobile Devices<h4>
  <ul>
    <li><a href="http://selenium.googlecode.com/files/android-server-2.21.0.apk">Android 2.21.0</a> <a href="http://code.google.com/p/selenium/wiki/AndroidDriver">wiki</a></li>
    <li>iOS <a href="http://code.google.com/p/selenium/wiki/IPhoneDriver">wiki</a></li>
  </ul>
  <h4>Third Party Browser Drivers <span class="unsupported">NOT DEVELOPED</span> by seleniumhq</h4>
  <table>
    <thead>
      <th>Browser</th>
      <th>&nbsp;</th>
      <th>&nbsp;</th>
      <th>&nbsp;</th>
      <th>&nbsp;</th>
      <th>&nbsp;</th>
    </thead>
    <tbody>
      <tr>
        <td><a href="http://code.google.com/p/chromedriver/">Chrome</a></td>
        <td><a href="http://code.google.com/p/chromedriver/downloads/list">download page</a>&nbsp;&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="http://code.google.com/p/chromedriver/issues/list">issue tracker</a>&nbsp;&nbsp;</td>
        <td><a href="http://code.google.com/p/selenium/wiki/ChromeDriver">selenium wiki page</a>&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td><a href="http://www.opera.com/developer/tools/operadriver/">Opera</td>
        <td><a href="http://selenium.googlecode.com/git/third_party/java/opera-driver/operadriver-1.3.jar">1.3</a></td>
        <td><a href="https://raw.github.com/operasoftware/operadriver/master/CHANGES">change log</a>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/operasoftware/operadriver/issues">issue tracker</a></td>
        <td><a href="http://code.google.com/p/selenium/wiki/OperaDriver">selenium wiki page</a></td>
        <td>Released 2012-10-09</td>
      </tr>
      <tr>
        <td><a href="https://github.com/detro/ghostdriver">GhostDriver</a></td>
        <td>(PhantomJS)</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/detro/ghostdriver/issues">issue tracker</a></td>
        <td><a href="http://www.youtube.com/watch?v=wqxkKIC2HDY">SeConf talk</a></td>
      </tr>
    </tbody>
  </table>
  <a name="thirdPartyLanguageBindings"/>
  <h4>Third Party Language Bindings <span class="unsupported">NOT DEVELOPED</span> by seleniumhq</h4>
  <ul class="thirdPartyBinding">
    <li><a href="https://github.com/aivaturi/Selenium-Remote-Driver">Perl</a> <a href="https://metacpan.org/module/Selenium::Remote::Driver">download and docs</a> by Gordon Child</li>
    <li><a href="https://github.com/chibimagic/WebDriver-PHP/">PHP</a> by Chibimagic (real name unknown?)</li>
    <li><a href="http://code.google.com/p/php-webdriver-bindings/">PHP</a> by Lukasz Kolczynski <!-- appologies for not being able to do the UTF-8 proper encoding of your name --></li>
    <li><a href="https://github.com/facebook/php-webdriver">PHP</a> by facebook</li>
    <li><a href="https://github.com/Element-34/php-webdriver">PHP</a> by Adam Goucher (SeHQ recommended php client)</li>
    <li><a href="https://github.com/Nearsoft/PHP-SeleniumClient">PHP</a> by Nearsoft</li>
    <li><a href="http://hackage.haskell.org/package/webdriver">Haskell</a> by Adam Curtis</li>
    <li><a href="https://github.com/appium/selenium-objective-c">Objective-C</a> by Dan Cuellar</li>
  </ul>

  <h3>Selenium GRID Plugins</h3>
  <p>Selenium grid can be extended by extending Java classes.</p>

  <div class="plugin">
    <div class="name">Move mouse away from screen</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://github.com/AutomatedTester/speedy-gonzales-proxy">Proxy extension for Grid and the Node</a> - <a href="https://github.com/AutomatedTester/speedy-gonzales-servlette">Servlet to move the mouse on the NODE</a></td></tr>
        <tr><th>Author:</th><td><a href="http://www.theautomatedtester.co.uk/">David Burns</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>2012</td></tr>
        <tr><th>Version:</th><td>N/A</td></tr>
      </table>
    </div>
    <p class="description">This plugin is made of 2 parts, a servlet that lives on the NODE machine and does the actual moving of the mouse, and an extension of the Selenium Grid, to send an HTTP request to the servlet before a new test session is started.</p>
  </div>

  <h3>Selenium IDE Plugins</h3>
  <p>Selenium IDE can be extended through its own plugin system. Here are a number of plugins that have been created using it. For more information on how to create your own plugin or have it listed, see the <a href="http://seleniumhq.org/projects/ide/plugins.html">plugin tutorial page</a>.</p>
  <p>Please note that these are not supported by the Selenium project and all issues need to be raised with the relevant developers</p>

  <div class="plugin">
    <div class="name">ScreenShot on Fail</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/screenshot-on-fail-selenium/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2012/02/20/screenshot-on-fail-v1-0-for-selenium-ide-now-available/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>February 20, 2012</td></tr>
        <tr><th>Version:</th><td>1.5</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE automatically takes a screen-shot when a command fails while running the test suite. <a href="http://blog.reallysimplethoughts.com/2012/02/20/screenshot-on-fail-v1-0-for-selenium-ide-now-available/">More info</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Favorites</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/favorites-selenium-ide/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/04/07/favorites-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>April 7, 2011</td></tr>
        <tr><th>Version:</th><td>1.14</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE gives you a way to mark your favorite test suites and open and execute them with a SINGLE click. <a href="http://blog.reallysimplethoughts.com/2011/04/07/favorites-for-selenium-ide/">More info</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Page Coverage</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/page-coverage-selenium-ide/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2012/01/16/page-coverage-v1-0-for-selenium-ide-now-available/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>January 16, 2012</td></tr>
        <tr><th>Version:</th><td>1.7</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE generates page coverage reports highlighting areas of a web page touched by the Selenese test cases / test suites. <a href="http://blog.reallysimplethoughts.com/2012/01/16/page-coverage-v1-0-for-selenium-ide-now-available/">More info</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Test Results</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/test-results-selenium-ide/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/10/08/test-results-v1-0-for-selenium-ide-now-available/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>October 8, 2011</td></tr>
        <tr><th>Version:</th><td>1.10</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE saves the results of the test execution for the test suite and included test cases with a single click. It also allows you to export the test results for individual test cases. <a href="http://blog.reallysimplethoughts.com/2011/10/08/test-results-v1-0-for-selenium-ide-now-available/">More info</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Implicit Wait</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-implicit-wait/">Download</a> - <a href="http://code.google.com/p/selenium-implicit-wait/">Support</a></td></tr>
        <tr><th>Author:</th><td>Florent Breheret</td></tr>
        <tr><th>License:</th><td>Apache 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>February 20, 2012</td></tr>
        <tr><th>Version:</th><td>1.0.20</td></tr>
      </table>
    </div>
    <p class="description">This plugin allows Selenium IDE to automatically wait until the element is found before executing each command using a locator. It is equivalent to the implicit wait function available with Selenium 2 WebDrivers. It avoids having to insert waitForElementPresent before click, type, select..., and provides a command to deal with AJAX processing status. For ore information, see the <a href="http://code.google.com/p/selenium-implicit-wait">project page</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Perl Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-perl-formatter/">Download</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-perl-formatter/">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://logician.eu">Nate Broderick</a></td></tr>
        <tr><th>License:</th><td>Apache 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>January 3, 2012</td></tr>
        <tr><th>Version:</th><td>1.0.3</td></tr>
      </table>
    </div>
    <p class="description">A plugin for Selenium-IDE that bundles the Perl formatters that used to be included in Se-IDE.</p>
  </div>

  <div class="plugin">
    <div class="name">PHP Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-php-formatters/">Download</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-php-formatters/">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://logician.eu">Dan Chan</a></td></tr>
        <tr><th>License:</th><td>Apache 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>October 12, 2011</td></tr>
        <tr><th>Version:</th><td>1.3.0</td></tr>
      </table>
    </div>
    <p class="description">A plugin for Selenium-IDE that bundles the PHP formatters that used to be included in Se-IDE.</p>
  </div>

  <div class="plugin">
    <div class="name">Play! framework</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="http://manuelbernhardt.github.com/play-selenium-plugin/">Download</a> - <a href="http://manuelbernhardt.github.com/play-selenium-plugin/">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://logician.eu">Manuel Bernhardt</a></td></tr>
        <tr><th>License:</th><td>Apache 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>June 28, 2011</td></tr>
        <tr><th>Version:</th><td>1.3</td></tr>
      </table>
    </div>
    <p class="description">A plugin for Selenium-IDE that adds support for the simplified markup
    used by the <a href="http://www.playframework.org">Play! framework</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Highlight Elements</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/228386/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/07/27/highlight-elements-plugin-v1-2-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>August 3, 2010</td></tr>
        <tr><th>Version:</th><td>1.2</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE highlights elements specified in the Selenese commands on the web page as the test case is executed. Once this plugin is installed, a Highlight elements button will be available on the Selenium-IDE main window and Sidebar. <a href="http://blog.reallysimplethoughts.com/2011/07/27/highlight-elements-plugin-v1-2-for-selenium-ide">More info</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Test Suite Batch Converter</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/197691/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/01/11/test-suite-batch-converter-plugin-v1-5-released/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>January 13, 2011</td></tr>
        <tr><th>Version:</th><td>1.5</td></tr>
      </table>
    </div>
    <p class="description">A plugin for Selenium-IDE to convert one or more test suites, including their test cases, from the html format to any other format supported by the Selenium-IDE. <a href="http://blog.reallysimplethoughts.com/2011/01/11/test-suite-batch-converter-plugin-v1-5-released/">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Selenium Expert</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/268716/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/12/28/the-selenium-expert-is-here/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>May 3, 2011</td></tr>
        <tr><th>Version:</th><td>0.2</td></tr>
      </table>
    </div>
    <p class="description">This plugin is my attempt to bring the wonderful world of inspections, tips, hints, fixes and refactoring to Selenese! The Selenium Expert goes through your selenium test cases suggesting improvements, giving tips and even lets you apply them with a single click. Recently, Selenium IDE has brought a some improvements that will break some test scripts. The good news is that most of the essential breaking changes introduced in Selenium IDE 1.0.10 have been incorporated into the Selenium Expert. This should make your migration task a few clicks affair. <a href="http://blog.reallysimplethoughts.com/2010/12/28/the-selenium-expert-is-here/">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Power Debugger</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/255245/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/11/15/the-power-debugger-plugin-v1-0-for-selenium-ide-released/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>November 15, 2010</td></tr>
        <tr><th>Version:</th><td>1.0</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE improves debugging and troubleshooting issues with scripts. This plugin adds the pause on fail tool to the Selenium IDE toolbar. When pause on fail is turned on, Selenium IDE would pause the execution of the test case when there is an error or a command failure, allowing you to troubleshoot the problem. <a href="http://blog.reallysimplethoughts.com/2010/11/15/the-power-debugger-plugin-v1-0-for-selenium-ide-released/">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Flex Pilot X</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="http://github.com/downloads/admc/flex-pilot-x/flex-pilot-x-0.8.0.xpi">Download</a> - <a href="https://github.com/admc/flex-pilot-x/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://github.com/admc/">Adam Christian</a></td></tr>
        <tr><th>License:</th><td>Apache 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>August 28, 2010</td></tr>
        <tr><th>Version:</th><td>0.8.0</td></tr>
      </table>
    </div>
    <p class="description">A Selenium IDE plugin for integrating with Flex-Pilot, for Flex automation. <a href="http://github.com/admc/flex-pilot-x">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">File Logging</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/177844/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/08/16/file-logging-extension-for-selenium-ide-v1-6-released/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>August 18, 2010</td></tr>
        <tr><th>Version:</th><td>1.7</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE saves log messages to a file in real time at a user selectable log level. Once this plugin is installed, a FileLogging tab will be added to the options dialog and a FileLogging menu will be added to the log pane. <a href="http://blog.reallysimplethoughts.com/2010/08/16/file-logging-extension-for-selenium-ide-v1-6-released/">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Log Search Bar</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/210844/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/08/02/log-search-bar-plugin-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>August 2, 2010</td></tr>
        <tr><th>Version:</th><td>1.1</td></tr>
      </table>
    </div>
    <p class="description">A plugin for Selenium-IDE to show a find toolbar in the log pane making it easy to search the displayed log messages. Once this plugin is installed, the log pane will be changed to contain the find toolbar similar to the one found in the Firefox browser. <a href="http://blog.reallysimplethoughts.com/2010/08/02/log-search-bar-plugin-for-selenium-ide/">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Stored Variables Viewer</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/189780/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/07/01/the-stored-variables-viewer-plugin-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>September 28, 2010</td></tr>
        <tr><th>Version:</th><td>1.3</td></tr>
      </table>
    </div>
    <p class="description">A plugin for Selenium-IDE to view the stored variables within Selenium IDE. Stored variables are created using the store, storeText, storeExpression and other similar store* commands. This plugin allows you to view these variables when the test is running. <a href="http://blog.reallysimplethoughts.com/2010/07/01/the-stored-variables-viewer-plugin-for-selenium-ide/">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Grails Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="http://addons.seleniumhq.org/grails-formatters/grails-formatters-1.0.xpi">Download</a> - <a href="https://github.com/robfletcher/selenium-ide-grails-formats/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://adhockery.blogspot.com">Robert Fletcher</a></td></tr>
        <tr><th>License:</th><td>Unknown/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>June 15, 2010</td></tr>
        <tr><th>Version:</th><td>1.0</td></tr>
      </table>
    </div>
    <p class="description">Adds Grails Formatters. <a href="http://adhockery.blogspot.com/2010/06/export-selenium-ide-scripts-for-grails.html">More info</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">FlexMonkium</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="http://www.gorillalogic.com/flexmonkium">Download</a> - <a href="http://www.gorillalogic.com/forums/flexmonkium">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://www.gorillalogic.com">Gorrila Logic</a></td></tr>
        <tr><th>License:</th><td>GPL</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>January 6, 2011</td></tr>
        <tr><th>Version:</th><td>4.1.5</td></tr>
      </table>
    </div>
    <p class="description">A plugin that adds Adobe Flex recording and playback to Selenium via the popular <a href="http://www.gorillalogic.com/flexmonkey">FlexMonkey</a> open source testing framework. With FlexMonkium, Flex recording and playback is seamlessly interleaved with native Selenium recording and playback so you can easily automate the testing of hybrid web applications that mix html and Javascript with Flex. In addition to creating and running Flex tests inside the Selenium IDE, you can export your hybrid testing scripts as JUnit 4 tests that run with Selenium-RC to easily enable automated testing and continuous integration.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Flow Control</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/85794/">Download</a> - <a href="https://github.com/davehunt/selenium-ide-flowcontrol/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://seleniumexamples.com/blog/">Dave Hunt</a></td></tr>
        <tr><th>License:</th><td>Apache</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>February 24, 2010</td></tr>
        <tr><th>Version:</th><td>1.0.3</td></tr>
      </table>
    </div>
    <p class="description">Incorporates the flow control extension available <a href="http://wiki.openqa.org/display/SEL/flowControl">here</a> and <a href="http://51elliot.blogspot.com/2008/02/selenium-ide-goto.html">here</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">WebDriver Backed Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/85793/">Download</a> - <a href="https://github.com/davehunt/selenium-ide-webdriver-backed-formatters/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://seleniumexamples.com/blog/">Dave Hunt</a></td></tr>
        <tr><th>License:</th><td>Mozilla Public License</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>July 7, 2011</td></tr>
        <tr><th>Version:</th><td>1.0.4</td></tr>
      </table>
    </div>
    <p class="description">Adds WebDriver backed Selenium formatters, which allows users to take advantage of WebDriver without having to modify their tests to use the new API.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Separated Values Formatter</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/separated-values-formatter/">Download</a> - <a href="https://github.com/davehunt/selenium-ide-separated-values-formatter/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://seleniumexamples.com/blog/">Dave Hunt</a></td></tr>
        <tr><th>License:</th><td>Apache</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>February 21, 2011</td></tr>
        <tr><th>Version:</th><td>1.0.0</td></tr>
      </table>
    </div>
    <p class="description">Adds a simple reversible formatter to Selenium IDE. Useful for sharing test commands via copy/paste.</p>
  </div>

<%@include file="/jsp/footer.jspf"%>
</body>
</html>
