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
		<jsp:include page="../2024/includes/2024-secretVault_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>Enter your non-winning MONOPOLY SECRET VAULT family of Scratch-Off tickets for a chance to win up to $25,000 in the CASH VAULT Bonus Play!</p> 
			<p>Drawings will be held on July 23, 2024, and August 13, 2024, for tickets entered by midnight, ET, on the final night of each entry period.</p>
			
			<table class="dataTbl">
				<tr>
					<th>Draw</th>
					<th>Entry Period</th>
					<th>Draw Dates</th>
					<th>Winners Announced</th>
				</tr>
				<tr>
					<td>1</td>
					<td>July 1 &mdash; July 21, 2024</td>
					<td>July 23</td>
					<td>July 25, 2024</td>
				</tr>
				<tr>
					<td>2</td>
					<td>July 22 &mdash; August 11, 2024</td>
					<td>August 13</td>
					<td>August 15, 2024</td>
				</tr>
			</table>
			
			<p>The number of entries awarded depends on the price point of the non-winning ticket submitted into the promotion.</p> 

			<table class="dataTbl">
				<tr>
					<th>Game</th>
					<th>Price Point</th>
					<th>Number of Entries</th>
				</tr>
				<tr>
					<td>$20 MONOPOLY SECRET VAULT</td>
					<td>$20</td>
					<td>20</td>
				</tr>
				<tr>
					<td>$10 MONOPOLY SECRET VAULT</td>
					<td>$10</td>
					<td>10</td>
				</tr>
				<tr>
					<td>$5 MONOPOLY SECRET VAULT</td>
					<td>$5</td>
					<td>5</td>
				</tr>
				<tr>
					<td>$2 MONOPOLY SECRET VAULT</td>
					<td>$2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>$1 MONOPOLY SECRET VAULT</td>
					<td>$1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Complete MONOPOLY<br>SECRET VAULT Family of Games 
					</td>
					<td style = "font-weight: bold"></td>
					<td>50</td>
				</tr>
			</table>
			<p>Players who enter the complete non-winning MONOPOLY SECRET VAULT ($1, $2, $5, $10, and $20) family of 
			Scratch-Off tickets during the same entry period will receive 50 bonus entries. Bonus entries are earned 
			with every completed family of MONOPOLY SECRET VAULT tickets.</p>
			
			<p>
			Players can unlock promo codes for extra bonus entries throughout the promotion. Promo codes will be available through 
			various channels, such as Florida Lottery ads, social media, and promotional emails. Each promo code is valid for the 
			corresponding entry period for which it is designated and can only be entered once. All promo codes must be entered 
			along with a non-winning MONOPOLY SECRET VAULT Scratch-Off ticket.
			</p>
			
			<a class="htpButton" href="entry_2024-secretVault">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET.</strong></p>
		</div>
	</div>
</div>