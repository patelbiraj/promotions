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

<div id="main">
  <div id="topBanner">
    <jsp:include page="../2021/includes/2021-floridaJackpots_navigation.jsp"></jsp:include>
  </div>
  <div id="mainContentWrap">
    <div id="mainContent">
    
      <h1>
        <s:property value="messages.h1Title"/> 
      </h1>
      
      <p><strong>53ER21 &ndash; 15 Florida Jackpots Bonus Play Promotion.</strong></p>
      
      <ol>
        <li>Beginning February 1, 2021, and continuing through February 28, 2021, ("Promotion Period") the Florida Lottery will conduct the Florida Jackpots Bonus Play Promotion ("Promotion"). All FLORIDA LOTTO<sup>&reg;</sup> or JACKPOT TRIPLE PLAY&trade; lottery tickets purchased by players can be entered into a drawing for a chance to win cash prizes. Both winning and non-winning FLORIDA LOTTO<sup>&reg;</sup> or JACKPOT TRIPLE PLAY&trade; tickets of any value that are purchased during the Promotion Period may be used to enter the Promotion. </li>

		<li><strong>How to Enter.</strong></li>
			<ol type="a">
				<li>To enter a FLORIDA LOTTO or JACKPOT TRIPLE PLAY lottery ticket into the Florida Jackpots Bonus Play drawing, a player may use the Florida Lottery's website at <a href = "http://www.flalottery.com/">flalottery.com.</a> or use the Florida Lottery's Mobile Convenience App ("App"). </li>
					<ol>1. Website. On the home page of the Florida Lottery's website, players are to click on the Second Chance tab, select the Florida Jackpots Bonus Play Promotion and follow the directions or go directly to <a href = "http://flalottery.com/floridajackpots">flalottery.com\floridajackpots</a> and follow the directions. Players will be prompted to log-in or register. Players using the website may manually enter the 19-digit ticket number (omitting spaces and dashes) on the ticket entry page. </ol>
					<ol>2. App. On the App, players may click on either of the Promotions buttons, select the Florida Jackpots Bonus Play Promotion and follow the directions. Players will be prompted to log-in or register if not already logged in. A Promotions button is located on the main menu and also on the bottom navigation bar. Players may scan the barcode on the bottom of a ticket or may manually enter the 19-digit ticket number (located near the bottom of the ticket) on the ticket entry page.</ol>
					<ol>3. Regardless of whether a player chooses to participate in the Promotion by using the web browser or the App, the following provisions shall apply:</ol>
						<ol type="a" style="padding-left:30px">
							<li>the player may use the same account login information to enter tickets;</li> 
							<li>the player will only be required to register one time; and</li>
							<li>the player's entry history will be cumulative among the entry platforms.</li>
						 </ol>
				<li>Any attempt by a player to use more than one account by using multiple or different email addresses, identities, registrations, logins, or any other methods will subject the player and any associated entries to disqualification. </li>
				<li>A player may earn multiple entries during the entry period; however, each ticket number can only be  entered one time to earn one entry. The purchase price of a ticket does not affect the number of entries produced. Entries that include training tickets that were produced by a retailer terminal while in training mode or tickets with invalid ticket numbers will be disqualified from the drawing. The odds of winning depend on the number of entries in the drawing. All entries are subject to validation by the Florida Lottery and may be disqualified if eligibility requirements are not met. Lottery tickets should not be mailed to the Lottery for entry into the drawing. Lottery tickets received in the mail by the Florida Lottery will not be entered into the drawing and will not be returned. </li>
				<li>Promo Codes. Players who purchase a FLORIDA LOTTO with Double Play&trade; ticket, or JACKPOT TRIPLE PLAY with Combo ticket will receive a promo code printed on the ticket that can be entered into the drawing to earn five (5) additional entries in the drawing. The promo code must be entered at the time the player enters the corresponding ticket into the drawing. A total of four (4) different promotional codes will be offered during the Promotion, one for each week of the Promotion. Each promo code is only valid for the corresponding week for which it is designated and can only be entered one time. However, more than one different promo code may be entered with a different FLORIDA LOTTO with Double Play&trade; ticket, or JACKPOT TRIPLE PLAY with Combo ticket during the corresponding week for which it is designated. </li>
			</ol>
		<li><strong>Drawing and Number of Prizes.</strong></li>
		<p>The Florida Lottery will conduct one drawing in the Promotion on March 3, 2021. Prizewinners for the drawing will be randomly selected from entries earned, submitted and received before midnight ET on February 28, 2021. Prizewinners will be randomly selected using a certified random number generation process. The drawing shall be public, held in Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm. The drawing date and entry period is as follows:</p>
			<table class="dataTbl">
				<thead>
					<tr>
						<th class="txtc">Number of Drawings</th>
						<th class="txtc">Drawing Date</th>
						<th class="txtc">Entry Period</th>
						
					</tr>
				</thead>
				<tbody>
				<tr>
					<td class="txtc">1</td>
					<td class="txtc">March 3, 2021</td>
					<td  class="txtc">February 1, 2021 - February 28, 2021</td>
					
				</tr>
				</tbody>
			</table>
			<table class="dataTbl">
				<thead>
					<tr>
						<th class="txtc">Prizes</th>
						<th class="txtc">Prize Amount</th>
						<th class="txtc">Number of Prizes</th>
						
					</tr>
				</thead>
				<tbody>			
				<tr>
					<td class="txtc">Top Prize</td>
					<td class="txtc">$50,000</td>
					<td  class="txtc">1</td>
					
				</tr>
				<tr>
					<td class="txtc">Second Prize</td>
					<td class="txtc">$10,000</td>
					<td  class="txtc">5</td>					
				</tr>
				<tr>
					<td class="txtc">Third Prize</td>
					<td class="txtc">$5,000</td>
					<td  class="txtc">10</td>					
				</tr>		
				<tr>
					<td class="txtc">Fourth Prize</td>
					<td class="txtc">$2,500</td>
					<td  class="txtc">30</td>					
				</tr>	
				<tr>
					<td class="txtc">Fifth Prize</td>
					<td class="txtc">$1,000</td>
					<td  class="txtc">75</td>					
				</tr>	
				<tr>
					<td class="txtc">Total</td>
					<td class="txtc">&nbsp;</td>
					<td  class="txtc">121</td>					
				</tr>				
				</tbody>		
			</table>				
				
			<p>In the drawing, the Florida Lottery will select a total of 271 entries. The first valid entry drawn will win the top prize of $50,000. The second through sixth valid entries drawn will each win a second prize of $10,000. The seventh through sixteenth valid entries drawn will each win a third prize of $5,000. The seventeenth through forty-sixth valid entries drawn will each win a fourth prize of $2,500. The forty-seventh through one hundred and twenty-first valid entries drawn will each win a fifth prize of $1,000. The one hundred and twenty-second through the remaining valid entries drawn will be alternates and used in the order in which they were drawn and in the order of need to select an alternate prizewinner in the event a prizewinner cannot be notified as set forth is subsection (4) below, or fails to timely provide required claim documentation as set forth in subsection (5) below. A total of 121 prizes will be available.</p>
		<li><strong>Prizewinner Notification. </strong></li>
       		<ol type="a">
				<li>The prizewinners in the drawing will be announced and posted on <a href = "http://www.flalottery.com/">flalottery.com</a> on March 8, 2021 or as soon thereafter as practicable. </li> 
				<li>The Florida Lottery will attempt to notify each prizewinner by telephone or email using the contact information provided in the prizewinner’s registration data no later than one business day after the prizewinners are posted on the Florida Lottery’s website. The Florida Lottery deems the prizewinner’s registration data as the prizewinner’s official contact information, including the physical mailing address. The Florida Lottery will not attempt to further locate a prizewinner if attempts to reach the prizewinner by telephone or email are unsuccessful. If the Florida Lottery is unable to have contact by telephone or email with a prizewinner within seven calendar days of the date the prizewinners are posted on the website, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will select an alternate prizewinner in accordance with subsection (3) above. If the Florida Lottery is unable to have contact by email or telephone with the alternate prizewinner within seven calendar days of the date of notification, the alternate prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will select the next alternate prizewinner. This process will continue until an alternate is contacted or the Florida Lottery has exhausted the list of alternates due to unsuccessful notification attempts or due to failure by a prizewinner or an alternate prizewinner to timely provide required claim documentation as set forth in subsection (5) below. If the Florida Lottery exhausts the list of alternate prizewinners, the prize will not be awarded. </li>
		     </ol>
		<li><strong>How to Claim a Prize. </strong></li>
       		<ol type="a">
				<li>To claim any prize in the drawing, a prizewinner must submit to the Florida Lottery a completed Winner Claim Form DOL 173-2, revised 1/21, Winner Claim Form- Entity DOL 173-2E, effective 1/21, Spanish Winner Claim Form DOL 173-2S, revised 1/21, or Spanish Winner Claim Form- Entity DOL 173-2SE, effective 1/21 and a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. Forms DOL 173-2, DOL 173-2E, DOL 173-2S and DOL 173-2SE   are hereby incorporated by reference and can be obtained from any Florida Lottery office or retailer, from the Florida Lottery’s website, <a href = "http://www.flalottery.com/">flalottery.com</a>, or by writing to: Florida Lottery, Customer Service, 250 Marriott Drive, Tallahassee, Florida 32399-4016. The required documents must be received by the Florida Lottery no later than fourteen calendar days after the Florida Lottery has first made contact by telephone or email with the prizewinner. If the Florida Lottery does not receive the required documents from a prizewinner by the fourteenth calendar day after notification, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner as described in subsections (3) and (4), above. The same timeframe for a prizewinner to return required documentation to the Florida Lottery shall apply to an alternate prizewinner.</li> 
				<li>A prizewinner in this Promotion is not required to submit the FLORIDA LOTTO or JACKPOT TRIPLE PLAY ticket(s) he or she scanned or manually entered to generate an entry to claim a prize.</li>
				<li>The risk of mailing any required documentation for claiming a prize remains with the player.</li>
		     </ol>
		<li><strong>Award of Prizes. </strong></li>
       		<ol type="a">
				<li>Top Prize. Upon the Florida Lottery’s timely receipt of a top prize winner’s required documentation, the Florida Lottery will award the top prize of $50,000, less applicable federal income tax withholding.</li>
				<li>Second Prize. Upon the Florida Lottery’s timely receipt of a second prize winner’s required documentation, the Florida Lottery will award a second prize of $10,000, less applicable federal income tax withholding.</li>
				<li>Third Prize. Upon the Florida Lottery’s timely receipt of a third prize winner’s required documentation, the Florida Lottery will award a third prize of $5,000.</li>
				<li>Fourth Prize. Upon the Florida Lottery’s timely receipt of a fourth prize winner’s required documentation, the Florida Lottery will award a fourth prize of $2,500.</li>
				<li>Fifth Prize. Upon the Florida Lottery’s timely receipt of a fifth prize winner’s required documentation, the Florida Lottery will award a fifth prize of $1,000.</li>
			</ol>			 
		<li><strong>Taxes</strong></li>
			<p>Except as specifically described herein, all federal, state and/or local taxes or other fees on the prizes won in the Florida Jackpots Bonus Play Promotion will be the responsibility of the prizewinner. Thirty percent federal income tax withholding will be withheld from any prize won by a nonresident alien prizewinner in the Promotion, regardless of the amount of the prize. The reporting and subsequent payment of any additional federal, state and/or local taxes shall be the responsibility of the nonresident alien prizewinner. </p>
		<li><strong>Other Restrictions and Provisions. </strong></li>
       		<ol type="a">
				<li>All prizes are subject to the provisions of Chapter 24, Florida Statutes, and rules promulgated thereunder. Prizes shall be paid in accordance with the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011.</li>
				<li>All prizewinners will be analyzed for state-owed debt. If a prizewinner is identified as owing an outstanding debt to any state agency or owes child support collected through a court, the debt will be offset in accordance with section 24.115(4), Florida Statutes. If the debt is an amount less than the amount of the prize, the balance of the prize after deduction of the debt shall be awarded. If the debt is an amount greater than the amount of the prize, the entire prize amount will be applied to the outstanding debt.</li>
				<li>Players must be at least 18 years of age. Persons prohibited by section 24.116, Florida Statutes, from purchasing a Florida Lottery ticket are not eligible to enter the Florida Jackpots Bonus Play Promotion.</li>
				<li>By entering the Florida Jackpots Bonus Play Promotion, a player gives his or her permission for the Florida Lottery to photograph and/or videotape and record the prizewinner with or without prior notification and to use the name, photograph, videotape, and/or recording of the prizewinner for advertising or publicity purposes without additional compensation.</li>
			</ol>			 
        <p><span class = "small"><i>The official rule for the Florida Jackpots Bonus Play Promotion can be obtained from the Florida Administrative Code at www.flrules.org on or soon after February 2, 2021. In the event of a conflict between a provision of this rule and the official rule for the Florida Jackpots Bonus Play Promotion, the official rule shall govern. </i></span> </p>      
		<!--<img src="promotions/2018/images/jpg/MonopolyJackpot_Icon.jpg" alt="Monopoly Jackpot Icon" width="31" height="34" align="left"><p style="padding-left: 25px; margin-left: 25px; font-size: 10px;"> The MONOPOLY name and logo, the distinctive design of the game board, the four corner squares, the MR. MONOPOLY name and character, as well as each of the distinctive elements of the board and playing pieces are trademarks of Hasbro for its property trading game and game equipment. &copy;  1935, 2018 Hasbro. All Rights Reserved. Licensed by Hasbro.</p>         
	-->
   </div>
   
</div>
</div>
