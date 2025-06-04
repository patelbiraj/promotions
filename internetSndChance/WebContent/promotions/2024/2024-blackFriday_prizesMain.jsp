<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" errorPage="exceptionMain.jsp" %>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<tiles:insertTemplate template="../../structure/baseTemplate.jsp">
	<tiles:putAttribute name="additionalHeader" type="string" value="<link rel='stylesheet' type='text/css' 
	href='promotions/2024/style/2024-blackFriday_styles.css' />" />
	<tiles:putAttribute name="title" type="string" value="${messages.pageTitle}" />
	<tiles:putAttribute name="header" type="template" value="header.jsp" />
	<tiles:putAttribute name="navigation" type="template" value="navigation.jsp" />
	<tiles:putAttribute name="body" type="template" value="../promotions/2024/2024-blackFriday_prizes.jsp" />
	<tiles:putAttribute name="footer" type="template" value="footer.jsp" />
</tiles:insertTemplate>