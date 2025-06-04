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
		<jsp:include page="../2025/includes/2025-nascar_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>
				Players, start your engines! Are you ready to rev up the excitement and have the opportunity to win big? 
				Players can join the action-packed NASCAR Powerball Playoff<sup>&trade;</sup> Bonus Play for a chance to win a VIP trip to 
				the NASCAR Cup Series Championship Race<sup>&trade;</sup> at Phoenix Raceway<sup>&reg;</sup> and a chance at the $1 million grand prize. 
			</p> 
			<p>
				Florida players who purchase a POWERBALL<sup>&reg;</sup> ticket from June 30 through July 31 qualify for the Bonus Play. 
				Grab your ticket and get ready for the ride of a lifetime!
			</p>
			<p>
				Using the Florida Lottery app or the Lottery website, scan the barcode on your winning or non-winning POWERBALL ticket. Alternatively, 
				you can manually key in the ticket number on the website. Each ticket scanned or entered earns you draw entries equal to the price of your ticket.
			</p>
			<br/>
			<h2>Drawing Information</h2>
			<p></p>
			<p>
				On August 1, 2025, 50 lucky players will advance to the national drawing as a semi-finalist representing Florida. 
				From there, 16 semi-finalists will be chosen from all participating lotteries.
			</p>
			<p>
				The 16 nationwide semi-finalists will go head-to-head for the chance to win cash prizes or advance through a series of 
				Playoff drawings that mirror the elimination rounds of the NASCAR Playoffs.
			</p>
			<table class="dataTbl">
				<tr>
					<th colspan="5" class = "title">Florida Lottery Drawing<br>June 30 &ndash; July 31, 2025</th>
				</tr>
				<tr>
					<th class="heading"><font color="#0067B1">Draw</font></th>
					<th class="heading">Draw Date</th>
					<th class="heading"><font color="#FFDF4F">Winners Announced</font></th>
					<th class="heading">Winners</th>
					<th class="heading"><font color="#ED1B30">Prizes</font></th>
				</tr>
				<tr>
					<td bgcolor="#0067B1"><font color="white">1</font></td>
					<td bgcolor="#FFFFFF">August 1, 2025</td>
					<td bgcolor="#FFDF4F">August 5, 2025</td>
					<td bgcolor="#FFFFFF">50</td>
					<td bgcolor="#ED1B30"><font color="white">Florida Semi&ndash;Finalists Advance to the Next Drawing</font></td>
				</tr>
			</table>
			<br><br><br>
			<a class="htpButton" href="entry_2025-nascar">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.</strong></p>
		</div>
	</div>
</div>