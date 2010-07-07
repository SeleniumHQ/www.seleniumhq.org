<%@ page import="org.w3c.dom.Element" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Date" %>
<html>    
    <head>        
        <title>Bromine</title>
        <link rel="stylesheet" type="text/css" href="css/lightwindow.css" />
    	<script type="text/javascript" src="javascript/prototype.js"></script>
    	<script type="text/javascript" src="javascript/effects.js"></script>
    	<script type="text/javascript" src="javascript/lightwindow.js"></script>    
    </head>    
    <body class="sectionProjects">                
        <table border="0">            
            <tr>                
                <td valign="top">
                    <a href="../../download/?ref=projects/bromine"><img src="download.gif" style='float: left; margin-right: 6px;'></a>	
                    <p>
                        <b>Bromine</b> is a web-based QA tool for Selenium, that enables you to easily run Selenium-RC tests and view the results. It scales beautifully from the single tester that just wants to run some tests without all the hassle to the corporate solution with multiple user-groups and hundreds of testcases. 
                    </p>
                    <p>
                        We created Bromine for 2 main reasons:
                        <ol>
                            <li>We needed an easy way to run Selenium tests and store the results for analysis and backlog</li>
                            <li>We needed to present the results in a way our less technical minded management would understand</li>
                        </ol>
                    </p>
                    <p>
                        Bromine is free software. If you like it, please support our efforts by donating.
                        <br />
                        <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="hosted_button_id" value="8320495">
                        <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
                        </form>
                    </p>
                    
                 	<h3>Features:</h3>	                     
                    <ul>
                        <li>Supports tests in Java and PHP</li>
                        <li>Record tests with provided IDE formats</li>		                         
                        <li>Upload tests</li>		                         
                        <li>Run multiple tests against multiple OS/browser combinations with a single click</li>
                        <li>Setup OS/browser testing needs with checkboxes</li>		                         
                        <li>Uses completely unmodified RC servers</li>		                         
                        <li>No RC server hassle, just plug in the IP and you're set</li>		                         
                        <li>Seemless loadbalancing. If you have multiple RC servers defined, they will be used (not GRID, our own solution)</li>		  
                        <li>Full log of results. All commands executed and their status are stored.</li>                       
                        <li>Define your own user groups and their rights</li>
                        <li>Coded in CakePHP, MVC design, accessible API, easily extendable.</li>
                        <li>Add plugins easily</li>		                         
                    </ul>
                    <h3>Screencast</h3>
                    <b>Sauce Labs and Hudson integration</b>
                    <br>
                    <a href="http://brominefoundation.org/cast/Bromine.html?utm_source=seleniumhq&utm_medium=image&utm_campaign=screencast" onclick="javascript: pageTracker._trackPageview('/screencast/view2');"><img src="http://brominefoundation.org/img/thumpsc2.jpg" style='width: 350px;'/></a>
                    <br>
                    <b>Bromine 3 RC 1</b>
                    <br>
                    <a href="http://bromine.seleniumhq.org/brscreencast/brscreencast.html" onclick="javascript: pageTracker._trackPageview('/screencast/view');"><img src="frame.png" style='width: 350px;'/></a>
                    <br />
                    <h3>Links:</h3>	                     
                    <ul>
                        <li><a href="http://wiki.brominefoundation.org">Documentation</a></li>
                        <li><a href="http://forum.brominefoundation.org/">Forums</a></li>		                         
                        <li><a href="http://jira.openqa.org/browse/BR">Bug tracker</a></li>		                         		                         
                    </ul>
                </td>                
                <td valign="top"> 	                     
                    <img src="br3.png" style='border: 1px solid black; margin-left: 6px;'/></td>            
            </tr>        
        </table>    
    </body>
</html>