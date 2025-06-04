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
		<jsp:include page="../2024/includes/2024-nascar_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p><strong>Grand Prize Details:</strong> Four finalists and their guests will be whisked away to Phoenix, Arizona from November 8 &ndash; 11, 2024, for a once-in-a-lifetime VIP experience.</p>
			<p>Experience the thrill of NASCAR<sup>&reg;</sup> with our exclusive prizes. NASCAR Championship Weekend<sup>&#8482;</sup> Prize Pack (approximate value of $10,000) includes:</p>
			<ul>
				<li>Roundtrip coach airfare for finalist and one guest to Phoenix, Arizona.</li>
				<li>Hotel accommodations for finalist and one guest &ndash; double occupancy.</li>
				<li>Two Ally Curve Hospitality Club passes (includes food, beverages, and FanShield Infield Experience access) at Phoenix Raceway<sup>&reg;</sup> for admission to:</li>
					<ul>
						<li>NASCAR Xfinity Series Championship Race at 4:00 pm on Saturday, November 9, 2024.</li>
						<li>NASCAR Cup Series Championship Race at 1:00 pm on Sunday, November 10, 2024.</li>
					</ul>
				<li>Two passes for VIP Experiences at Phoenix Raceway<sup>&reg;</sup> during NASCAR Championship Weekend for Saturday, November 9, and Sunday, November 10, 2024, including:</li>
					<ul>
						<li>NASCAR Cup Series garage pass.</li>
						<li>NASCAR team hauler tour.</li>
						<li>MRN Radio booth tour.</li>
						<li>Pace car rides.</li>
						<li>Pre-Race attendance.</li>
						<li>Victory Lane access.</li>
					</ul>
				<li>Two Official NASCAR Championship Weekend event programs.</li>
				<li>Two Souvenir Gift bags, each with a retail value of at least $250.</li>
				<li>Two Racing Electronics scanner rentals for use while at Phoenix Raceway<sup>&reg;</sup>.</li>
				<li>Two tickets to a Welcome Dinner on Friday, November 8, 2024.</li>
				<li>Concierge service.</li>
				<li>Ground transportation to and from airports, hotel, and activities in Phoenix.</li>
				<li>All meals while in Phoenix, including the Welcome Dinner on Friday, November 8, 2024.</li>
			</ul>
				
			<p>Terms and conditions apply. See the official <a href = 'rules_2024-nascar'>rules</a> for details.</p>
		</div>
	</div>
</div>