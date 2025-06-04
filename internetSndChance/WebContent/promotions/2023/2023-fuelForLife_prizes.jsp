<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-fuelForLife_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>One drawing will be held, in which 10 players will each win a new Ford vehicle and free fuel for a year.  Winners will then participate in the Luck Pik
			game show event taking place October 20 - 22, 2023, in Hollywood, FL.  Winners will play to reveal which Ford model vehicle they will be awarded and
			a chance to win additional fuel for a year prizes including free fuel for life!</p>
			<h2>Lucky Pik Game Show Prizes</h2>
			<ul>
				<li>Two-night hotel accommodations for two at a Hollywood, Florida Resort</li>
				<li>Welcome gift</li>
				<li>$1,500 travel allowance</li>
				<li>Barbeque beach dinner</li>
				<li>Admission to the Lucky Pik game show event at the Diplomat Beach Resort in Hollywood, FL</li>
			</ul>
			<p><em>The Lottery has partnered with Atlas Experiences Lucky Pik Game Show Event Management Services for the handling of prize fulfillment.</em></p>
		</div>
	</div>
</div>