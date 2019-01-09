<%
response.setStatus(301);
response.setHeader( "Location", "/selenium-ide/" );
response.setHeader( "Connection", "close" );
%>
