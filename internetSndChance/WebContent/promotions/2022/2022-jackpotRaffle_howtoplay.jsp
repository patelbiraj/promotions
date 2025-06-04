<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 1;
</script>
<style>
.raffleimg {
  display: block;
  float: right;
}
.aligned {
    display: flex;
    align-items: center;
}

.bullets{
	font-size: 14px;
}

ol li {
    padding: 15px 0px;
}

</style>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2022/includes/2022-jackpotRaffle_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1>
				<s:property value="messages.h1Title" />
			</h1>
			<p>During the month of October, players who purchase a single jackpot Draw game ticket (MEGA MILLIONS<sup>&reg;</sup>, JACKPOT TRIPLE PLAY&trade;, POWERBALL<sup>&reg;</sup>, or FLORIDA LOTTO<sup>&reg;</sup>) of $10 or more will receive a coupon for a free Raffle ticket! (Excluding QUICKTICKETS&trade;)</p>
			<p>A Raffle coupon will print automatically after purchase of qualifying jackpot tickets. Players can elect to redeem the Raffle coupon immediately, or at any time during the promotional period prior to the coupon expiration date of 10/31/22. When the Raffle coupon is redeemed, a Raffle ticket will be produced, and the player will be automatically entered into the next Raffle drawing.</p>
			<p>Click <a href="https://floridalottery.com/exptkt/CopyofJackpotRafflePromotionEligiblePlayTypeExamples.pdf">here</a> for more information on eligible play types.</p>
			<p style="font-weight:bold;">No manual entry for a drawing through the mobile app or website required. Players are automatically entered after redeeming the coupon received from their qualifying purchase.</p>

			<h2>DRAW SCHEDULE</h2>
			<p style="padding-top:10px;">For each weekly Raffle drawing, 100 winners will be selected to receive $500. Winners from each drawing will be selected from the Raffle tickets generated during the corresponding entry period.</p>
			<table class="dataTbl">
				<thead>
					<tr>
						<th width="71" class="txtc">DRAW</th>
						<th width="300" class="txtc">ISSUED PERIOD</th>
						<th width="50" class="txtc">DRAW DATE/</br>WINNERS ANNOUNCED</th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="txtc" style="font-weight: bold;">1</td>
						<td class="txtc">Saturday, October 1 &dash; Wednesday, October 5, 2022</td>
						<td class="txtc">Thursday, October 6, 2022</td>
					</tr>
					<tr>
						<td class="txtc" style="background-color: #FFFFFF; font-weight: bold;">2</td>
						<td class="txtc" style="background-color: #FFFFFF;">Thursday, October 6 &dash; Wednesday, October 12, 2022</td>
						<td class="txtc" style="background-color: #FFFFFF;">Thursday, October 13, 2022</td>
					</tr>
					<tr>
						<td class="txtc" style="font-weight: bold;">3</td>
						<td class="txtc">Thursday, October 13 &dash; Wednesday, October 19, 2022</td>
						<td class="txtc">Thursday, October 20, 2022</td>
					</tr>
					<tr>
						<td class="txtc" style="background-color: #FFFFFF; font-weight: bold;">4</td>
						<td class="txtc" style="background-color: #FFFFFF;">Thursday, October 20 &dash; Wednesday, October 26, 2022</td>
						<td class="txtc" style="background-color: #FFFFFF;">Thursday, October 27, 2022</td>
					</tr>
					<tr>
						<td class="txtc" style="font-weight: bold;">5</td>
						<td class="txtc">Thursday, October 27 &dash; Monday, October 31, 2022</td>
						<td class="txtc">Tuesday, November 1, 2022</td>
					</tr>					
				</tbody>
			</table>

			<h2 style="padding-top: 15px;">JACKPOT RAFFLE PROMOTION IS EASY AS 1-2-3</h2>
			<div class="aligned">
				<ol type="1" style="width: 400px;" class="bullets">
				  <li>Receive your Raffle coupon after buying a $10 qualifying jackpot game ticket.</li>
				  <li>Redeem your Raffle coupon for a Raffle ticket and be automatically entered into the next Raffle drawing. </li>
				  <li>Compare your Raffle ticket number to the 100 Raffle winning numbers drawn and collect your $500 prize at any Florida Lottery retailer.</li>
				</ol>
				<img src="promotions/2022/images/jpg/RaffleTickets.jpg" alt="Raffle Sample Ticket" width="382" height="244" class="raffleimg">
			</div>
			<p class="boldNote">
				 HOLD ON TO YOUR RAFFLE TICKET, YOU WILL NEED IT TO CLAIM YOUR $500 PRIZE!* </br>
				RAFFLE TICKET IS ONLY VALID FOR THE DRAWING ASSOCIATED WITH THE PERIOD IT WAS ISSUED.** 
			</p>			
		</div>
	</div>
</div>