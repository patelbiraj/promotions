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
		<jsp:include page="../2024/includes/2024-blackFriday_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>
				Black Friday is here, and we're celebrating with an exciting opportunity for you to win big this week! Beginning November 25 to December 1, 2024, 
				players can enter the free ticket received with their GROUPER<sup>&#174;</sup> or GROUPER<sup>&#174;</sup> Super Sampler, purchased during the 
				promotion period, for a chance to win cash prizes and one of ten $5,000 grand prizes in a Bonus Play drawing.
			</p> 
			<p>
				For each GROUPER and GROUPER Super Sampler free ticket entered, you will earn the number of draw entries equal to the price of the GROUPER associated 
				with the free ticket. In addition, when you enter a $5 GROUPER, you could instantly win a $10 cash prize coupon, and when you enter a $10 GROUPER Super 
				Sampler, you could instantly win a $20 cash prize coupon.
			</p>
			<br>
			<h2>Drawings</h2>
			<p>
				This limited-time promotion runs for just one week, so don't miss out on your chance to win. One drawing will be held on December 3, 2024, for tickets 
				entered by midnight ET on the last night of the entry period, and winners will be announced on December 5, 2024.
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
					<td>November 25 &mdash; December 1, 2024</td>
					<td>December 3, 2024</td>
					<td>December 5, 2024</td>
				</tr>
			</table>
			<table class="dataTbl">
				<tr>
					<td>
						The number of entries depends on the price of the GROUPER associated with the free ticket submitted into the promotion.
					</td>
				</tr>
			</table>
			<table class="dataTbl">
				<tr>
					<th colspan="3" class = "title">DRAW ENTRIES</th>
				</tr>
				<tr>
					<th class="heading">Game</th>
					<th class="heading">Price Point</th>
					<th class="heading">Number of Entries</th>
				</tr>
				<tr>
					<td>GROUPER Super Sampler</td>
					<td>$10</td>
					<td>10</td>
				</tr>
				<tr>
					<td>GROUPER</td>
					<td>$5</td>
					<td>5</td>
				</tr>
			</table>
			<table class="dataTbl">
				<tr>
					<td>
						Click the button below to learn more and start playing today. Good luck, and happy Black Friday!
					</td>
				</tr>
			</table>
			<a class="htpButton" href="entry_2024-blackFriday">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.</strong></p>
		</div>
	</div>
</div>