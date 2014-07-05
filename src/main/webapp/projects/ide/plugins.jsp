<!DOCTYPE html>
<html>
<head>
<title>Selenium IDE</title>
<%@include file="/jsp/head.jspf"%>
</head>
<body class="sectionProjects">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <p>
    <h3>Documentation</h3>
    <ol>
      <li><a href="http://adam.goucher.ca/?p=1331">Build and Preferences</a></li>
      <li><a href="http://adam.goucher.ca/?p=1341">The Toolbar</a></li>
      <li><a href="http://adam.goucher.ca/?p=1343">The Sidebar</a></li>
      <li><a href="http://adam.goucher.ca/?p=1348">Extending the Selenium API</a></li>
      <li><a href="http://adam.goucher.ca/?p=1351">Publishing Updates</a></li>
      <li><a href="http://adam.goucher.ca/?p=1352">Formatters</a></li>
      <li><a href="http://adam.goucher.ca/?p=1362">Packaging Nuances</a></li>
      <li><a href="http://adam.goucher.ca/?p=1376">Localization</a></li>
      <li><a href="http://adam.goucher.ca/?p=1377">Secure Password Storage</a></li>
      <li><a href="http://adam.goucher.ca/?p=1387">Registering your plugin</a></li>
      <li><a href="http://adam.goucher.ca/?p=1456">Exporting New Commands</a></li>
      <li><a href="http://reallysimplethings.wordpress.com/2010/10/11/the-selenium-ide-1-x-plugin-api-part-12-adding-locator-builders/">Adding Locator Builders</a></li>
    </ol>
  </p>
  <p>
    <h3>Hosting</h3>
    In order to get your plugin hosted on addons.seleniumhq.org, there are a few tiny hoops
    to jump through in order to expedite the request.
    <br />
    <ul>
      <li>Include the version in the filename (as there will be multiple versions in a single directory). Example: my-plugin-1.0.xpi</li>
      <li>If you want to have it auto-update (and you likely do) then in the plugin's install.rdf you need to have em:updateURL
        <br />
        <i>&lt;em:updateURL&gt;https://addons.seleniumhq.org/your-plugin-name/update.rdf&lt;/em:updateURL&gt;</i></li>
      <li>Provide an update.rdf file (see <a href="https://addons.seleniumhq.org/se-ide/update.rdf">Se-IDE's</a> as an example) which has the version you are submitting. To be safe, you need also to include the sha signature.</li>
    </ul>
    <br />
    Once you have that, email it a request with the .xpi and update.rdf to addons@seleniumhq.org. We'll try to get updates posted daily-ish, but please understand if it takes a day or two.
  </p>
  <p>
    <h3>Plugins</h3>
    See the list of known plugins on the <a href="http://seleniumhq.org/download/">downloads page</a>.
  </p>
<%@include file="/jsp/footer.jspf"%>
</body>
</html>
