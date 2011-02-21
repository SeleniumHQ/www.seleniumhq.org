<%!private String text(Element e, String name) {
    return e.getElementsByTagName(name).item(0).getFirstChild().getNodeValue();
}%>
<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://www.opensymphony.com/oscache" prefix="oscache" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta name="generator" content=
    "HTML Tidy (version num removed), see www.w3.org" />

    <title>Oops, page not found</title>
    <link rel="alternate" type="application/rss+xml" title="Selenium Blog Posts Feed" href="http://feeds.feedburner.com/Selenium" />
  </head>

  <body>
    <h2>Page Not Found</h2>
    <p>The page you are looking for cannot be found.<br />
    It is possible the page has moved or has been deleted.</p>

    <h3>So Now What?</h3>
    <p>If you think there is a problem with the site, please contact us at
    <a href="/support/index.html#IRC">IRC</a> or the
    <a href="http://groups.google.com/group/selenium-developers">developers'
    mailing list</a>.</p>

    <script type="text/javascript">
     var GOOG_FIXURL_LANG = 'en';
     var GOOG_FIXURL_SITE = 'http://seleniumhq.org';
    </script>
    <script type="text/javascript" 
       src="http://linkhelp.clients.google.com/tbproxy/lh/wm/fixurl.js"></script>

  </body>
</html>
