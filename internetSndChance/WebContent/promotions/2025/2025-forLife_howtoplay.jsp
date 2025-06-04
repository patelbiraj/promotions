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
<script type="text/javascript">var page = 3;</script>

<div id="main" class="forLife howtoplay">
	<div id="topBanner">
		<jsp:include page="../2025/includes/2025-forLife_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
		<h1>How To Play</h1>
		
			<p>Beginning <span style="font-weight: bold;">July 1 through August 10, 2025</span> you can enter the<span style="font-weight: bold;"> FOR LIFE BONUS PLAY</span>
			for a chance to win <span style="font-weight: bold;"> up to $25,000!</span></p>		
			
			<p>It's simple to participate:</p>
			<ol>
				<li><p><span style="font-weight: bold;">Enter any non-winning WEEK FOR LIFE Scratch-Off tickets</span> ($1, $2, $5, $10, and $20) and
				<span style="font-weight: bold;"> any CASH4LIFE Draw game ticket</span> purchased during each entry period.</p></li>
				<li>Submit your tickets through the <span style="font-weight: bold;"> Lottery's website</span> or <span style="font-weight: bold;"> mobile app</span>
				for an extra chance to win!</li>
			</ol>
			
			<h2>DRAWINGS</h2>
			<p>Two drawings will be held for tickets entered by midnight ET on the last night of each entry period.</p>
			<h3 style="text-align:center;">Draw Schedule</h3>
			
			<table class="dataTbl">
				<tr>
					<th>Draw</th>
					<th>Draw Entry Period</th>
					<th>Draw Dates</th>
					<th>Winners Announced</th>
				</tr>
				<tr>
					<td>1</td>
					<td>07/01/2025 - 07/20/2025</td>
					<td>07/22/2025</td>
					<td>07/24/2025</td>
				</tr>
				<tr>
					<td>2</td>
					<td>07/21/2025 - 08/10/2025</td>
					<td>08/12/2025</td>
					<td>08/14/2025</td>
				</tr>
			</table>
			
			<p style="font-weight:bold;">The overall odds of winning will vary based on the total number of entries received for each entry period.</p>
		
			<h2 style="text-align: left;">Bonus Entries</h2>
		
			<p style="padding-top: 3%;">Enter a complete set of non-winning WEEK FOR LIFE family of Scratch-Off tickets ($1, $2, $5, $10 and $20) AND any 
			eligible CASH4LIFE ticket during the same entry period to receive 50 bonus entries. </p>
			

			<h3 style="text-align: center;">Draw Entries and Bonus Entries</h3>
			<table class="dataTbl">
				<tr>
					<th>Game</th>
					<th>Price</th>
					<th># of Entries</th>
				</tr>
				<tr>
					<td>$10,000 A WEEK FOR LIFE</td>
					<td>$20</td>
					<td>20</td>
				</tr>
				<tr>
					<td>$5,000 A WEEK FOR LIFE</td>
					<td>$10</td>
					<td>10</td>
				</tr>
				<tr>
					<td>$2,500 A WEEK FOR LIFE</td>
					<td>$5</td>
					<td>5</td>
				</tr>
				<tr>
					<td>$1,000 A WEEK FOR LIFE</td>
					<td>$2</td>
					<td>2</td>
				</tr>
				<tr>
					<td>$500 A WEEK FOR LIFE</td>
					<td>$1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>CASH4LIFE</td>
					<td>$2+</td>
					<td>2+</td>
				</tr>
				<tr>
					<td colspan="2">Complete FOR LIFE Family ($1, $2, $5, $10, $20, and CASH4LIFE)</td>
					<td>50 BONUS</td>
				</tr>
			</table>
			
			<h2>Promo Codes</h2>
			<p>Keep the excitement going! During the bonus play promotion, enter special <span style="font-weight: bold;">promo codes</span> for bonus
			entries and boost your odds of winning. Don't miss out - every code gets you closer to a prize!</p>
			
			<p>Each <span style="font-weight: bold;">promo code </span>is valid only for the <span style="font-weight: bold;">specific entry period</span> it's designated for.</p>
			<ul style="font-weight: bold;">
				<li>Promo codes can only be used once and must be entered with a non-winning WEEK FOR LIFE Scratch-Off ticket or an eligible CASH4LIFE ticket.</li>
				<li>Promo codes are available through official Florida Lottery social media platforms, participating retail locations, online advertisements, and select retailer partners mobile apps.</li>
			</ul>
			<a style="margin-top:2%; margin-bottom: 3%;" class="htpButton" href="entry_2025-forLife">ENTER NOW!</a>
			<br />
			<p class = "htpFootnote" style="text-align:center;"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.</strong></p>
		
		</div>
	</div>
</div>