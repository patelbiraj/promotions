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
		<jsp:include page="../2024/includes/2024-cashCastle_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>From April 8 to May 19, 2024, players can enter the CASH CASTLE BONUS PLAY for a chance to win a once-in-a-lifetime trip to Ireland.</p> 
			<p>It's simple &mdash; just enter any FLORIDA LOTTO<sup>&reg;</sup> Draw game ticket purchased or received during the bonus play, combined with a non-winning $20 GOLD RUSH LEGACY Scratch-Off ticket. 
			Players who enter both valid ticket types will earn two entries into the next available drawing for a chance to win a trip to Ireland, lodging at the Cash Castle, and cash prizes up to $1 million!</p>
			<div id = "bonusEntries">
				<br>
				<p id = "bonusEntriesHeader">TO EARN ENTRIES</p>
				
				<p id = "bonusEntriesText">You must enter a non-winning $20 GOLD RUSH LEGACY Scratch-Off ticket AND any FLORIDA LOTTO<sup>&reg;</sup> Draw game ticket purchased or received during the bonus play to receive entries into the next drawing.</p>
				<p id = "bonusEntriesText">INDIVIDUAL TICKETS WILL BE ASSIGNED A VALUE OF ZERO UNTIL THE SET IS COMPLETED.</p>
			</div>
			<h1>DRAWINGS</h1>
			<p>Beginning April 16, five weekly drawings will be held with 10 lucky winners chosen for each drawing, for a total of 50 winners!</p> 
			<p>Plus, winners will get the chance to participate in a live game show, stay in a castle, and compete for cash prizes ranging from $1,000 up to $1 million! Although players are not required to enter the set of tickets 
			simultaneously or within a single draw entry period, in order to qualify for a draw entry, players must complete a set by entering both ticket types.</p> 
			<table class="dataTbl">
				<caption style="margin-bottom: 20px; font-size: 40px;">Draw Schedule</caption>
				<tr>
					<th>Draw</th>
					<th>Draw Entry Period</th>
					<th>Draw Dates</th>
					<th class = "golden">Winners Announced</th>
					<th>Number of Winners</th>
				</tr>
				<tr>
					<td>1</td>
					<td>April 8 &mdash; April 15, 2024</td>
					<td>April 16, 2024</td>
					<td>April 17, 2024</td>
					<td>10</td>
				</tr>
				<tr>
					<td>2</td>
					<td>April 16 &mdash; April 23, 2024</td>
					<td>April 24, 2024</td>
					<td>April 25, 2024</td>
					<td>10</td>
				</tr>
				<tr>
					<td>3</td>
					<td>April 24 &mdash; May 1, 2024</td>
					<td>May 2, 2024</td>
					<td>May 3, 2024</td>
					<td>10</td>
				</tr>
				<tr>
					<td>4</td>
					<td>May 2 &mdash; May 9, 2024</td>
					<td>May 10, 2024</td>
					<td>May 11, 2024</td>
					<td>10</td>
				</tr>
				<tr>
					<td>5</td>
					<td>May 10 &mdash; May 19, 2024</td>
					<td>May 20, 2024</td>
					<td>May 21, 2024</td>
					<td>10</td>
				</tr>
				<tr>
					<td></td>
					<td style = "font-weight: bold">TOTAL</td>
					<td></td>
					<td></td>
					<td style = "font-weight: bold">50</td>
				</tr>
			</table>
			<p class = "htpFootnote">The overall odds of winning will vary based on the total number of entries received for each entry period.</p>
			<a class="htpButton" href="entry_2024-cashCastle">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET.</strong></p>
		</div>
	</div>
</div>