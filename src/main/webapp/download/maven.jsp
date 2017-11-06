<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../fancybox/jquery.fancybox-1.3.4.css" media="screen" />  

  <title>Maven Information</title>
<%@include file="/jsp/head.jspf"%>
</head>

<body class="sectionDownload">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <h2>Maven Information</h2>

  <p>If you're using Maven, you will find all Selenium Maven
  artifacts directly in the central Maven repository here:
  <a href="http://repo1.maven.org/maven2/org/seleniumhq/selenium/">http://repo1.maven.org/maven2/org/seleniumhq/selenium/</a></p>

  <p>In order to start using <tt>DefaultSelenium</tt> or one of
  the new <tt>WebDriver</tt> implementations in your Maven project,
  just add the following dependency to your <tt>pom.xml</tt>:<pre>
    &lt;dependency&gt;
        &lt;groupId&gt;org.seleniumhq.selenium&lt;/groupId&gt;
        &lt;artifactId&gt;selenium-java&lt;/artifactId&gt;
        &lt;version&gt;3.7.1&lt;/version&gt;
    &lt;/dependency&gt;  
</pre></p>
  
  <p><i>Note:</i> Before version 2.0rc3 the artifact was named
  <tt>selenium-remote-control</tt>.</p>
  
  <p>To get an overview of the different Selenium Maven artifacts,
  click on the thumbnail below to open a diagram, which shows
  the dependencies between the Selenium Maven artifacts as well as
  the most important classes/interfaces in those artifacts:
  </p>

  <p style="text-align:center">
      <a id="maven" href="../images/maven.png">
          <img src="../images/maven.png" width="200" height="150" alt="Selenium Maven artifacts">
      </a>
  </p>
  <script type="text/javascript" src="../fancybox/jquery-1.4.3.min.js"></script>
  <script type="text/javascript" src="../fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
  <script type="text/javascript" src="../fancybox/jquery.fancybox-1.3.4.pack.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $("a#maven").fancybox({
        'overlayShow' : false,
        'transitionIn' : 'elastic',
        'transitionOut' : 'elastic'
      });
    });
  </script>
  
  <p>If you know that you will only use a certain <tt>WebDriver</tt>
  implementation, e.g. the <tt>FirefoxDriver</tt>, you don't need to
  depend on the <tt>selenium-java</tt> artifact (which has
  a lot of transitive dependencies). Instead you can just add the
  dependency on the artifact you need, e.g.<pre>
    &lt;dependency&gt;
        &lt;groupId&gt;org.seleniumhq.selenium&lt;/groupId&gt;
        &lt;artifactId&gt;selenium-firefox-driver&lt;/artifactId&gt;
        &lt;version&gt;3.7.1&lt;/version&gt;
    &lt;/dependency&gt;  
</pre></p>

  <p>Starting with 2.53.0 you need to explicitly include HtmlUnitDriver as a dependency to include it. Version number of the driver is now tracking HtmlUnit itself.
  <pre>
    &lt;dependency&gt;
        &lt;groupId&gt;org.seleniumhq.selenium&lt;/groupId&gt;
        &lt;artifactId&gt;htmlunit-driver&lt;/artifactId&gt;
        &lt;version&gt;2.27&lt;/version&gt;
    &lt;/dependency&gt;  
  </pre></p>
    

  <p>If you are using <tt>DefaultSelenium</tt> (or the <tt>RemoteWebDriver</tt>
  implementation), you still need to start a Selenium server. The best way is
  to download the <tt>selenium-server-standalone.jar</tt> from the
  <a href="http://selenium-release.storage.googleapis.com/index.html">Selenium Downloads
  page</a> and just use it. Furthermore you can also embed the Selenium server
  into your own project, if you add the following dependency to your <tt>pom.xml</tt>:<pre>  
    &lt;dependency&gt;
        &lt;groupId&gt;org.seleniumhq.selenium&lt;/groupId&gt;
        &lt;artifactId&gt;selenium-server&lt;/artifactId&gt;
        &lt;version&gt;3.7.1&lt;/version&gt;
    &lt;/dependency&gt;  
</pre> Now you can create a <tt>SeleniumServer</tt> instance yourself and start it.</p>

   <p><i>Note:</i> Be aware, that the <tt>selenium-server</tt> artifact has
   a dependency to the <tt>servlet-api-3.1.0</tt> artifact, which you should
   exclude, if your project will be run inside a web application container.</p>


  <h3>Third Party Browser Drivers NOT SUPPORTED/DEVELOPED by seleniumhq</h3>
  
  <p>PhantomJSDriver (GhostDriver)</p>
  <pre>
    &lt;dependency&gt;
        &lt;groupId&gt;com.github.detro&lt;/groupId&gt;
        &lt;artifactId&gt;phantomjsdriver&lt;/artifactId&gt;
        &lt;version&gt;1.4.0&lt;/version&gt;
    &lt;/dependency&gt;  
  </pre>
    
<%@include file="/jsp/footer.jspf"%>
</body>
</html>
