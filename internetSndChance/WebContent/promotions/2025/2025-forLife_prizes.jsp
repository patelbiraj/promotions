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
		<h1>Prizes</h1>
			<p>A total of two drawings will be held to award 194 cash prizes from $1,000 up to $25,000! 
			In each drawing, two winners will receive $25,000, twenty winners will each receive $5,000, 
			and seventy-five winners will each receive $1,000. Please see the prize chart below:</p>
			
			<p>Get your tickets in for a chance to win these amazing prizes!</p>

		<table class="dataTbl" style="width: 600px;">
		<tr>
			<th>Prize</th>
			<th>Winners Per Draw</th>
			<th>Total Winners</th>
			<th>Total Prize Value</th>
		</tr>
		<tr>
			<td>$25,000</td>
			<td>2</td>
			<td>4</td>
			<td>$100,000</td>
		</tr>
		<tr>
			<td>$5,000</td>
			<td>20</td>
			<td>40</td>
			<td>$200,000</td>
		</tr>
		<tr>
			<td>$1,000</td>
			<td>75</td>
			<td>150</td>
			<td>$150,000</td>
		</tr>
		<tr>
			<td>TOTAL</td>
			<td>97</td>
			<td>194</td>
			<td>$450,000</td>
		</tr>
		
		</table>
	
		<p>For further details, click on the "RULES" tab above. 
		</p>
		</div>
	</div>
</div>