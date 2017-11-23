<!DOCTYPE html>
<html>
<head>
  <meta name="google-site-verification" content="YZdTHYHShDiMXFspDDyijcN1P5ghqT8DUdO5FIxmofg" />
  <title>Selenium - Web Browser Automation</title>
<%@include file="/jsp/head.jspf"%>
  <link rel="alternate" type="application/rss+xml" title="Selenium Blog Posts Feed" href="http://feeds.feedburner.com/Selenium" />
  <style type="text/css">
  table#choice td {
    padding: 10px;
  }
  </style>
</head>

<body class="homepage">
<%@include file="/jsp/header.jspf"%><div id="mainContent">
  <h2>What is Selenium?</h2>
  <p><i>Selenium automates browsers</i>. That's it! What you do with that power is entirely up to you. Primarily, it is for automating web applications for testing purposes, but is certainly not limited to just that. Boring web-based administration tasks can (and should!) be automated as well.</p>
  <p>Selenium has the support of some of the largest browser vendors who have taken (or are taking) steps to make Selenium a native part of their browser. It is also the core technology in countless other browser automation tools, APIs and frameworks.</p>
  
  <h2>Which part of Selenium is appropriate for me?</h2>

  <table id="choice">
    <tbody>
      <tr>
        <td style="border-right: 1px solid #CCCCCC"><center><h3>Selenium WebDriver</h4><a href="/projects/webdriver/"><img alt="Selenium Logo" class="icon" src="images/selenium-logo.png" /></a><a href="/projects/webdriver/"><img alt="Selenium Grid Logo" class="icon" src="images/selenium-grid-logo.png" /></a></center><br />
If you want to
<ul>
  <li>create robust, browser-based regression automation suites and tests</li>
  <li>scale and distribute scripts across many environments</li>
</ul>
<br />
            <p>Then you want to use <a href="/projects/webdriver/">Selenium WebDriver</a>; a collection of language
                specific bindings to drive a browser -- the way it is meant to be driven.</p>

            <p>Selenium WebDriver is the successor of <a href="/projects/remote-control/">Selenium Remote Control</a>
                which has been officially deprecated. The Selenium Server (used by both WebDriver and Remote Control)
                now also includes built-in grid capabilities.</p>

        </td>
        <td><center><h3>Selenium IDE</h4><a href="/projects/ide/"><img alt="Selenium IDE Logo" class="icon" src="images/selenium-ide-logo.png" /></a></center><br />
If you want to
<ul>
  <li>create quick bug reproduction scripts</li>
  <li>create scripts to aid in automation-aided exploratory testing</li>
</ul>
<br />
<p>Then you want to use <a href="/projects/ide/">Selenium IDE</a>; a Firefox add-on that will do simple record-and-playback of interactions with the browser.</p>
        </td>
      </tr>
    </tbody>
  </table>

  <h2>Selenium Sponsors</h2>

    <p>
        Want to support the Selenium project? <a href="/sponsor">Learn more about sponsorship</a> or view the <a href="/sponsors">full list of sponsors</a>.
    </p>

    <%@include file="sponsors/top-sponsors.jspf"%>

  <h2>Selenium News</h2>

  <%@include file="/jsp/news.jspf"%>
<%@include file="/jsp/footer.jspf"%>
</body>
</html>
