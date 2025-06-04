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
		<jsp:include page="../2025/includes/2025-goldRush_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>
				Beginning January 13 through April 6, 2025, players can enter the $2,000,000 GOLD RUSH MULTIPLIER Bonus Play for a chance to win up to $50,000! Participation is simple: enter your 
				non-winning GOLD RUSH MULTIPLIER and SILVER STREAK Scratch-Off tickets through the Lottery's website or mobile app. 
			</p> 
			<br>
			<h2>Drawings</h2>
			<p>
				Three drawings will be held for tickets entered by midnight ET on the last night of each entry period. Winners will be announced on February 13, March 13, and April 10, 2025. 
			</p>
			<table class="dataTbl">
				<tr>
					<th colspan="4" class = "title">DRAW SCHEDULE</th>
				</tr>
				<tr>
					<th class="heading">Draw</th>
					<th class="heading">Draw Entry Period</th>
					<th class="heading">Draw Dates</th>
					<th class="heading">Winners Announced</th>
				</tr>
				<tr>
					<td>1</td>
					<td>January 13 &mdash; February 9, 2025</td>
					<td>February 11, 2025</td>
					<td>February 13, 2025</td>
				</tr>
				<tr>
					<td>2</td>
					<td>February 10 &mdash; March 9, 2025</td>
					<td>March 11, 2025</td>
					<td>March 13, 2025</td>
				</tr>
				<tr>
					<td>3</td>
					<td>March 10 &mdash; April 6, 2025</td>
					<td>April 8, 2025</td>
					<td>April 10, 2025</td>
				</tr>
			</table>
			<p class = "htpFootnote">
				<strong>The overall odds of winning will vary based on the total number of entries received for each entry period.</strong>
			</p>
			
			<h2>BONUS ENTRIES</h2>
			<br>
			<p>There are two ways to earn bonus entries:</p>
			<ol>
			
				<li>Enter a complete set of non-winning GOLD RUSH MULTIPLIER family Scratch-Off tickets ($1, $2, $5, and $10) to receive <b>25 bonus entries.</b></li>
				<li>Enter non-winning tickets from the $15,000,000 GOLD RUSH MULTIPLIER and SILVER STREAK games for <b>50 bonus entries.</b></li>
			</ol>
			<p>Beginning February 24, 2025, players who enter a non-winning $25,000,000 GOLD RUSH MULTIPLIER Scratch-Off ticket could instantly win a <b>$100 cash prize 
			coupon</b> redeemable at any Florida Lottery retailer through Thursday, June 5, 2025.</p>
			
			<table class="dataTbl">
				<tr>
					<th colspan="3" class = "title">Draw Entries and Bonus Entries</th>
				</tr>
				<tr>
					<th class="heading">Game</th>
					<th class="heading">Price Point</th>
					<th class="heading">Number of Entries</th>
				</tr>
				<tr>
					<td>$15,000,000 GOLD RUSH MULTIPLIER</td>
					<td>$30</td>
					<td>30</td>
				</tr>
				<tr>
					<td>SILVER STREAK</td>
					<td>$10</td>
					<td>10</td>
				</tr>
				<tr>
					<td>$15,000,000 GOLD RUSH MULTIPLIER <b>and</b> SILVER STREAK</td>
					<td>$40</td>
					<td>50 BONUS</td>
				</tr>
				<tr>
					<td>$10,000 GOLD RUSH MULTIPLIER</td>
					<td>$1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>$100,000 GOLD RUSH MULTIPLIER</td>
					<td>$2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>$1,000,000 GOLD RUSH MULTIPLIER</td>
					<td>$5</td>
					<td>5</td>
				</tr>
				<tr>
					<td>$2,000,000 GOLD RUSH MULTIPLIER</td>
					<td>$10</td>
					<td>10</td>
				</tr>
				<tr>
					<td>GOLD RUSH MULTIPLIER family of games ($1, $2, $5, and $10)</td>
					<td>$18</td>
					<td>25 BONUS</td>
				</tr>
				<tr>
					<td>$25,000,000 GOLD RUSH MULTIPLIER</td>
					<td>$50</td>
					<td>50</td>
				</tr>
			</table>
		
			<a class="htpButton" href="entry_2025-goldRush">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.</strong></p>
		</div>
	</div>
</div>