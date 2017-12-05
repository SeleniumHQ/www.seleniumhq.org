<!DOCTYPE html>
<html>
<head>

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
  "http://selenium-release.storage.googleapis.com/index.html">previous releases</a>, <a href="https://github.com/SeleniumHQ/selenium">source
  code</a>, and additional information for <a href=
  "/download/maven.html">Maven users</a> (Maven is a popular Java build
  tool).</p>

  <h3>Selenium Standalone Server</h3>
  <p>The Selenium Server is needed in order to run Remote Selenium WebDriver. Selenium 3.X is no longer capable of running Selenium RC directly, rather it does it through emulation and the WebDriverBackedSelenium interface.</p>
  <p>Download version <a href="https://goo.gl/hvDPsK">3.8.1</>
  <!-- use goo.gl to make the minified link, this allows anyone to view the statistics at: https://goo.gl/#analytics/goo.gl/<hash>/all_time -->
  </p>
  <p>To run Selenium tests exported from IDE, use the <a href="https://goo.gl/864Q7m">Selenium Html Runner</a>.</p>
  <p>To use the Selenium Server in a Grid configuration <a href="https://github.com/SeleniumHQ/selenium/wiki/Grid2">see the wiki page</a>.</p>

  <h3>The Internet Explorer Driver Server</h3>
  <p>This is required if you want to make use of the latest and greatest
  features of the WebDriver InternetExplorerDriver. Please make sure that this
  is available on your $PATH (or %PATH% on Windows) in order for the IE Driver
  to work as expected.</p>
  <p>Download version 3.8.0 for (recommended) <a
    href="https://goo.gl/PsZBFs">32 bit Windows IE</a> or <a
    href="https://goo.gl/afA7P4">64 bit Windows IE</a><br/>
    <a href="http://goo.gl/LJ07LL">CHANGELOG</a></p>

  <a name="client-drivers"/>
  <h3>Selenium Client & WebDriver Language Bindings</h3>
  <p>In order to create scripts that interact with the Selenium Server (Selenium RC, Selenium Remote WebDriver) or create local Selenium WebDriver scripts, you need to make use of language-specific client drivers. These languages include both 1.x and 2.x style clients.</p>
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
        <td>3.8.1</td>
        <td>2017-12-01</td>
        <td><a href="https://goo.gl/xNhNrP">Download</a>&nbsp;&nbsp;</td>
        <td><a href="http://goo.gl/5IVvjZ">Change log</a>&nbsp;&nbsp;</td>
        <td><a href="http://goo.gl/Grc6tm" alt="Javadoc">Javadoc</a></td>
      </tr>
      <tr>
        <td>C#</td>
        <td>3.8.0</td>
        <td>2017-12-01</td>
        <td><a href="https://goo.gl/1ux6yL">Download</a></td>
        <td><a href="http://goo.gl/t3faSQ">Change log</a></td>
        <td><a href="http://goo.gl/uutZjZ">API docs</a></td>
      </tr>
      <tr>
        <td>Ruby</td>
        <td>3.8.0</td>
        <td>2017-12-01</td>
        <td><a href="http://rubygems.org/gems/selenium-webdriver">Download</a></td>
        <td><a href="http://goo.gl/zNfSLK">Change log</a></td>
        <td><a href="http://goo.gl/jzh4RU">API docs</a></td>
      </tr>
      <tr>
        <td>Python</td>
        <td>3.8.0</td>
        <td>2017-11-30</td>
        <td><a href="http://pypi.python.org/pypi/selenium">Download</a></td>
        <td><a href="http://goo.gl/rHRdgk">Change log</a></td>
        <td><a href="http://goo.gl/sG1GfQ">API docs</a></td>
      </tr>
      <tr>
        <td>Javascript (Node)</td>
        <td>3.6.0</td>
        <td>2017-10-06</td>
        <td><a href="https://npmjs.org/package/selenium-webdriver">Download</a></td>
        <td><a href="http://goo.gl/e6smYw">Change log</a></td>
        <td><a href="http://goo.gl/hohAut">API docs</a></td>
      </tr>
    </tbody>
  </table>
  <h4>C# NuGet</h4>
  <p>NuGet latest release is 3.8.0, Released on 2017-12-01</p>
  <ul>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.WebDriver">WebDriver</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.WebDriverBackedSelenium">WebDriverBackedSelenium</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.Support">Support</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.RC">RC</a> (Final version 3.1.0 Released 2017-02-16)</li>
  </ul>

  <h3>SafariDriver - DEPRECATED - use Apple's SafariDriver with Safari 10+</h3>
  <p>SafariDriver now requires manual installation of the extension prior to automation</p>
  <ul>
    <li>Latest release <a href="http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz">2.48.0</a></li>
    <li><a href="https://github.com/SeleniumHQ/selenium/wiki/SafariDriver">Wiki Page</a></li>
  </ul>

  <a name="selenium_ide"/>
  <h3>Selenium IDE</h3>
  <p>Selenium IDE is a Firefox plugin which records and plays back user interactions with the browser. Use this to either create simple scripts or assist in exploratory testing. It can also export Remote Control or WebDriver scripts, though they tend to be somewhat brittle and should be overhauled into some sort of Page Object-y structure for any kind of resiliency.</p>
  <p>Download latest released version <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide/">from addons.mozilla.org</a> or view the <a href="https://github.com/SeleniumHQ/selenium/wiki/SeIDE-Release-Notes">Release Notes</a> and then <a href="#side_plugins">install some plugins</a>.</p>
  <p>Download <a href="http://release.seleniumhq.org/selenium-ide/">previous versions here</a>.</p>

  <hr/>

  <h3>Third Party Drivers, Bindings, and Plugins</h3>

  <p>
      Selenium can be extended through the use of plugins.  Here are a number of
      plugins created and maintained by third parties.  For more information on
      how to create your own plugin or have it listed, consult the docs.
  </p>

  <p>
      Please note that these plugins are not supported, maintained, hosted, or
      endorsed by the Selenium project.  In addition, be advised that the plugins
      listed below are not necessarily licensed under the Apache License v.2.0.
      Some of the plugins are available under another free and open source
      software license; others are only available under a proprietary license.
      Any questions about plugins and their license of distribution need to be
      raised with their respective developer(s).
  </p>


  <a name="thirdPartyDrivers"></a>
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
	    <td><a href="https://github.com/mozilla/geckodriver/">Mozilla GeckoDriver</a></td>
	    <td><a href="https://github.com/mozilla/geckodriver/releases">0.19.0</a>&nbsp;&nbsp;</td>
	    <td><a href="https://github.com/mozilla/geckodriver/blob/release/CHANGES.md">change log</a>&nbsp;&nbsp;</td>
	    <td><a href="https://github.com/mozilla/geckodriver/issues">issue tracker</a>&nbsp;&nbsp;</td>
	    <td><a href="https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver/status">Implementation Status</a></td>
	    <td>Released 2017-09-16</td>
      </tr>
      <tr>
        <td><a href="https://sites.google.com/a/chromium.org/chromedriver/">Google Chrome Driver</a></td>
        <td><a href="http://chromedriver.storage.googleapis.com/index.html?path=2.33/">2.33</a>&nbsp;&nbsp;</td>
        <td><a href="http://chromedriver.storage.googleapis.com/2.33/notes.txt">change log</a>&nbsp;&nbsp;</td>
        <td><a href="https://bugs.chromium.org/p/chromedriver/issues/list">issue tracker</a>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver">selenium wiki page</a>&nbsp;&nbsp;</td>
        <td>Released 2017-10-03</td>
      </tr>
      <tr>
        <td><a href="http://choice.opera.com/developer/tools/operadriver/">Opera</a></td>
        <td><a href="https://github.com/operasoftware/operachromiumdriver/releases">2.29</a></td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/operasoftware/operachromiumdriver/issues">issue tracker</a></td>
        <td><a href="https://github.com/SeleniumHQ/selenium/wiki/OperaDriver">selenium wiki page</a></td>
        <td>Released 2017-06-27</td>
      </tr>
      <tr>
        <td><a href="https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/">Microsoft Edge Driver</a></td>
        <td colspan=2>&nbsp;</td>
        <td><a href="https://developer.microsoft.com/en-us/microsoft-edge/platform/issues/">issue tracker</a></td>
        <td><a href="https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/webdriver-commands/">Implementation Status</a></td>
      </tr>
      <tr>
        <td><a href="https://github.com/detro/ghostdriver">GhostDriver</a></td>
        <td>(PhantomJS)</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/detro/ghostdriver/issues">issue tracker</a></td>
        <td><a href="http://www.youtube.com/watch?v=wqxkKIC2HDY">SeConf talk</a></td>
      </tr>
      <tr>
        <td><a href="https://github.com/seleniumhq/htmlunit-driver">HtmlUnitDriver</a></td>
        <td><a href="https://github.com/SeleniumHQ/htmlunit-driver/releases">2.28.1</a></td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/seleniumhq/htmlunit-driver/issues">issue tracker</a></td>
	    <td>&nbsp;&nbsp;</td>
	    <td>Released 2017-11-19</td>
      </tr>
      <tr>
        <td><a href="https://webkit.org/blog/6900/webdriver-support-in-safari-10/">SafariDriver</a></td>
        <td colspan=2>&nbsp;</td>
        <td><a href="https://bugreport.apple.com/">issue tracker</a></td>
      </tr>
      <tr>
        <td><a href="https://github.com/forcedotcom/windowsphonedriver/">Windows Phone</a></td>
        <td>&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/forcedotcom/windowsphonedriver/issues">issue tracker</a>&nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td><a href="http://winphonewebdriver.codeplex.com/">Windows Phone</a></td>
        <td><a href="http://winphonewebdriver.codeplex.com/downloads/get/761780">4.14.028.10</a>&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;</td>
        <td><a href="http://winphonewebdriver.codeplex.com/workitem/list/basic">issue tracker</a>&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;</td>
        <td>Released 2013-11-23</td>
      </tr>
      <tr>
        <td><a href="http://selendroid.io/">Selendroid</a> - Selenium for Android</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/selendroid/selendroid/issues">issue tracker</a></td>
      </tr>
      <tr>
        <td><a href="http://ios-driver.github.io/ios-driver/">ios-driver</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/ios-driver/ios-driver/issues">issue tracker</a></td>
      </tr>
      <tr>
        <td><a href="http://devblog.blackberry.com/2014/02/selenium-support-in-blackberry-10/">BlackBerry 10</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="https://www.blackberry.com/jira/">issue tracker</a></td>
        <td>&nbsp;</td>
        <td>Released 2014-01-28</td>
      </tr>
      <tr>
        <td><a href="http://appium.io/">Appium</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/appium/appium/issues">issue tracker</a></td>
      </tr>
      <tr>
        <td><a href="https://github.com/crosswalk-project/crosswalk-web-driver">CrossWalk</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="https://crosswalk-project.org/jira">issue tracker</a></td>
        <td>&nbsp;</td>
        <td>Released 2014-05-05</td>
      </tr>
      <tr>
        <td><a href="https://github.com/cisco-open-source/qtwebdriver">QtWebDriver</a></td>
        <td><a href="https://github.com/cisco-open-source/qtwebdriver/releases/tag/WebDriver-cisco-cmt-1.3.1">1.3.1</a>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/cisco-open-source/qtwebdriver/releases">change log</a>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/cisco-open-source/qtwebdriver/issues">issue tracker</a>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/cisco-open-source/qtwebdriver/wiki">wiki page</a>&nbsp;&nbsp;</td>
        <td>Released 2015-06-17</td>
      </tr>
      <tr>
        <td><a href="https://github.com/MachinePublishers/jBrowserDriver">jBrowserDriver</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/MachinePublishers/jBrowserDriver/issues">issue tracker</a></td>
      </tr>
      <tr>
        <td><a href="https://github.com/2gis/Winium.Desktop" title="Selenium Remote WebDriver implementation for automated testing of Windows desktop apps">Winium.Desktop</a></td>
        <td><a href="https://github.com/2gis/Winium.Desktop/releases/latest">latest</a></td>
        <td><a href="https://github.com/2gis/Winium.Desktop/releases">change log</a></td>
        <td><a href="https://github.com/2gis/Winium.Desktop/issues">issue tracker</a></td>
        <td>
          <a href="https://github.com/2gis/Winium.Desktop/wiki">wiki</a>,<br>
          <a href="https://github.com/2gis/Winium/wiki/Presentations">talks &amp; demos</a>
        </td>
      </tr>
      <tr>
        <td><a href="https://github.com/2gis/Winium.StoreApps" title="Selenium Remote WebDriver implementation for automated testing of native Windows Store apps, tested on Windows Phone emulators">Winium.StoreApps</a></td>
        <td><a href="https://github.com/2gis/Winium.StoreApps/releases/latest">latest</a></td>
        <td><a href="https://github.com/2gis/Winium.StoreApps/releases">change log</a></td>
        <td><a href="https://github.com/2gis/Winium.StoreApps/issues">issue tracker</a></td>
        <td>
          <a href="https://github.com/2gis/Winium.StoreApps/wiki">wiki</a>,<br>
          <a href="https://github.com/2gis/Winium/wiki/Presentations">talks &amp; demos</a>
        </td>
      </tr>
      <tr>
        <td><a href="https://github.com/2gis/Winium.StoreApps.CodedUi" title="Selenium Remote WebDriver implementation for automated testing of native and hybrid apps, tested on Windows Phone emulators and devices">Winium.StoreApps.CodedUi</a> (Early stage WIP)</td>
        <td><a href="https://github.com/2gis/Winium.StoreApps.CodedUi/releases">latest</a></td>
        <td></td>
        <td><a href="https://github.com/2gis/Winium.StoreApps.CodedUi/issues">issue tracker</a></td>
        <td>
          <a href="https://github.com/2gis/Winium/wiki/Presentations">talks &amp; demos</a>
        </td>
      </tr>
    </tbody>
  </table>
  <a name="thirdPartyLanguageBindings"/>
  <h4>Third Party Language Bindings <span class="unsupported">NOT DEVELOPED</span> by seleniumhq</h4>
  <ul class="thirdPartyBinding">
    <li><a href="https://github.com/aivaturi/Selenium-Remote-Driver">Perl</a> <a href="https://metacpan.org/module/Selenium::Remote::Driver">download and docs</a> by Gordon Child</li>
    <li><a href="https://github.com/azawawi/perl6-selenium-webdriver">Perl 6</a> by Ahmad M. Zawawi</li>
    <li><a href="https://github.com/chibimagic/WebDriver-PHP/">PHP</a> by Chibimagic (real name unknown?)</li>
    <li><a href="http://code.google.com/p/php-webdriver-bindings/">PHP</a> by Lukasz Kolczynski <!-- appologies for not being able to do the UTF-8 proper encoding of your name --></li>
    <li><a href="https://github.com/facebook/php-webdriver">PHP</a> by facebook</li>
    <li><a href="https://github.com/Element-34/php-webdriver">PHP</a> by Adam Goucher</li>
    <li><a href="https://github.com/Nearsoft/PHP-SeleniumClient">PHP</a> by Nearsoft</li>
    <li><a href="http://hackage.haskell.org/package/webdriver">Haskell</a> by Adam Curtis</li>
    <li><a href="https://github.com/appium/selenium-objective-c">Objective-C</a> by Dan Cuellar</li>
    <li><a href="https://github.com/admc/wd">Javascript</a> by Adam Christian</li>
    <li><a href="https://github.com/jlipps/yiewd">Javascript</a> by Jonathan Lipps</li>
    <li><a href="http://webdriver.io">Javascript</a> by Camilo Tapia, Vincent Voyer and Christian Bromann</li>
    <li><a href="https://theintern.github.io/leadfoot/">JavaScript</a> Leadfoot by SitePen</li>
    <li><a href="https://github.com/johndharrison/RSelenium">R</a> by John Harrison</li>
    <li><a href="https://github.com/google/webdriver.dart">Dart</a> by Marc Fisher</li>
    <li><a href="http://caiusproject.com/">Tcl</a> by Tobias Koch</li>
    <li><a href="https://github.com/nathanjohnson320/exselenium">Elixir</a> by Nathan Johnson</li>
  </ul>

  <h3>Selenium GRID Plugins</h3>
  <p>Selenium grid can be extended by extending Java classes.</p>

  <div class="plugin">
    <div class="name">Move mouse away from screen</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://github.com/AutomatedTester/speedy-gonzales-proxy">Proxy extension for Grid and the Node</a> - <a href="https://github.com/AutomatedTester/speedy-gonzales-servlette">Servlet to move the mouse on the NODE</a></td></tr>
        <tr><th>Author:</th><td><a href="http://www.theautomatedtester.co.uk/">David Burns</a></td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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

  <div class="plugin">
    <div class="name">VisGrid-UI for Selenium Grid 2.0</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://codoid.com/visgrid/">VisGrid-UI for Selenium Grid 2.0</a></td></tr>
        <tr><th>Author:</th><td><a href="http://www.codoid.com">Codoid</a></td></tr>
        <tr><th>License:</th><td>Apache License/Free</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>2014</td></tr>
        <tr><th>Version:</th><td>1.0</td></tr>
      </table>
    </div>
    <p class="description">VisGrid is a GUI for Selenium Grid. You can start hub, create and attach a Selenium node very easily and quickly.</p>
  </div>

  <a name="side_plugins"/>
  <h3>Selenium IDE Plugins</h3>
  <p>Selenium IDE can be extended through its own plugin system. Here are a number of plugins that have been created using it. For more information on how to create your own plugin or have it listed, see the <a href="http://seleniumhq.org/projects/ide/plugins.html">plugin tutorial page</a>.</p>
  <p>Please note that these are not supported by the Selenium project and all issues need to be raised with the relevant developers.</p>
  
  <h3>Selenium IDE Plugins (that provide new / improved features)</h3>

  <div class="plugin">
    <div class="name">Favorites</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/favorites-selenium-ide/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/04/07/favorites-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Other</td></tr>
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
    <div class="name">Flow Control</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/85794/">Download</a> - <a href="https://github.com/davehunt/selenium-ide-flowcontrol/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://seleniumexamples.com/blog/">Dave Hunt</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">Highlight Elements</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/228386/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/07/27/highlight-elements-plugin-v1-2-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <p class="description">This plugin allows Selenium IDE to automatically wait until the element is found before executing each command using a locator. It is equivalent to the implicit wait function available with Selenium 2 WebDrivers. It avoids having to insert waitForElementPresent before click, type, select..., and provides a command to deal with AJAX processing status. For more information, see the <a href="http://code.google.com/p/selenium-implicit-wait">project page</a>.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Log Search Bar</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/210844/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/08/02/log-search-bar-plugin-for-selenium-ide/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">Page Coverage</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/page-coverage-selenium-ide/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2012/01/16/page-coverage-v1-0-for-selenium-ide-now-available/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">Power Debugger</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/255245/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/11/15/the-power-debugger-plugin-v1-0-for-selenium-ide-released/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">ScreenShot on Fail</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/screenshot-on-fail-selenium/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2012/02/20/screenshot-on-fail-v1-0-for-selenium-ide-now-available/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">SelBlocks</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-sel-blocks/versions/">Download</a> - <a href="http://refactoror.wikia.com/wiki/Selblocks_Reference">Docs</a> - <a href="https://github.com/refactoror/SelBlocks/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://refactoror.net/">Chris Noe</a></td></tr>
        <tr><th>License:</th><td>Mozilla Public License</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>February 8, 2013</td></tr>
        <tr><th>Version:</th><td>2.0</td></tr>
      </table>
    </div>
    <p class="description">This plugin is a language extension for Selenium IDE that provides javascript-like conditionals, looping, callable functions, error catching, and JSON/XML driven parameterization.</p>
  </div>

  <div class="plugin">
    <div class="name">SelBench</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-selbench/versions/">Download</a> - <a href="http://refactoror.wikia.com/wiki/SelBench_Reference">Docs</a> - <a href="https://github.com/refactoror/SelBench/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://refactoror.net/">Chris Noe</a></td></tr>
        <tr><th>License:</th><td>Mozilla Public License</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>March 8, 2014</td></tr>
        <tr><th>Version:</th><td>1.0.1</td></tr>
      </table>
    </div>
    <p class="description">This plugin provides utilities for testing, validating, and benchmarking Selenium IDE scripts. This is especially useful for instrumenting scripts that are used to test Selenium IDE extensions.</p>
  </div>

  <div class="plugin">
    <div class="name">Selenium Expert</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/268716/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2010/12/28/the-selenium-expert-is-here/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">Stored Variables Viewer</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/stored-variables-viewer-seleni/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2012/07/30/stored-variables-plugin-v1-21-for-selenium-ide-released/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>July 30, 2012</td></tr>
        <tr><th>Version:</th><td>1.21</td></tr>
      </table>
    </div>
    <p class="description">This plugin for Selenium-IDE to allows you to view and delete the stored variables within Selenium IDE using an easy to use user interface. Stored variables are created using the store, storeText, storeExpression and other similar store* commands. This plugin allows you to view these variables when the test is running. <a href="http://blog.reallysimplethoughts.com/2012/07/30/stored-variables-plugin-v1-21-for-selenium-ide-released/">More info</a>.</p>
  </div>

  <div class="plugin">
    <div class="name">Test Results</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/test-results-selenium-ide/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/10/08/test-results-v1-0-for-selenium-ide-now-available/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">Test Suite Batch Converter</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/197691/">Download</a> - <a href="http://blog.reallysimplethoughts.com/2011/01/11/test-suite-batch-converter-plugin-v1-5-released/#respond">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://blog.reallysimplethoughts.com">Samit Badle</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
  
  <!-- Add-on for reading a CSV File in Selenium IDE-->
  <div class="plugin">
    <div class="name">CSV File Reader</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="http://openselenium.com/">Info</a> - <a href="http://openselenium.com/wp-content/uploads/2014/10/CSVRead_Selenium-IDE.js">Download</a></td></tr>
        <tr><th>Author:</th><td>Abhishek Jain</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2014</td></tr>
      </table>
    </div>
    <p class="description">Simple add-on to read a CSV file in Selenium IDE for data driven testing.</p>
  </div> 
  <!-- End of CSV file read add-on-->
  
  <h3>SeLite</h3>
  <p><a href="http://selite.github.io/">SeLite</a> is a family of extensions that improve Selenium IDE. It
    <ul>
        <li>enables user scripts to be more effective</li>
        <li>enhances development environment</li>
        <li>facilitates team work.</li>
    </ul>
    See <a href="http://selite.github.io/#benefits">benefits in detail</a> and <a href="http://selite.github.io/SeleniumIDE">productivity tips</a>. It also enables database-driven navigation with <a href="http://www.sqlite.org/">SQLite</a> (the <a href="http://www.sqlite.org/mostdeployed.html">most widely deployed</a> SQL database).
  </p>
  <p>
    Its code is managed on GitHub: <a href="https://github.com/SeLite/SeLite">github.com/SeLite/SeLite</a> and <a href="https://github.com/SeLite/SelBlocksGlobal">github.com/SeLite/SelBlocksGlobal</a>.
  </p>
  <strong>Download</strong>
  <p>
    For the easiest download get all components in <a href="https://addons.mozilla.org/en-US/firefox/addon/selite/">one package</a> and <a href="#Favorites">Favorites (Selenium IDE)</a>.
  </p>
  <p>
    For alternative downloads and source code choose <a href="http://selite.github.io/Components">the components</a>.
  </p>


  <div class="plugin">
    <a name="selite-autocheck"/>
    <div class="name">SeLite AutoCheck</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-auto-check/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="http://selite.github.io/AutoCheck">Docs</a> - <a href="http://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>July 2014</td></tr>
      </table>
    </div>
    <p class="description">It runs template-based, customisable or fully custom validation of the tested website after every Selenese step. It records server errors etc.</p>
  </div>

  <div class="plugin">
    <a name="selite-bootstrap"/>
    <div class="name">SeLite Bootstrap</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-bootstrap/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="http://selite.github.io/Bootstrap">Docs</a> - <a href="http://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2012</td></tr>
      </table>
    </div>
    <p class="description">It allows smoother development of Selenium Core extensions (saved as standalone files). It reloads them automatically on change.</p>
  </div>

  <div class="plugin">
    <a name="selite-commands"/>
    <div class="name">SeLite Clipboard And Indent</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-clipboard-and-indent/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="http://selite.github.io/SeleniumIDE#clipboard-and-indent">Docs</a> - <a href="http://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>February 2015</td></tr>
      </table>
    </div>
    <p class="description">It accepts Selenese commands/comments from another Selenium IDE instance. It enables indentation of Selenese commands/comments, so they form blocks.</p>
  </div>

  <div class="plugin">
    <a name="selite-commands"/>
    <div class="name">SeLite Commands</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-commands/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/ExtraCommands">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2011</td></tr>
      </table>
    </div>
    <p class="description">It provides practical Selenese commands, for example for entering/selecting random input values.</p>
  </div>

  <div class="plugin">
    <a name="selite-db-objects"/>
    <div class="name">SeLite DB Objects</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-db-objects/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>May 2013</td></tr>
      </table>
    </div>
    <p class="description">It provides mid-level objects for accessing test data in SQLite. Test frameworks can describe a schema and access the data as objects with little need for writing SQL.</p>
  </div>

  <div class="plugin">
    <a name="selite-exit-confirmation-checker"/>
    <div class="name">SeLite Exit Confirmation Checker</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-exit-confirmation-check/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/ExitConfirmationChecker">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>June 2014</td></tr>
      </table>
    </div>
    <p class="description"> It's beneficial if your web application uses <i>window.onbeforeunload</i> to get confirmation when the user tries to leave an unsubmitted form etc. This extension helps to validate that the confirmation shows up exactly when it should. It can also validate custom behaviour.</p>
  </div>

  <div class="plugin">
    <a name="selite-extension-sequencer"/>
    <div class="name">SeLite Extension Sequencer</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-extension-sequencer/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/ExtensionSequencer">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>September 2013</td></tr>
      </table>
    </div>
    <p class="description">It allows user Core or IDE extensions of Selenium IDE to declare dependancy on other extensions (and optionally which versions). It validates all dependancies. It loads all those extensions in the correct order.</p>
  </div>

  <div class="plugin">
    <a name="selite-hands-on-gui"/>
    <div class="name">SeLite Hands-on GUI</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-hands-on-gui/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/SeleniumIDE#hands-on-gui">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>February 2015</td></tr>
      </table>
    </div>
    <p class="description">
        It enables 'in place' editing of commands/comments in Selenium IDE. It adds key shortcuts.<br/><br/>
        <b>Urgent note</b><br/>
        This productivity add-on is affected by Firefox defect <a href='https://bugzilla.mozilla.org/show_bug.cgi?id=1247476'>"tree.inputField's type as autocomplete fails"</a>. Vote for that bug, please.<br/><br/>
        Your vote is essential. Otherwise Mozilla may take years to fix it. Please, also vote for other <a href="http://selite.github.io/ThirdPartyIssues">third party issues</a>.
    </p>
  </div>

  <div class="plugin">
    <div class="name">SeLite  Miscellaneous</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-miscellaneous/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>May 2013</td></tr>
      </table>
    </div>
    <p class="description">It provides miscellaneous internal components for various parts of SeLite group of extensions.</p>
  </div>

  <div class="plugin">
    <div class="name">SeLite  Preview</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-preview/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/Preview">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2016</td></tr>
      </table>
    </div>
    <p class="description">It enables user scripts to present data for reporting, confirmation, selection or data entry. Presentation layer is in HTML, optionally benefiting from client-side templating, such as <a href="https://github.com/pure/pure">PURE</a>. Together with <a href="#selite-selblocks-global">SelBlocks Global</a> it allows user scripts to run interactively. </p>
  </div>

  <div class="plugin">
    <a name="selite-run-all-favorites"/>
    <div class="name">SeLite  Run All Favorites</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-run-all-favorites/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Mozilla Public License 1.1</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>September 2014</td></tr>
      </table>
    </div>
    <p class="description">It runs a sequence of all test suites marked as favorites in <a href="#Favorites">Favorites (Selenium IDE)</a>. It supports team work: it facilitates export/import of favorites by representing them relative to user's home folder.</p>
  </div>
  
  <div class="plugin">
    <a name="selite-selblocks-global"/>
    <div class="name">SeLite  SelBlocks Global</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-selblocks-global/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/SelBlocksGlobal">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://refactoror.net/">Chris Noe</a>, Peter Kehl</td></tr>
        <tr><th>License:</th><td>Mozilla Public License 1.1</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2011</td></tr>
      </table>
    </div>
    <p class="description">It's an enhanced version of SelBlocks. It allows to call functions (formerly: scripts) across the test cases (within the same test suite). It also provides <a href="https://selite.github.io/EnhancedSyntax">EnhancedSyntax</a>, which supports more expressive tests.</p>
  </div>

  <div class="plugin">
    <a name="selite-settings"/>
    <div class="name">SeLite Settings</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-settings/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/Settings">Docs</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>GNU LGPL 3 for API; GNU GPL 3 for GUI</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2013</td></tr>
      </table>
    </div>
    <p class="description">It allows definition of custom configuration schemas (modules), consisting of single-valued and multi-valued fields, either free-type or choice lists.
    </p>
    <p class="description"> It facilitates team work through sharing of chosen parts of configuration in manifest files. Users can override parts of the shared configuration through manifest files or visual interface. They can have multiple sets of preferences and they can choose between them when running the scripts.</p>
  </div>

  <div class="plugin">
    <div class="name">SeLite SQLite Connection Manager</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-sqlite-connection-mg/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>LGPL 3</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2013</td></tr>
      </table>
    </div>
    <p class="description">It manages SQLite DB connection(s). It can be used with other extensions from SeLite family, or on its own.</p>
  </div>

  <div class="plugin">
    <div class="name">SeLite TestCase Debug Context</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-testcase-debug-conte/">Info</a> - <a href="http://selite.github.io/Components">Download</a> - <a href="https://selite.github.io/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2013</td></tr>
      </table>
    </div>
    <p class="description">It's needed by <a href="#selite-selblocks-global">SelBlocks Global</a>.</p>
  </div>
  <!-- End of SeLite add-ons -->

  <h3>Selenium IDE Plugins (that provide import / export / language support)</h3>

  <div class="plugin">
    <div class="name">Grails Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="http://addons.seleniumhq.org/grails-formatters/grails-formatters-1.0.xpi">Download</a> - <a href="https://github.com/robfletcher/selenium-ide-grails-formats/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://adhockery.blogspot.com">Robert Fletcher</a></td></tr>
        <tr><th>License:</th><td>Unknown</td></tr>
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
    <div class="name">Perl Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-perl-formatter/">Download</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-ide-perl-formatter/">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://logician.eu">Nate Broderick</a></td></tr>
        <tr><th>License:</th><td>MPLv1.1</td></tr>
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
        <tr><th>License:</th><td>GPLv3</td></tr>
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
    <div class="name">Selenium Dot Formatter</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-dot-formatter">Download</a> - <a href="https://github.com/EmidioStani/selenium-dot-formatter">Docs</a> - <a href="https://github.com/EmidioStani/selenium-dot-formatter/issues">Support</a></td></tr>
        <tr><th>Author:</th><td>Emidio STANI</td></tr>
        <tr><th>License:</th><td>BSD License</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>December 20, 2011</td></tr>
        <tr><th>Version:</th><td>1.0.1</td></tr>
      </table>
    </div>
    <p class="description">The Selenium Dot Formatter allows to convert Selenium test into a dot format to be easily used in Graphviz, it could be useful to explain the structure of a test case.

