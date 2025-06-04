<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script text="text/javascript" src="js/couponDisplay.js"></script>
<s:set var="content" value="%{(#parameters.id)[0]}" />
<style>

button.couponButtonDimension {
	cursor: pointer;
	border-radius: 8px;
	display: inline-block;
	background-color: #BD1F68;
	color: #fff;
	text-align: center;
	border: none;
	height: 30px;
}

div.retailerInfo {
	background-color: rgb(211, 31, 56);
	color:#fff;
 	text-align: center;
 	height: 45px;
 	font-size: 18px;
}
</style>
<div id="main">
	<div id="topBanner">
		<jsp:include page="../2025/includes/2025-goldRush_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1>Print Coupon</h1>
			<s:if test="%{filename.isEmpty()}">	
			</s:if>
			<s:else>
				<div class="retailerInfo" style="background-color: rgb(211, 31, 56); color:#fff; text-align: center;">
					<p>
						Retailers: Please verify cash on hand <span style="text-decoration: underline;">BEFORE</span> scanning the coupon. Once scanned it must be paid out in full.
					</p>
				</div>
				<div>
				<br>
					<p>
						Redeem this coupon at any Florida Lottery retailer by 06/05/2025, 
						and receive a $<s:property value="%{couponPrice}" /> Cash Prize. Coupon can only be used one time. Must be 18 or older to play.
						Play Responsibly.
					</p>
				</div>
				<div style="text-align: center;">
					<img onload="changeCouponDimension('Small')" id="couponImg" src="images/gif/coupon/<s:property value='%{filename}' />" alt="Black Friday Promotion Coupon Image"/>
				</div>
				<h2>Retailer Instructions</h2>
				<ol>
					<li>Clear any TOTAL from your screen</li>
					<li>Scan the printed coupon via the barcode scanner (Do not insert in the reader channel) Coupons presented on a cell phone can also be scanned via the barcode scanner</li>
					<li>Confirm the transaction on the screen</li>
					<li>If redeeming a cash prize coupon, a coupon receipt will print for the cash prize, which you provide to the player with the cash prize amount indicated.</li>
					<li>Please provide the player the receipt and the prize</li>
				</ol>
			</s:else>
		</div>
	</div>
</div>