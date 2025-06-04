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
		<jsp:include page="../2024/includes/2024-nascar_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>Players, start your engines! Are you ready to rev up the excitement and have the opportunity to win big? 
			<br>
			<br>
			Players can join the action-packed NASCAR Powerball Playoff<sup>&#8482;</sup> Bonus Play for a chance to win a VIP trip to the NASCAR Championship Weekend<sup>&#8482;</sup> at Phoenix Raceway<sup>&reg;</sup> and a chance at the $1 million grand prize. 
			</p> 
			<p>Florida players who purchase a POWERBALL<sup>&reg;</sup> ticket during the month of July qualify to enter the Bonus Play. Grab your ticket and get ready for the ride of a lifetime!</p>
			<p>Locate the barcode at the bottom of your POWERBALL ticket and scan it using the Florida Lottery mobile app, or you can manually enter your ticket by typing in the 19-digit ticket number. Each ticket scanned or entered earns you draw entries equal to the price of your ticket.</p>
			
			<h1>Drawing Information</h1>
			<p>On August 1, 2024, 50 lucky players will advance to the national drawing as semi-finalists representing Florida. From there, 16 nationwide semi-finalists will go head-to-head for the chance to win cash prizes or advance through a series of Playoff drawings that mirror the elimination rounds of the NASCAR Playoffs.</p> 
			<table class="dataTbl">
				<caption style="margin-bottom: 20px; font-size: 40px;">Florida Lottery Drawings</caption>
				<tr>
					<th>Draw</th>
					<th>Draw Date</th>
					<th>Winners Announced</th>
					<th class = "golden">Winners</th>
					<th class = "wide">Prizes</th>
				</tr>
				<tr>
					<td>1</td>
					<td>August 1, 2024</td>
					<td>August 5, 2024</td>
					<td>50</td>
					<td>Florida Semi-Finalists Advance to the Next Drawing</td>
				</tr>
				
			</table>
			
			<table class="dataTbl">
				<caption style="margin-bottom: 20px; font-size: 40px;">MUSL Playoff Drawings</caption>
				<tr>
					<th>Draw</th>
					<th>Draw Date</th>
					<th>Winners Announced</th>
					<th class = "golden">Winners</th>
					<th class = "wide">Prizes</th>
				</tr>
				<tr>
					<td>1</td>
					<td>August 13, 2024</td>
					<td>September 1, 2024</td>
					<td>16</td>
					<td>Nationwide semi-finalists advance to the next drawing.</td>
				</tr>
				<tr>
					<td>2</td>
					<td>September 12, 2024</td>
					<td>September 21, 2024</td>
					<td>12</td>
					<td>Eliminated semi-finalists win $2,500.</td>
				</tr>
				<tr>
					<td>3</td>
					<td>October 3, 2024</td>
					<td>October 13, 2024</td>
					<td>8</td>
					<td>Eliminated semi-finalists win $5,000.</td>
				</tr>
				<tr>
					<td>4</td>
					<td>October 17, 2024</td>
					<td>November 3, 2024</td>
					<td>4</td>
					<td>Eliminated semi-finalists win $7,500. Finalists win a VIP trip to Phoenix.</td>
				</tr>
				<tr >
					<td>5</td>
					<td>November 10, 2024</td>
					<td>November 10, 2024</td>
					<td>3</td>
					<td>$10,000</td>
				</tr>
				<tr>
					<td></td>
					<td>November 10, 2024</td>
					<td>November 10, 2024</td>
					<td>1</td>
					<td>$1,000,000 </td>
				</tr>
				
			</table>
			
			<p>The Playoff drawings will determine the four finalists who will win a VIP trip for two to the NASCAR Championship Weekend<sup>&#8482;</sup> at 
			Phoenix Raceway<sup>&reg;</sup> (taking place from November 8 - 11, 2024). Plus, secure entry into the live broadcast of the $1 million grand prize drawing, 
			airing on NBC before the start of the 2024 NASCAR Cup Series Championship Race<sup>&#8482;</sup>.</p>
			
			<a class="htpButton" href="entry_2024-nascar">ENTER NOW!</a>
			<p class = "htpFootnote"><strong>TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET.</strong></p>
		</div>
	</div>
</div>