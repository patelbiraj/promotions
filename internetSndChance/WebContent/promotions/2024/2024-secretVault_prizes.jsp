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
<script type="text/javascript">var page = 2;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2024/includes/2024-secretVault_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p><strong>Win up to $25,000!</strong>
			<br>For each of the two bonus play drawings, two lucky winners will each receive a top prize of 
			$25,000, 20 winners will each receive $5,000, and 75 winners will each be awarded $1,000.</p>
			<br>
				<h3><caption>CASH VAULT Bonus Play Prizes</caption></h3>
				<table class="dataTbl">
				
					<tr>
						<th>Prizes</th>
						<th>Winners Per Draw</th>
						<th>Total Winners</th>
					</tr>
					<tr>
						<td>Top Prize: $25,000</td>
						<td>2</td>
						<td>4</td>
					</tr>
					<tr>
						<td>Second Prize: $5,000</td>
						<td>20</td>
						<td>40</td>
					</tr>
					<tr>
						<td>Third Prize: $1,000</td>
						<td>75</td>
						<td>150</td>
					</tr>	
				</table>
			<p>For further details, click on the "RULES" tab above.</p>
		</div>
	</div>
</div>