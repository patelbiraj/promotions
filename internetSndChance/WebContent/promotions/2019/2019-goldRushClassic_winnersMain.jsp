<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" errorPage="exceptionMain.jsp" %>

<tiles:insertTemplate template="../../structure/baseTemplate.jsp">
	<tiles:putAttribute name="additionalHeader" type="string" value="<link rel='stylesheet' type='text/css' href='promotions/2019/style/2019-goldRushClassic_styles.css' />" />
	<tiles:putAttribute name="title" type="string" value="${messages.pageTitle}" />
	<tiles:putAttribute name="header" type="template" value="header.jsp" />
	<tiles:putAttribute name="navigation" type="template" value="navigation.jsp" />
	<tiles:putAttribute name="body" type="template" value="../promotions/2019/2019-goldRushClassic_winners.jsp" />
	<tiles:putAttribute name="footer" type="template" value="footer.jsp" />
</tiles:insertTemplate>

