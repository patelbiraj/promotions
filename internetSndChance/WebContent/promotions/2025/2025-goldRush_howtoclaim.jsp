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
<script type="text/javascript">var page = 6;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2025/includes/2025-goldRush_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title" /></h1>
			<p><u>The prize must be claimed no later than ten calendar days after being notified (by phone or email) by the Florida Lottery that you are a winner.</u></p>
			
			<p><u><strong>Failure to submit all required documentation and claim the prize within the required time frame will result in forfeiture of the prize.</strong></u></p>
			<table class="dataTbl">
				<thead>
					<tr>
						<th class="heading">Drawing</th>
						<th class="heading">Drawing Date</th>
						<th class="heading">Entry Period</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>February 11, 2025</td>
						<td>January 13, 2025 through February 9, 2025</td>
						
					</tr>
					<tr>
						<td>2</td>
						<td>March 11, 2025</td>
						<td>February 10, 2025 through March 9, 2025</td>
						
					</tr>
					<tr>
						<td>3</td>
						<td>April 8, 2025</td>
						<td>March 10, 2025 through April 6, 2025</td>
						
					</tr>
				</tbody>
			</table>
			<p>To claim a prize won in the Promotion drawing, the prizewinner must submit to any Florida Lottery District Office the following documentation:</p>
			
			<ol>
				<li>Completed and signed Winner Claim Form: <a href="https://www.flalottery.com/exptkt/claimForm_en.pdf">English</a>
				<a href="https://www.flalottery.com/exptkt/spanishWinnerClaim.pdf">Spanish</a></li>
				<li>Copy of acceptable identification that is current or was issued within the past five years and bears a serial number or other identifying number.</li>
			</ol>
			
			<p><strong>Acceptable forms of identification include:</strong></p>
			
			<ul>
				<li>An identification card or driver's license issued by a public agency authorized to issue driver's licenses in Florida, a state other than Florida, a territory of the U.S., Canada, or Mexico.</li>
				<li>A passport issued by the U.S. Department of State.</li>
				<li>A passport issued by a foreign government.</li>
				<li>An identification card issued by any branch of the U.S. armed forces.</li>
				<li>An identification card issued by the United States Bureau of Citizenship and Immigration Services.</li>
			</ul>
			
			<p>The required documentation should be delivered to one of the <a href="https://floridalottery.com/about/lottery-offices">Lottery Offices</a> or mailed to:</p>
			
			<p>Florida Lottery<br>
				<strong>GOLD RUSH MULTIPLIER BONUS PLAY PROMOTION</strong><br>
				<strong>Attention: Director of Claims Processing</strong><br>
				250 Marriott Drive<br>
				Tallahassee, FL 32399-4027
			</p>
			
			<p>U.S. Postal Service regulations include various restrictions on mailing Lottery tickets. The risk of mailing tickets remains with the player and will not be assumed by the Florida Lottery.</p>
			<p>For additional information about claiming prizes and alternate winners, please read the Official <a href="rules_2025-goldRush">Gold Rush Multiplier Bonus Play Promotion</a>.</p>
		</div>
	</div>
</div>