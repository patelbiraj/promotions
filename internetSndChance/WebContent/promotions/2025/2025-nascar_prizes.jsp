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
		<jsp:include page="../2025/includes/2025-nascar_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p><strong>Grand Prize Details: </strong> 
				 Four finalists and their guests will be whisked away to Phoenix,  Arizona, from October 31 to November 2, 2025, for a once-in-a-lifetime VIP experience.
			</p>
			<p>
				Experience the thrill of NASCAR<sup>&reg;</sup> with our exclusive prizes. NASCAR Championship Weekend<sup>&trade;</sup> Prize Pack (approximate value of $10,000) includes:
			</p>
			<ul>
				<li>Roundtrip coach airfare for  the finalist and one guest to Phoenix, Arizona.</li>
				<li>Hotel accommodations for the finalist and one guest&ndash;double occupancy.</li>
				<li>Two Ally Curve Hospitality Club passes (includes food, beverages, and Desert Diamond Casino Infield Experience access) at Phoenix Raceway for admission to:</li>
					<ul>
						<li>NASCAR Xfinity Series Championship Race  on Saturday, November 1, 2025.</li>
						<li>NASCAR Cup Series Championship Race on Sunday, November 2, 2025.</li>
					</ul>
				<li>Two passes for VIP Experiences at Phoenix Raceway during NASCAR Championship Weekend for Saturday, November 1, and Sunday, November 2, 2025, including:</li>
					<ul>
						<li>NASCAR Cup Series garage pass.</li>
						<li>NASCAR team hauler tour.</li>
						<li>MRN Radio booth tour.</li>
						<li>Pace car rides.</li>
						<li>Pre-Race Attendance.</li>
						<li>Victory Lane access.</li>
					</ul>
				<li>Two Official NASCAR Championship Weekend Event Programs.</li>
				<li>Two Souvenir Gift bags, each with a retail value of at least $250.</li>
				<li>Two Racing Electronics Scanner Rentals for use while at Phoenix Raceway.</li>
				<li>Ground transportation to and from airports, hotel, and activities in Phoenix.</li>
				<li>All meals while in Phoenix.</li>
			</ul>
				
			<p>Terms and conditions apply. See the official <a href = 'rules_2025-nascar'>rules</a> for details.</p>
		</div>
	</div>
</div>