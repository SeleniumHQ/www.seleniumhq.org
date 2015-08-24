<!DOCTYPE html>
<html>
<head>
    <title>Invalid Selector</title>
<%@include file="/jsp/head.jspf"%>
</head>
<body>
<%@include file="/jsp/header.jspf"%><div id="mainContent">
<h1>Invalid Selector</h1>

<p>This page describes why you might be seeing the InvalidSelectorError (or similar).</p>

<h2>Common Causes</h2>

<p>The CSS or xPath selector you are trying to use...</p>
<ul>
    <li>has invalid characters <em>or</em></li>
    <li>has an invalid query</li>
</ul>

<h2>Common Examples of the problem</h2>
A CSS selector with the following query: <pre>* >>> #canvas div.bwu-datagrid-row div.bwu-datagrid-cell.l0</pre>
is invalid because <blockquote>Unexpected token '&gt;' at column 4</blockquote>

<h2>Common Solutions</h2>
<ul>
    <li>
        Run your selector through a validator service
        (<a href="http://csslint.net/">CSS Validator</a>|<a href="http://www.freeformatter.com/xpath-tester.html">xPath Validator</a>)
    </li>
</ul>
</div>
</body>
</html>
