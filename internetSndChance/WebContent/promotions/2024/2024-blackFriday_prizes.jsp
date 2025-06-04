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
		<jsp:include page="../2024/includes/2024-blackFriday_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>
				One Bonus Play drawing will be held where ten lucky winners will each receive a top prize of $5,000! Plus, $95,000 in $10 and $20 
				instant-win cash prize coupons will be randomly awarded throughout the promotion period.
			</p>
			<br>
				<table class="dataTbl">
					<tr>
						<th colspan="3" class = "title">BLACK FRIDAY INSTANT WINS</th>
					</tr>
					<tr>
						<th class="heading">Prize</th>
						<th class="heading">Number of Prizes</th>
						<th class="heading">Total Prize Value</th>
					</tr>
					<tr>
						<td>$10 Cash Prize Coupon</td>
						<td>2,500</td>
						<td>$25,000</td>
					</tr>
						<tr>
						<td>$20 Cash Prize Coupon</td>
						<td>3,500</td>
						<td>$70,000</td>
					</tr>
					<tr class="total">
						<td>Total</td>
						<td>6,000</td>
						<td>$95,000</td>
					</tr>
				</table>
				<table class="dataTbl">
					<tr>
						<th colspan="3" class = "title">DRAWING PRIZES</th>
					</tr>
					<tr>
						<th class="heading">Prize</th>
						<th class="heading">Winners per Draw</th>
						<th class="heading">Total Prize Value</th>
					</tr>
					<tr>
						<td>$5,000</td>
						<td>10</td>
						<td>$50,000</td>
					</tr>
					<tr class="total">
						<td>Total</td>
						<td style="font-weight: bolder;">10</td>
						<td style="font-weight: bolder;">$50,000</td>
					</tr>
				</table>
			<p>For further details, click on the "RULES" tab above.</p>
		</div>
	</div>
</div>