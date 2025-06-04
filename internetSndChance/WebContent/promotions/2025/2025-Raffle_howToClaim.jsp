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

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2025/includes/2025-Raffle_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
		<h1>How To Claim</h1>
		
		<p style="text-decoration:underline;">The prize must be claimed no later than <span style="color:red;">180 days from the applicable drawing date.</span></p>
		
		<br />
		<p style="font-weight: bold; text-decoration:underline;">Failure to claim the prize within the required time frame will result in forfeiture of the prize.</p>
		<br />
		
		<p style="text-decoration: underline;">Winning Raffle numbers in promotional drawings will be posted on the Florida Lottery's website. Aside from publication on the Lottery's website, the 
		Lottery will not attempt to further notify any winner.</p>
		
		<table class="dataTbl">
			<tr>
				<th>Drawing</th>
				<th>Drawing and Publish Date</th>
				<th>Entry Period</th>
				<th>Redemption Deadline</th>
			</tr>
			<tr>
				<td>1</td>
				<td>April 14, 2025</td>
				<td>April 7 - April 13, 2025</td>
				<td>October 11, 2025</td>
			</tr>
			<tr>
				<td>2</td>
				<td>April 21, 2025</td>
				<td>April 14 - April 20, 2025</td>
				<td>October 18, 2025</td>
			</tr>
			<tr>
				<td>3</td>
				<td>April 28, 2025</td>
				<td>April 21 - April 27, 2025</td>
				<td>October 25, 2025</td>
			</tr>
			<tr>
				<td>4</td>
				<td>May 5, 2025</td>
				<td>April 28 - May 4, 2025</td>
				<td>November 1, 2025</td>
			</tr>
			<tr>
				<td>5</td>
				<td>May 12, 2025</td>
				<td>May 5 - May 11, 2025</td>
				<td>November 8, 2025</td>
			</tr>
			<tr>
				<td>6</td>
				<td>May 19, 2025</td>
				<td>May 12 - May 18, 2025</td>
				<td>November 15, 2025</td>
			</tr>
		</table>
		<p>To claim a prize won in the Promotion drawing, the prizewinner may submit the <span style="color:red; text-decoration: underline;">original Raffle Ticket</span> to any of the following:</p>
		
		<ul>
			<li><b>Lottery Retailer</b> (providing a retailer has sufficient cash on hand or otherwise has the ability to issue prize payment)</li>
			<li><b>Lottery Office</b></li>
			<li><b>Mail it to the <span style="text-decoration: underline;">Florida Lottery Headquarters at:</span></b> 
				<ul>
					<li><span style="color:red;">PICK DAILY GAMES PROMOTION <br /></span>Attention: Director of Claims Processing <br />250 Marriott Drive <br />Tallahassee, FL 32399-4027</li>
					<li>If a player mails in a winning Raffle ticket, the player shall include, in legible writing,  his/her name, mailing address, telephone number, and an email address
					along with the original raffle ticket.</li>
					<li>Any mailing must be post-marked on or before the applicable WINNING RAFFLE TICKET REDEMPTION DEADLINE date</li>
				</ul>
			</li>
		</ul>
		<p>U.S. Postal Service regulations include various restriction on mailing Lottery tickets. The risk of mailing tickets remains with the player and 
		will not be assumed by the Lottery.</p>
		<p>For additional information about claiming prizes and alternate winners, please read the Official <a href="rules_2025-Raffle">PICK DAILY GAMES PROMOTION.</a></p>
		</div>
	</div>
</div>