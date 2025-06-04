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
		<h1>Prizes</h1>
			<p>A total of six weekly drawings will be held to award $60,000 in cash prizes! In each drawing, 100 winners will receive a $100 Raffle prize to redeem in-store at any Florida Lottery retailer. See the prize chart below:</p>
			
		<table class="dataTbl" style="width: 600px;">
		<tr>
			<th>Raffle Winners</th>
			<th>Raffle Winners Per Draw</th>
			<th>Total Raffle Winners</th>
			<th>Total Raffle Prizes</th>
		</tr>
		<tr>
			<td>$100</td>
			<td>100</td>
			<td>600</td>
			<td>$60,000</td>
		</tr>
		
		</table>
		
		<p style="text-align:center; text-decoration: bold;">All $100 Raffle prizes must be redeemed within 180 days of the winning drawing date. </p>
		<p>For further details, click on the "RULES" tab above. 
		</p>
		</div>
	</div>
</div>