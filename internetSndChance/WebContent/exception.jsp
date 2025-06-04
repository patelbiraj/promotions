<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isErrorPage="true" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<!DOCTYPE html>
<div id="main">
	<div id="mainContent">
		<h1>Oops</h1>
		<p>We cannot complete your request at this time. Please try again later.</p>
		<!--
		Exception Name: <s:property value="%{exception}" />
		Exception Details: <s:property value="%{exceptionStack}" />
		-->
	</div>
</div>
