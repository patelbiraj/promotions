<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<div id="main">
	<div id="mainContent" class="ticketEntryHistory">
		<h1><s:property value="%{messages.h1Title}" /></h1>
		<section class="column1">
			<nav>
				<s:property escapeHtml="false" value="%{entryYearsAsHtmlOrderedList}"/>
			</nav>
		</section>
		<section class="column2">
			<h2><s:property value="%{h2Title}" /></h2>
			<s:property escapeHtml="false" value="%{summary}"/>
		</section>
		
	</div>
</div>
