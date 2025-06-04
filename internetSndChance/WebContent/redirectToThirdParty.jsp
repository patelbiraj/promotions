<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>


<body class="bg2" style="background: -moz-linear-gradient(left, rgba(5,0,76,1) 0%, rgba(5,0,76,1) 15%, rgba(5,0,76,0) 50%, rgba(5,0,76,1) 85%, rgba(5,0,76,1) 100%);
background: -webkit-linear-gradient(left, rgba(5,0,76,1) 0%,rgba(5,0,76,1) 15%,rgba(5,0,76,0) 50%,rgba(5,0,76,1) 85%,rgba(5,0,76,1) 100%);
background: linear-gradient(to right, rgba(5,0,76,1) 0%,rgba(5,0,76,1) 15%,rgba(5,0,76,0) 50%,rgba(5,0,76,1) 85%,rgba(5,0,76,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#05004c', endColorstr='#05004c',GradientType=1 );"></body>


<script type="text/javascript">  

var theLocation = window.location.search;
// get rid of ?theRedirect=
var theNewLocation = theLocation.substring(13);


window.location.replace(theNewLocation);
</script>