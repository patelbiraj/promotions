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
		<jsp:include page="../2024/includes/2024-holidayBlowout_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>From October 28, 2024, to January 12, 2025, players can enter the $5,000,000 Holiday Blowout Bonus Play for a chance to win up to $20,000 in Bonus Play draw prizes! 
			Participation is simple - just enter your non-winning HOLIDAY BLOWOUT and THE PERFECT GIFT Scratch-Off tickets, 
			or any PICK Daily Games<sup>&#8482;</sup> ticket of $1 or more purchased during each entry period.</p> 
			
			<h2>Drawings</h2>
			<p>Two drawings will be held for tickets entered by midnight ET on the last night of each entry period, with winners announced on December 12, 2024, and January 16, 2025. </p>
			
			<table class="dataTbl">
				<tr>
					<th colspan="4" class = "title">Draw Schedule</th>
				</tr>
				<tr>
					<th>Draw</th>
					<th>Entry Period</th>
					<th>Draw Dates</th>
					<th>Winners Announced</th>
				</tr>
				<tr>
					<td>1</td>
					<td>October 28, 2024 &mdash; December 8, 2024</td>
					<td>December 10, 2024</td>
					<td>December 12, 2024</td>
				</tr>
				<tr>
					<td>2</td>
					<td>December 9, 2024 &mdash; January 12, 2025</td>
					<td>January 14, 2025</td>
					<td>January 16, 2025</td>
				</tr>
			</table>
			
			<br>
			<h2>Bonus Entries</h2>
			<p>Non-winning THE PERFECT GIFT Scratch-Off tickets will receive 50 draw entries, while the complete non-winning HOLIDAY BLOWOUT Scratch-Off family ($1, $2, $5, and $10) will receive 25 bonus entries into the next drawing. 
			Plus, more than $4.5 million in instant-win cash coupons will be awarded throughout the promotion.</p>

			<table class="dataTbl">
				<tr>
					<th colspan="3" class = "title">Draw Entries and Bonus Entries</th>
				</tr>
				<tr>
					<th>Game</th>
					<th>Price Point</th>
					<th>Number of Entries</th>
				</tr>
				<tr>
					<td>$5,000 HOLIDAY BLOWOUT</td>
					<td>$1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>$25,000 HOLIDAY BLOWOUT</td>
					<td>$2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>$100,000 HOLIDAY BLOWOUT</td>
					<td>$5</td>
					<td>5</td>
				</tr>
				<tr>
					<td>$500,000 HOLIDAY BLOWOUT</td>
					<td>$10</td>
					<td>10</td>
				</tr>
				<tr>
					<td>THE PERFECT GIFT</td>
					<td>$20</td>
					<td>50</td>
				</tr>
				<tr>
					<td>PICK Daily Games</td>
					<td>Starting at $1</td>
					<td>
						= lowest dollar amount
						<br>
						(ex: $1.50 = 1 entry)
					</td>
				</tr>
				<tr>
					<td>HOLIDAY BLOWOUT Family of Games</td>
					<td>$18</td>
					<td>25</td>
				</tr>
			</table>

			
			<a class="htpButton" href="entry_2024-holidayBlowout">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.</strong></p>
		</div>
	</div>
</div>