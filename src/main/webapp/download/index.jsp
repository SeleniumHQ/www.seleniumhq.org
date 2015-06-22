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
  "https://code.google.com/p/selenium/downloads/list?can=1&q=">previous releases</a>, <a href="/download/source.html">source
  code</a>, and additional information for <a href=
  "/download/maven.html">Maven users</a> (Maven is a popular Java build
  tool).</p>

  <h3>Selenium Standalone Server</h3>
  <p>The Selenium Server is needed in order to run either Selenium RC style scripts or Remote Selenium WebDriver ones. The 2.x server is a drop-in replacement for the old Selenium RC server and is designed to be backwards compatible with your existing infrastructure.</p>
  <p>Download version <a href="http://goo.gl/cvntq5">2.46.0</a>
  <!-- minified link maintained by lukeis to try to track download counts. please talk to him for updating this link or to get the current download count. -->
  </p>
  <p>To use the Selenium Server in a Grid configuration <a href="https://github.com/SeleniumHQ/selenium/wiki/Grid2">see the wiki page</a>.</p>

  <h3>The Internet Explorer Driver Server</h3>
  <p>This is required if you want to make use of the latest and greatest
  features of the WebDriver InternetExplorerDriver. Please make sure that this
  is available on your $PATH (or %PATH% on Windows) in order for the IE Driver
  to work as expected.</p>
  <p>Download version 2.46.0 for (recommended) <a
    href="http://selenium-release.storage.googleapis.com/2.46/IEDriverServer_Win32_2.46.0.zip">32
    bit Windows IE</a> or <a
    href="http://selenium-release.storage.googleapis.com/2.46/IEDriverServer_x64_2.46.0.zip">64 bit Windows IE</a><br/>
    <a href="http://goo.gl/LJ07LL">CHANGELOG</a></p>

  <a name="client-drivers"/>
  <h3>Selenium Client & WebDriver Language Bindings</h3>
  <p>In order to create scripts that interact with the Selenium Server (Selenium RC, Selenium Remote WebDriver) or create local Selenium WebDriver script you need to make use of language-specific client drivers. These languages include both 1.x and 2.x style clients.</p>
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
        <td>2.46.0</td>
        <td>2015-06-04</td>
        <td><a href="http://selenium-release.storage.googleapis.com/2.46/selenium-java-2.46.0.zip">Download</a>&nbsp;&nbsp;</td>
        <td><a href="http://goo.gl/5IVvjZ">Change log</a>&nbsp;&nbsp;</td>
        <td><a href="http://goo.gl/Grc6tm" alt="Javadoc">Javadoc</a></td>
      </tr>
      <tr>
        <td>C#</td>
        <td>2.46.0</td>
        <td>2015-06-04</td>
        <td><a href="http://selenium-release.storage.googleapis.com/2.46/selenium-dotnet-2.46.0.zip">Download</a></td>
        <td><a href="http://goo.gl/t3faSQ">Change log</a></td>
        <td><a href="http://goo.gl/uutZjZ">API docs</a></td>
      </tr>
      <tr>
        <td>Ruby</td>
        <td>2.46.1</td>
        <td>2015-06-04</td>
        <td><a href="http://rubygems.org/gems/selenium-webdriver">Download</a></td>
        <td><a href="http://goo.gl/zNfSLK">Change log</a></td>
        <td><a href="http://goo.gl/jzh4RU">API docs</a></td>
      </tr>
      <tr>
        <td>Python</td>
        <td>2.46.0</td>
        <td>2015-06-04</td>
        <td><a href="http://pypi.python.org/pypi/selenium">Download</a></td>
        <td><a href="http://goo.gl/rHRdgk">Change log</a></td>
        <td><a href="http://goo.gl/sG1GfQ">API docs</a></td>
      </tr>
      <tr>
        <td>Javascript (Node)</td>
        <td>2.46.1</td>
        <td>2015-06-15</td>
        <td><a href="https://npmjs.org/package/selenium-webdriver">Download</a></td>
        <td><a href="http://goo.gl/e6smYw">Change log</a></td>
        <td><a href="http://goo.gl/hohAut">API docs</a></td>
      </tr>
    </tbody>
  </table>
  <h4>C# NuGet</h4>
  <p>NuGet latest release is 2.46.0, Released on 2015-06-04</p>
  <ul>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.RC">RC</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.WebDriver">WebDriver</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.WebDriverBackedSelenium">WebDriverBackedSelenium</a></li>
    <li><a href="http://www.nuget.org/List/Packages/Selenium.Support">Support</a></li>
  </ul>

  <h3>SafariDriver</h3>
  <p>SafariDriver now requires manual installation of the extension prior to automation</p>
  <ul>
    <li>Latest release <a href="http://selenium-release.storage.googleapis.com/2.45/SafariDriver.safariextz">2.45.0</a></li>
    <li><a href="https://github.com/SeleniumHQ/selenium/wiki/SafariDriver">Wiki Page</a></li>
  </ul>

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
        <td><a href="https://sites.google.com/a/chromium.org/chromedriver/">Chrome</a></td>
        <td><a href="http://chromedriver.storage.googleapis.com/index.html?path=2.16/">2.16</a>&nbsp;&nbsp;</td>
        <td><a href="http://chromedriver.storage.googleapis.com/2.16/notes.txt">change log</a>&nbsp;&nbsp;</td>
        <td><a href="http://code.google.com/p/chromedriver/issues/list">issue tracker</a>&nbsp;&nbsp;</td>
        <td><a href="https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver">selenium wiki page</a>&nbsp;&nbsp;</td>
        <td>Released 2015-06-08</td>
      </tr>
      <tr>
        <td><a href="http://choice.opera.com/developer/tools/operadriver/">Opera</td>
        <td><a href="https://github.com/operasoftware/operachromiumdriver/releases">0.1.0</a></td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/operasoftware/operachromiumdriver/issues">issue tracker</a></td>
        <td><a href="https://github.com/SeleniumHQ/selenium/wiki/OperaDriver">selenium wiki page</a></td>
        <td>Released 2014-11-06</td>
      </tr>
      <tr>
        <td><a href="https://github.com/detro/ghostdriver">GhostDriver</a></td>
        <td>(PhantomJS)</td>
        <td>&nbsp;</td>
        <td><a href="https://github.com/detro/ghostdriver/issues">issue tracker</a></td>
        <td><a href="http://www.youtube.com/watch?v=wqxkKIC2HDY">SeConf talk</a></td>
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
    <li><a href="https://github.com/admc/wd">Javascript</a> by Adam Christian</li>
    <li><a href="https://github.com/jlipps/yiewd">Javascript</a> by Jonathan Lipps</li>
    <li><a href="http://webdriver.io">Javascript</a> by Camilo Tapia, Vincent Voyer and Christian Bromann</li>
    <li><a href="https://github.com/johndharrison/RSelenium">R</a> by John Harrison</li>
    <li><a href="https://github.com/google/webdriver.dart">Dart</a> by Marc Fisher</li>
    <li><a href="http://caiusproject.com/">Tcl</a> by Tobias Koch</li>
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
        <tr><th>Links:</th><td><a href="http://www.codoid.com/products/view/2/30">VisGrid-UI for Selenium Grid 2.0</a></td></tr>
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

  <h3>Selenium IDE</h3>
  <p>Selenium IDE is a Firefox plugin which records and plays back user interactions with the browser. Use this to either create simple scripts or assist in exploratory testing. It can also export Remote Control or WebDriver scripts, though they tend to be somewhat brittle and should be overhauled into some sort of Page Object-y structure for any kind of resiliency.</p>
  <p>Download latest released version <a href="http://release.seleniumhq.org/selenium-ide/2.9.0/selenium-ide-2.9.0.xpi">2.9.0</a> released on 09/Mar/2015 or view the <a href="https://github.com/SeleniumHQ/selenium/wiki/SeIDE-Release-Notes">Release Notes</a> and then <a href="#side_plugins">install some plugins</a>.</p>
  <p>Download previous version <a href="http://release.seleniumhq.org/selenium-ide/2.8.0/selenium-ide-2.8.0.xpi">2.8.0</a> released on 29/Sep/2014.</p>
  <!-- <p>Download next unreleased version <a href="http://release.seleniumhq.org/selenium-ide/2.6.0/selenium-ide-2.6.0.xpi">2.6.0</a> to be released on 16/September/2013</p> -->
  <!-- <p>Download version under development <a href="http://ci.seleniumhq.org:8080/job/IDE/lastSuccessfulBuild/artifact/selenium-trunk/build/ide/selenium-ide-multi.xpi">unreleased</a> (currently disabled)</p> -->

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
    <p class="description">This plugin allows Selenium IDE to automatically wait until the element is found before executing each command using a locator. It is equivalent to the implicit wait function available with Selenium 2 WebDrivers. It avoids having to insert waitForElementPresent before click, type, select..., and provides a command to deal with AJAX processing status. For ore information, see the <a href="http://code.google.com/p/selenium-implicit-wait">project page</a>.</p>
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
  <p><a href="https://code.google.com/p/selite/wiki/ProjectHome">SeLite</a> is a family of extensions that improve Selenium IDE. It
    <ul>
        <li>enables user scripts to be more effective</li>
        <li>enhances development environment</li>
        <li>facilitates team work.</li>
    </ul>
    See <a href="https://code.google.com/p/selite/wiki/ProjectHome#Benefits">benefits in detail</a> and <a href="https://code.google.com/p/selite/wiki/SeleniumIde">productivity tips</a>. It also enables database-driven navigation with <a href="http://www.sqlite.org/">SQLite</a> (the <a href="http://www.sqlite.org/mostdeployed.html">most widely deployed</a> SQL database). 
  </p>
  <p>
    For the easiest download get all add-ons of <a href="https://addons.mozilla.org/en-US/firefox/collections/peter-kehl/selite/?sort=name">SeLite collection</a>. The following lists them briefly; see also <a href="https://code.google.com/p/selite/wiki/AddOns">add-ons in detail</a>.
  </p>

  <div class="plugin">
    <a name="selite-autocheck"/>
    <div class="name">SeLite AutoCheck</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-auto-check/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-auto-check/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/AutoCheck">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-bootstrap/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/SeLite-Bootstrap/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/BootstrapLoader">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-clipboard-and-indent/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-clipboard-and-indent/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>February 2015</td></tr>
      </table>
    </div>
    <p class="description">It accepts Selenese commands from another Selenium IDE instance (as per <a href="https://code.google.com/p/selite/wiki/SeleniumIde#Using_multiple_Selenium_IDEs_in_parallel">Using multiple Selenium IDEs in parallel</a>) through clipboard. It enables Selenese commands to be indented with spaces into blocks, through menu or by pressing right or left arrow. It automatically indents and unindents structured commands that come with <a href="https://code.google.com/p/selite/wiki/SelBlocksGlobal">SeLite SelBlocks Global</a>.</p>
  </div>

  <div class="plugin">
    <a name="selite-commands"/>
    <div class="name">SeLite Commands</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-commands/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-commands/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/ExtraCommands">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-db-objects/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-db-objects/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-exit-confirmation-check/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-exit-confirmation-check/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/ExitConfirmationChecker">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-extension-sequencer/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-extension-sequencer/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/ExtensionSequencer">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-hands-on-gui/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-hands-on-gui/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>February 2015</td></tr>
      </table>
    </div>
    <p class="description">It makes Selenium IDE GUI more practical:
        <ul>
        <li> you can edit commands and comments an 'in place' by clicking at them (where they are listed). In order to edit 'in place'<ul>
             <li>click at a cell, or</li>
             <li>select a row (more below), then hit Enter or I or M, or</li>
             <li>edit another cell, then hit TAB or Shift+TAB.</li>
          </ul>
        </li>
        <li>After you select a row, you can use key shortcuts 'I' and 'M' to insert new command and comment, respectively, and to edit it 'in place'. (Similarly, pressing I or M in right click context menu goes to edit 'in place'). New commands or comments come with initial indentation.</li>
        <li>'Command' cell (of commands, i.e. non-comments) operates with autocomplete dropdown.</li>
        <li>'Target' cell (of commands, i.e. non-comments) overflows to the right (if there is nothing in 'Value' cell), which lets you see long selectors.</li>
        </ul> 
    </p>
  </div>

  <div class="plugin">
    <div class="name">SeLite  Miscellaneous</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-miscellaneous/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-miscellaneous/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
    <a name="selite-run-all-favorites"/>
    <div class="name">SeLite  Run All Favorites</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-run-all-favorites/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-run-all-favorites/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Mozilla Public License 1.1</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>September 2014</td></tr>
      </table>
    </div>
    <p class="description">It runs a sequence of all test suites marked as favorites in <a href="https://addons.mozilla.org/en-US/firefox/addon/favorites-selenium-ide/">Favorites (Selenium IDE)</a>. It supports team work: it facilitates export/import of favorites by representing them relative to user's home folder.</p>
  </div>
  
  <div class="plugin">
    <a name="selite-selblocks-global"/>
    <div class="name">SeLite  SelBlocks Global</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-selblocks-global/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/SeLite-SelBlocks-Global/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/SelBlocksGlobal">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td><a href="http://refactoror.net/">Chris Noe</a>, Peter Kehl</td></tr>
        <tr><th>License:</th><td>Mozilla Public License 1.1</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2011</td></tr>
      </table>
    </div>
    <p class="description">It's an enhanced version of SelBlocks. It allows to call functions (formerly: scripts) across the test cases (within the same test suite). It also provides <a href="https://code.google.com/p/selite/wiki/EnhancedSyntax">EnhancedSyntax</a>, which supports more expressive tests.</p>
  </div>

  <div class="plugin">
    <a name="selite-settings"/>
    <div class="name">SeLite Settings</div>
    <div class="column">
      <table>
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-settings/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/selite-settings/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/SettingsOverview">Docs</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-sqlite-connection-mg/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/SeLite-SQLite-Connection-Mg/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
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
          <tr><th>Links:</th><td><a href="https://addons.mozilla.org/en-US/firefox/addon/selite-testcase-debug-conte/">Info</a> - <a href="https://addons.mozilla.org/en-US/firefox/addon/SeLite-TestCase-Debug-Conte/versions/">Download</a> - <a href="https://code.google.com/p/selite/wiki/TroubleShooting">Support</a></td></tr>
        <tr><th>Author:</th><td>Peter Kehl</td></tr>
        <tr><th>License:</th><td>Apache License 2</td></tr>
      </table>
    </div>
    <div class="column">
      <table>
        <tr><th>Since:</th><td>2013</td></tr>
      </table>
    </div>
    <p class="description">It's needed by SelBlocks Global.</p>
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
