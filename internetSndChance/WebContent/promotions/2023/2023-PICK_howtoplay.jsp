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

<div id="main" class="PICK">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-PICK_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1>how to play</h1>
			<p><span><em>No manual entry for a drawing through the mobile app or website is required. All prizes are coupons or discounts received upon purchase. </em></span></p>
			<div id="top">
				<div class="top_words">
					<h3>bogo mondays!</h3>
					<p>Every Monday from July 3 through July 31, 2023, is BOGO Monday! Players who purchase a $1 or more PICK game STRAIGHT play will instantly win a coupon for a free PICK 3 $1 STRAIGHT Quick Pick ticket good for the next available drawing. </p>
					<p>All coupons must be redeemed by Friday, September 29, 2023. Coupons must be redeemed at a Lottery retailer and cannot be claimed by mail or for a cash prize. </p>
					<p><br></p>
				</div>
				<div class="top_img_left">
					<img style="vertical-align: top;" src="promotions/2023/images/png/coupon_topleft.png"
							alt="CASH4LIFE" width="150" height="170">
				</div>
				<div class="top_img_right">
					<img class="right_coupon" src="promotions/2023/images/png/coupon_topright.png"
							alt="CASH4LIFE" width="150" height="262">
				</div>
				<div class="bot_img">
					<img src="promotions/2023/images/png/coupon_botleft.png"
						alt="CASH4LIFE" width="150" height="260">
				</div>
				<div class="bot_words">
					<h3>fireball fridays!</h3>
					<p>Every Friday from July 7 through July 28, 2023, is Fireball Friday! Players will receive a 50% off discount on the purchase of a PICK plus FIREBALL play. The 50% discount will automatically apply to each qualifying purchase of a PICK plus FIREBALL ticket.
					<p>The 50% discount applies to a single-play purchase that includes FIREBALL and does not exceed $48.
				</div>
				<div class="bot_footer">
					<p style="text-align: center; font-size: 11px; margin-left: 10px; margin-right: 10px;"><span><em>PICK 3 TICKETS ASSOCIATED WITH THE GROUPER SUPER SAMPLER ARE NOT INCLUDED IN THIS PROMOTION.</em></span>
					<p style="text-align: center; font-size: 11px;"><span><em>ADVANCE PLAYS, CANCELED, AND CONTINUATION TICKETS ARE NOT ELIGIBLE FOR THE 50% DISCOUNT.</em></span>
				</div>
			</div>
		</div>
	</div>
</div>