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
		<jsp:include page="../2024/includes/2024-cashCastle_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>CASH CASTLE, Ireland Trip: This six-day/five-night trip for two will include:</p>
			<ul>
				<li>Two round-trip tickets from a chosen international airport in Florida to Dublin.</li>
				<li>Ground transportation while in Ireland.</li>
				<li>Two nights&apos; lodging at the Hard Rock Dublin Hotel and three nights' lodging at the Adare Manor.</li>
				<li>$1,500 spending money.</li>
				<li>Daily entertainment-filled dinners and an Irish breakfast buffet.</li>
				<li>Horse and Hound Cash Castle welcome.</li>
				<li>Falconry demonstration at a designated location on the grounds of Adare Manor.</li>
				<li>The winners and their guests can choose from the following activities:</li>
					<ul>
						<li>The Galway Food Tour</li>
						<li>The Cliffs of Moher Tour and Pub Lunch </li>
						<li>The Kylemore Farmhouse Cheese Experience</li>
					</ul>
				<li>Tickets to the Cash Castle game show event at Adare Manor for winners to compete for cash prizes ranging from $1,000 up to $1 million!</li>
				</ul>
				<table class="dataTbl">
					<tr>
						<th>Prize Tier</th>
						<th>Prize</th>
						<th class = "golden">Total Winners</th>
					</tr>
					<tr>
						<td>Top Prize</td>
						<td>$1,000,000</td>
						<td>1</td>
					</tr>
					<tr>
						<td>2nd Prize</td>
						<td>$10,000</td>
						<td>1</td>
					</tr>
					<tr>
						<td>3rd Prize</td>
						<td>$7,500</td>
						<td>2</td>
					</tr>
					<tr>
						<td>4th Prize</td>
						<td>$5,000</td>
						<td>6</td>
					</tr>
					<tr>
						<td>5th Prize</td>
						<td>$2,500</td>
						<td>8</td>
					</tr>
					<tr>
						<td>6th Prize</td>
						<td>$2,000</td>
						<td>10</td>
					</tr>
					<tr>
						<td>7th Prize</td>
						<td>$1,500</td>
						<td>10</td>
					</tr>
					<tr>
						<td>8th Prize</td>
						<td>$1,000</td>
						<td>12</td>
					</tr>
					<tr>
						<td>Total</td>
						<td>$1,122,000</td>
						<td>50</td>
					</tr>	
				</table>
				
			
			<p class = "htpFootnote">The overall odds of winning will vary based on the total number of entries received for each entry period.</p>
			<p class = "htpFootnote"><em>The Lottery will contract with Atlas Experiences for the <br>Lucky Pik game show, event management services, and prize fulfillment.</em></p>
		</div>
	</div>
</div>