The tests are direct graphs with forks when the gotoIf command is used. Basic commands have their own color which can be modified, optionally the arrows can have a number as label.</p>
  </div>
  
  <div class="plugin">
    <div class="name">Selenium XML Formatter</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-xml-formatter/">Download</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-xml-formatter/">Docs</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-xml-formatter/">Support</a></td></tr>
        <tr><th>Author:</th><td>Thibault ROHMER</td></tr>
        <tr><th>License:</th><td>BSD License</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>January 9, 2011</td></tr>
        <tr><th>Version:</th><td>1.5</td></tr>
      </table>
    </div>
    <p class="description">Selenium XML Formatter is a custom XML Formatter for Selenium-IDE.
Compliant with Selenium command &amp; comment syntax, this formatter output data in a very common language. This way, you can easily parse the test case in your favorite programming language. </p>
  </div>
  
  <div class="plugin">
    <div class="name">Selenium Wiki Formatter</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium-wiki-formatter">Download</a> - <a href="https://github.com/EmidioStani/selenium-wiki-formatter">Docs</a> - <a href="https://github.com/EmidioStani/selenium-wiki-formatter/issues">Support</a></td></tr>
        <tr><th>Author:</th><td>Emidio STANI</td></tr>
        <tr><th>License:</th><td>BSD License</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>March 12, 2011</td></tr>
        <tr><th>Version:</th><td>1.0.1</td></tr>
      </table>
    </div>
    <p class="description">Selenium Wiki Formatter is an extension which allows to format a test case recorded with Selenium IDE in a wiki table.
