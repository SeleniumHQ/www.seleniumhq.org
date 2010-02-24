<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<decorator:useHtmlPage id="p"/>
<head>
    <title><decorator:title default="Selenium"/></title>
    <link href="/seleniumhq.css?20090629" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="/selenium-favicon.ico" type="image/vnd.microsoft.icon"/>
    <link rel="icon" href="/selenium-favicon.ico" type="image/vnd.microsoft.icon"/>
    <script src="/page-tools.js" type="text/javascript"></script>
    <decorator:head/>
</head>
<body <decorator:getProperty property="body.class" default="homepage" writeEntireProperty="true"/>>
<div id="container">
<div id="header">
    <h1><a href="/" title="Return to Selenium home page">Selenium</a></h1>
    <ul>
        <li id="menu_about"><a href="/about/" title="Overview of Selenium">About</a></li>
        <li id="menu_support"><a href="/support/" title="Get help with Selenium">Support</a></li>
        <li id="menu_documentation"><a href="/documentation/"
                                       title="Technical references and guides">Documentation</a></li>
        <li id="menu_download"><a href="/download/" title="Get Selenium">Download</a></li>
        <li id="menu_projects"><a href="/projects/" title="Selenium Projects">Projects</a></li>
    </ul>
    <form id="searchbox_016909259827549404702:hzru01fldsm" action="http://www.google.com/cse"
          title="seleniumhq.org Selenium Search">
        <div>
            <label for="q" title="Search SeleniumHQ.org's sites for selenium content">search selenium:</label>
            <input type="hidden" name="cx" value="016909259827549404702:hzru01fldsm">
            <input type="hidden" name="cof" value="FORID:">
            <input type="text" id="q" name="q" accesskey="s" size="30">
            <input type="submit" id="submit" value="Go">
        </div>
    </form>

</div>
<div id="mBody">
    <%
        if ("sectionAbout".equals(p.getProperty("body.class"))) {
    %>
    <div id="side" class="left">
        <ul id="nav">
            <li><a href="/about/">About Selenium</a>
                <ul>
                    <li><a href="/about/news.jsp">News/Blog</a></li>
                    <li><a href="/about/license.html">License</a></li>
                    <li><a href="/about/how.html">How it Works</a></li>
                    <li><a href="/about/platforms.html">Platform support</a></li>
                    <li><a href="/about/history.html">History</a></li>
                    <li><a href="/about/roadmap.html">Roadmap</a></li>
                    <li><a href="/about/contributors.html">Contributors</a></li>
                    <li><a href="/about/getting-involved.html">Getting Involved</a></li>
                </ul>
            </li>
        </ul>
        <div class="ads">
            <script type="text/javascript"><!--
            google_ad_client = "pub-6291771388053870";
            /* 160x600, created 7/31/08 */
            google_ad_slot = "9920140235";
            google_ad_width = 160;
            google_ad_height = 600; //--> </script>
            <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"> </script>
        </div>
    </div>
    <%
        } else if ("sectionDownload".equals(p.getProperty("body.class"))) {
    %>
    <div id="side" class="left">
        <ul id="nav">
            <li><a href="/download/">Selenium Downloads</a>
                <ul>
                    <li><a href="/download/previous.html">Previous Releases</a></li>
                    <li><a href="/download/nightly.html">Nightly Releases</a></li>
                    <li><a href="/download/source.html">Source Code</a></li>
                    <li><a href="/download/maven.html">Maven Repository Info</a></li>
                </ul>
            </li>
        </ul>
        <div class="ads">
            <script type="text/javascript"><!--
            google_ad_client = "pub-6291771388053870";
            /* 160x600, created 7/31/08 */
            google_ad_slot = "9920140235";
            google_ad_width = 160;
            google_ad_height = 600; //--> </script>
            <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"> </script>
        </div>
    </div>
    <%
        } else if ("sectionDocumentation".equals(p.getProperty("body.class"))) {
    %>

    <div id="side" class="left">
        <%= p.getProperty("page.related") %>

        <%= p.getProperty("page.sphinxsidebar") %>

        <div class="ads">
            <script type="text/javascript"><!--
            google_ad_client = "pub-6291771388053870";
            /* 160x600, created 7/31/08 */
            google_ad_slot = "9920140235";
            google_ad_width = 160;
            google_ad_height = 600; //--> </script>
            <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"> </script>
        </div>
    </div>
    <%
        } else {
    %>
    <div id="sidebar">
        <img alt="Selenium Logo" src="/images/big-logo.png"/>

        <p>
            <strong>Selenium is a suite of tools</strong> to automate web app testing across many platforms.
        </p>

        <p>Selenium...</p>
        <ul>
            <li>runs in <a href="/about/platforms.html#browsers">many browsers</a> and <a
                    href="/about/platforms.html#operating-systems">operating systems</a></li>
            <li>can be controlled by many <a href="/about/platforms.html#programming-languages">programming
                languages</a> and <a href="/about/platforms.html#testing-frameworks">testing frameworks</a>.
            </li>
        </ul>

        <div class="downloadBox"><a href="/download/">Download Selenium</a>1.0</div>

        <%--<script language="javascript" src="http://tipjoy.com/socnet/widget?username=patrick4&url=http%3A%2F%2Fseleniumhq.org&message=Love%20Selenium%3F%20Leave%20us%20a%20tip!&amount=0.99&showTipperMessage=True&tipperMessageTitle=What%20is%20your%20favorite%20Selenium%20project%3F"></script>--%>

        <div class="ads">
            <script type="text/javascript"><!--
            google_ad_client = "pub-6291771388053870";
            /* 160x600, created 7/31/08 */
            google_ad_slot = "9920140235";
            google_ad_width = 160;
            google_ad_height = 600;
            //--> </script>
            <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
        </div>
    </div>
    <%
        }
    %>

    <div id="mainContent">
        <decorator:body/>
    </div>
