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
		<jsp:include page="../2025/includes/2025-goldRush_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p>
				A total of three drawings will be held to award $1.5 million in prizes, including the chance to win cash prizes of up to $50,000! In each drawing, one winner will receive $50,000, 
				twenty winners will each receive $10,000, and fifty winners will each receive $5,000. In addition, $500,000 in instant-win $100 cash prize coupons will be randomly awarded to players 
				who enter a non-winning $25,000,000 GOLD RUSH MULTIPLIER Scratch-Off ticket throughout the promotion period. Please see the prize chart below:
			</p>
				<table class="dataTbl">
					<tr>
						<th colspan="3" class = "title">$25,000,000 GOLD RUSH MULTIPLIER INSTANT WINS</th>
					</tr>
					<tr>
						<th class="heading">Prize</th>
						<th class="heading">Number of Prizes</th>
					</tr>
					<tr>
						<td>$100 Cash Prize Coupon</td>
						<td>5,000</td>
					<tr class="total">
						<td>Total</td>
						<td>$500,000</td>
					</tr>
				</table>
				<table class="dataTbl">
					<tr>
						<th colspan="4" class = "title">DRAWING PRIZES</th>
					</tr>
					<tr>
						<th class="heading">Prize</th>
						<th class="heading">Winners per Draw</th>
						<th class="heading">Total Winners</th>
						<th class="heading">Total Prize Value</th>
					</tr>
					<tr>
						<td>$50,000</td>
						<td>1</td>
						<td>3</td>
						<td>$150,000</td>
					</tr>
					<tr>
						<td>$10,000</td>
						<td>20</td>
						<td>60</td>
						<td>$600,000</td>
					</tr>
					<tr>
						<td>$5,000</td>
						<td>50</td>
						<td>150</td>
						<td>$750,000</td>
					</tr>
					<tr class="total">
						<td>Total</td>
						<td style="font-weight: bolder;">71</td>
						<td style="font-weight: bolder;">213</td>
						<td style="font-weight: bolder;">$1,500,000</td>
					</tr>
				</table>
				
			<p class = "htpFootnote">
				<strong>All $100 cash prize coupons must be redeemed at any Florida Lottery retailer on or before Thursday, June 5, 2025.</strong>
			</p>

			<p>For further details, click on the "RULES" tab above.</p>
		</div>
	</div>
</div>