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
		<jsp:include page="../2024/includes/2024-holidayBlowout_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p><strong>Win up to $20,000!</strong>
			<br>For each of the two bonus play drawings, one lucky winner will each receive a top prize of $20,000, 
			25 winners will each receive $5,000, and 75 winners will each receive $1,000. Plus, more than 
			$4.5 million in instant-win cash coupons will be awarded throughout the promotion.
			</p>
			<br>
				<h3><caption>$5,000,000 HOLIDAY BLOWOUT BONUS PLAY PRIZES</caption></h3>
				<table class="dataTbl">
					<tr>
						<th colspan="3" class = "title">Instant Wins</th>
					</tr>
					<tr>
						<th>Prize</th>
						<th>Number of Prizes</th>
						<th>Total Prize Value</th>
					</tr>
					<tr>
						<td>$200 Cash Prize Coupon</td>
						<td>5,000</td>
						<td>$1,000,000</td>
					</tr>
						<tr>
						<td>$100 Cash Prize Coupon</td>
						<td>10,000</td>
						<td>$1,000,000</td>
					</tr>
					<tr>
						<td>$50 Cash Prize Coupon</td>
						<td>22,500</td>
						<td>$1,125,000</td>
					</tr>
					<tr>
						<td>$25 Cash Prize Coupon</td>
						<td>57,400</td>
						<td>$1,435,000</td>
					</tr>
					<tr>
						<td>Total</td>
						<td>94,900</td>
						<td>$4,560,000</td>
					</tr>
				</table>
				<table class="dataTbl">
					<tr>
						<th colspan="3" class = "title">Drawing Prizes</th>
					</tr>
					<tr>
						<th>Prize</th>
						<th>Winners per Draw</th>
						<th>Total Prize Value</th>
					</tr>
					<tr>
						<td>$20,000</td>
						<td>1</td>
						<td>$40,000</td>
					</tr>
					<tr>
						<td>$5,000</td>
						<td>25</td>
						<td>$250,000</td>
					</tr>
					<tr>
						<td>$1,000</td>
						<td>75</td>
						<td>$150,000</td>
					</tr>
					<tr>
						<td>Total</td>
						<td>101</td>
						<td>$440,000</td>
					</tr>
				</table>
			<p>For further details, click on the "RULES" tab above.</p>
		</div>
	</div>
</div>