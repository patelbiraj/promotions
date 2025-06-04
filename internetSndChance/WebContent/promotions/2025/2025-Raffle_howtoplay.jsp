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

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2025/includes/2025-Raffle_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
		<h1>How To Play</h1>

		<p>
		From April 7 through May 18, 2025, or until 9,999,999 Raffle tickets are issued, players have an exciting chance to win a $100 Raffle prize each week. Players who purchase a single PICK ticket with Advance Play for seven or more days will receive a free Raffle ticket for the next available drawing. 
		</p>
		
		<h2>DRAWINGS</h2>
		<table style="margin: 0 auto; width:700px; text-align:center; font-size:15px; " class="dataTbl">
					<tr style=" color:#fff; background-color:#000; height: 50px;" >
						<th style="width:100px; vertical-align:middle; ">Draw</th>
						<th style="vertical-align: middle">Draw Date/Winning Raffle Numbers Announced</th>
						<th style=";  vertical-align:middle;">From Raffle Tickets Issued*</th>
					</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">1</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">April 14, 2025</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">April 7 - April 13, 2025</td>
					</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">2</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">April 21, 2025</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">April 14 - April 20, 2025</td>
					</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">3</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">April 28, 2025</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">April 21 - April 27, 2025</td>
											</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">4</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">May 5, 2025</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">April 28 - May 4, 2025</td>
											</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">5</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">May 12, 2025</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">May 5 - May 11, 2025</td>
						
					</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">6</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">May 19, 2025</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">May 12 - May 18, 2025</td>
						
					</tr>
				</table>
				
				<p style="margin-top: 5%">*Drawings will be held from the pool of Raffle tickets issued that week, unless the 9,999,999th Raffle ticket is issued, in which case the remaining drawing(s) will include all Raffle tickets issued not previously selected as winners.</p>
		</div>
	</div>
</div>