Supported wiki syntax: Confluence, Dokuwiki, MediaWiki, MoinMoin, Textile, Trac, Twiki, Xwiki</p>
  </div>
  
  <div class="plugin">
    <div class="name">Selenium2Excel Converter</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selenium2excel-converter/">Download</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selenium2excel-converter/">Docs</a> - <a href="https://sourceforge.net/p/selenium2excel/tickets/">Support</a></td></tr>
        <tr><th>Author:</th><td>Shankar Laggishetti</td></tr>
        <tr><th>License:</th><td>MPLv2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Released:</th><td>January 7, 2014</td></tr>
        <tr><th>Version:</th><td>1.0.1</td></tr>
      </table>
    </div>
    <p class="description">Selenium2Excel Converter is a tool to convert your selenese scripts to Excel format.
With the help of the this plug-in users can easily convert the recorded script into Excel file.
Selenium2Excel Converter is very useful when automating the selenium scripts in Keyword driven or Hybrid driven framework.
To use this plug-in users need to have Microsoft Excel installed and it only works on Windows.</p>
  </div>
    
  <div class="plugin">
    <div class="name">Separated Values Formatter</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/separated-values-formatter/">Download</a> - <a href="https://github.com/davehunt/selenium-ide-separated-values-formatter/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://seleniumexamples.com/blog/">Dave Hunt</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>MPLv1.1</td></tr>
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

  <div class="plugin">
    <div class="name">WebDriver Backed Formatters</div>
    <div class="column">
      <table>
        <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/85793/">Download</a> - <a href="https://github.com/davehunt/selenium-ide-webdriver-backed-formatters/issues">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://seleniumexamples.com/blog/">Dave Hunt</a> (Selenium IDE Maintainer)</td></tr>
        <tr><th>License:</th><td>MPLv1.1</td></tr>
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

<%@include file="/jsp/footer.jspf"%>
</body>
</html>