</div>
<div id="footer">
    <ul id="sitemap">
        <li><a href="/projects/">Selenium Projects</a>
            <ul>
                <li><a href="/projects/ide/">Selenium IDE</a></li>
                <li><a href="/projects/remote-control/">Selenium Remote Control</a></li>
                <li><a href="http://selenium-grid.seleniumhq.org/">Selenium Grid</a></li>
                <li><a href="/projects/core/">Selenium Core</a></li>
                <li><a href="/projects/on-rails/">Selenium on Rails</a></li>
                <li><a href="/projects/ruby/">Selenium on Ruby</a></li>
                <li><a href="http://cubictest.seleniumhq.org">CubicTest (for Eclipse)</a></li>
            </ul>
        </li>
        <li><a href="/docs/">Documentation</a>
            <ul>
                <li><a href="/docs/">Online version</a></li>
                <li><a href="/docs/book/Selenium_Documentation.pdf">Offline version (pdf)</a></li>
                <li><a href="http://wiki.openqa.org/">Wiki</a></li>
                <li><a href="http://release.openqa.org/selenium-core/1.0/reference.html">Selenium API</a></li>
            </ul>
        </li>
        <li><a href="/support/">Support</a>
            <ul>
                <li><a href="http://groups.google.com/group/selenium-users">User Group</a></li>
                <li><a href="http://jira.openqa.org/">Bug Tracker</a></li>
                <li><a href="/support/index.html#CommercialSupport">Commercial Support</a></li>
                <li><a href="/support/index.html#IRC">IRC</a></li>
            </ul>
        </li>
        <li><a href="/about/">About Selenium</a>
            <ul>
                <li><a href="/about/how.html">How it Works</a></li>
                <li><a href="/about/platforms.html">Supported Platforms</a></li>
                <li><a href="/about/contributors.html">Who made Selenium</a>
                <li><a href="/about/news.jsp">News/Blogs</a></li>
                <li><a href="/about/roadmap.html">Roadmap</a></li>
                <li><a href="/about/getting-involved.html">Getting Involved</a></li>
            </ul>
        </li>
        <li><a href="http://openqa.org/">OpenQA.org</a>
            <ul>
                <li><a href="http://openqa.org/sass/index.action">Create an account</a></li>
                <li><a href="http://openqa.org/sass/index.action">Account management</a></li>
                <li><a href="http://openqa.org/sponsors.action">Sponsors</a></li>
            </ul>
        </li>
    </ul>
    <a href="http://openqa.org/"><img alt="openqa.org logo" id="footerLogo" src="/images/openqa-logo.png"/></a>
</div>
</div>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-7221039-1");
pageTracker._trackPageview();
} catch(err) {}</script>

</body>
</html>
