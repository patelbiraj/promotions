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
		<jsp:include page="../2024/includes/2024-Raffle_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1>How to Claim</h1>
			<p>The prize must be claimed no later than <span style = "color: red; text-decoration: underline;">180 days from the applicable drawing date.</span></p>
			
			<p style = "font-weight: bold; text-decoration: underline;">Failure to claim the prize within the required time frame will result in forfeiture of the prize.</p>
			
			<p style = "text-decoration: underline;">Winning Raffle numbers in promotional drawings will be posted on the Florida Lottery's website. Aside from publication on the Lottery's website, the Lottery will not attempt to further notify any winner.</p>
			
			<table class="dataTbl">
					<tr>
						<th>Drawing</th>
						<th>Drawing Date</th>
						<th>Entry Period</th>
						<th>Redemption Deadline</th>
					</tr>
					<tr>
						<td>1</td>
						<td>September 30, 2024</td>
						<td>September 23, 2024 - September 29, 2024</td>
						<td>March 29, 2025</td>
					</tr>
					<tr>
						<td>2</td>
						<td>October 7, 2024</td>
						<td>September 30, 2024 - October 6, 2024</td>
						<td>April 5, 2025</td>
					</tr>
					<tr>
						<td>3</td>
						<td>October 14, 2024</td>
						<td>October 7, 2024 - October 13, 2024</td>
						<td>April 12, 2025</td>
					</tr>
					<tr>
						<td>4</td>
						<td>October 21, 2024</td>
						<td>October 14, 2024 - October 20, 2024</td>
						<td>April 19, 2025</td>
					</tr>
					<tr>
						<td>5</td>
						<td>October 28, 2024</td>
						<td>October 21, 2024 - October 27, 2024</td>
						<td>April 26, 2025</td>
					</tr>
				</table>
			<p>To claim a prize won in the Promotion drawing, the prizewinner may submit the <span style = "color: red; text-decoration: underline;">original Raffle Ticket</span> to any of the following:</p>
	
			<ul>
				<li><span style = "font-weight: bold">Lottery Retailer</span> (providing a retailer has sufficient cash on hand or otherwise has the ability to issue prize payment)</li>
				<li><span style = "font-weight: bold">Lottery Office</span></li>
				<li><span style = "font-weight: bold">Mail it to the <span style = "text-decoration: underline">Florida Lottery Headquarters</span> at:</span>
					<ul>
						<li>
							<span style = "font-weight: bold">Florida Lottery </span><br>
							<span style = "color: red; font-weight: bold">LIMITED-TIME $500 RAFFLE PROMOTION</span><br>
							<span style = "font-weight: bold">Attention: Director of Claims Processing</span><br>
							250 Marriott Drive<br>
							Tallahassee, FL 32399-4027
						</li>
						<br>
						<li>
						If a player mails in a winning Raffle ticket, the player shall include, in legible writing, his/her name, mailing address, telephone number, and an email address, along with the original ticket.
						</li>
						<br>
						<li>
						Any mailing must be post-marked on or before the applicable WINNING RAFFLE TICKET REDEMPTION DEADLINE date.
						</li>
					</ul>
				</li>
			</ul>
		
			
			<p>U.S. Postal Service regulations include various restrictions on mailing Lottery tickets. The risk of mailing tickets remains with the player and will not be assumed by the Lottery.</p>
			
			
			<p>For additional information about claiming prizes and alternate winners, please read the Official <a href="rules_2024-Raffle">LIMITED-TIME $500 RAFFLE PROMOTION</a>.</p>
		</div>
	</div>
</div>