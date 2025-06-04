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
<script type="text/javascript">var page = 1;</script>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-fuelForLife_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>Beginning July 3 through August 6, 2023, players can enter CASH4LIFE<sup>&reg;</sup> Draw game tickets purchased during the promotion period and non-winning
			YEAR FOR LIFE Scratch-Off tickets into the Free Ride & Fuel for Life Bonus Play Promotion where 10 lucky winners will win free fuel for a year and a
			new Ford vehicle!</p> 
			<p>Plus, winners will participate in the Lucky Pik game show event October 20-22, 2023, to reveal
			the Ford model vehicle won and play to win additional fuel for a year prizes, including free fuel
			for life!*</p>
			
			<table class="dataTbl">
				<caption style="text-transform: uppercase; margin-bottom: 20px;">Promotion Dates</caption>
				<tr>
					<th>Entry Period</th>
					<th>Draw Date</th>
					<th>Winners Announced</th>
				</tr>
				<tr class="bottom">
					<td>July 3 - August 6, 2023</td>
					<td class="middleBottom">August 8, 2023</td>
					<td>August 10, 2023</td>
				</tr>
			</table>
			<p>*Free Fuel for Life prize based on a 25 year period.</p>
		</div>
	</div>
</div>