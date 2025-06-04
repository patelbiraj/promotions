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
		<jsp:include page="../2024/includes/2024-secretVault_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">

		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p><strong>53ER24 &mdash; 30 CASH VAULT Bonus Play Promotion.</strong></p>
			<ol>
				<li>
					Beginning July 1, 2024 and ending August 11, 2024 ("Promotion Period" or "Bonus Play Period"), the Florida Lottery will conduct the CASH VAULT Bonus Play Promotion ("Promotion" or "Bonus Play"). 
					Players who purchase and enter non-winning Game Number 1565, $1 MONOPOLY SECRET VAULT; Game Number 1566, $2 MONOPOLY SECRET VAULT; Game Number 1567, $5 MONOPOLY SECRET VAULT; 
					Game Number 1568, $10 MONOPOLY SECRET VAULT; and Game Number 1569, $20 MONOPOLY SECRET VAULT Scratch-Off tickets (collectively "Eligible" tickets) during the Bonus Play Period can earn entries 
					into a Bonus Play Drawing for a chance to win a cash prize of $1,000; $5,000; or $25,000. Only non-winning tickets purchased during the Bonus Play Period may be entered into a drawing. 
					Winning tickets cannot be entered into any Bonus Play drawing.
				</li>
				<li>
					How to Enter.
					<ol type="a">
						<li>To enter an Eligible ticket into a Promotion Drawing, a player may use the Florida Lottery's website at floridalottery.com or use the Florida Lottery's Mobile Convenience App ("App").  
							<ol>
								<li>
									Website. On the home page of the Florida Lottery's website, players go to the Promotions tab and select the CASH VAULT Bonus Play. Players will click on Register/Login and 
									follow the prompts. Players will manually enter the 24-digit ticket number found on Eligible tickets. 
								</li>
								<li>
									App. On the App, players go to the Promotions button, located on either the main menu or on the bottom navigation bar, and select the CASH VAULT Bonus Play. Players will be 
									prompted to log-in or register. Players may scan the barcode on the bottom of a ticket or may manually enter the 24-digit ticket number found on Eligible tickets.
								</li>
								<li>
									Deleted Accounts. If a player deletes his/her account, whether through the App or on the Florida Lottery's website, all account data, including ticket entries, associated with the 
									email address used to register his/her account will also be deleted. Any entries earned, as described in subsection (3), below, will not be entered into a drawing. A player's account 
									cannot be reactivated using the email associated with the deactivated account. Should a player establish a new account utilizing a different email address, account data, including 
									ticket entries, cannot be transferred to the newly established account. Tickets entered under the prior account cannot be re-entered utilizing the newly created account.
								</li>
								<li>Regardless of whether a player chooses to participate in the Bonus Play by using the website or the App, the following provisions will apply:
									<ol type="a">
										<li>the player must use the same account login information to enter tickets;</li>
										<li>the player will only be required to register one time; and</li>
										<li>the player's entry history will be cumulative among the entry platforms.</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>
							Any attempt by a player to use more than one account by using multiple or different email addresses, identities, registrations, logins, or any other methods will subject the player and any associated 
							entries to disqualification. In the event a player wins a prize, the name a player uses to register must match the name shown on his/her identification used to make a claim, except for a person who has 
							made a legal name change. A person who has made a legal name change must provide a copy of a marriage certificate/judgment/court order, as applicable, as proof of a differing name. Fictitious names and 
							business names will not be accepted and shall subject the player and any associated entries to disqualification.  
						</li>
						<li>
							The odds of winning depend on the number of entries in a drawing. All entries are subject to validation by the Florida Lottery and will be disqualified if eligibility requirements are not met. 
						</li>
						<li>
							Lottery tickets should not be mailed to the Florida Lottery for entry into a drawing. Lottery tickets received in the mail will not be entered into a drawing and will not be returned. 
						</li>					
					</ol>
				</li>
				<li>
					How to Earn Entries into the Promotion.
					<ol type="a">
						<li>
							To earn entries into a drawing, a player may enter a ticket number by scanning the barcode on the bottom of an Eligible ticket using his/her mobile device or by manually entering the 
							24-digit ticket number on the website or the App. A player may earn multiple entries during a Drawing Entry Period; however, a player can only win one Bonus Play prize per entry. 
							A player may enter a maximum of 200 tickets per day. Each ticket number can only be entered one time and cannot be entered again for either drawing. Training tickets will not be accepted, 
							and tickets with invalid ticket numbers will be disqualified. The hours for ticket entry are between 6:00 a.m. ET and 12:00 midnight ET seven days a week and may be unavailable at other 
							times if there are technical difficulties. Entries must be made, and received by the Lottery, by 11:59:59 p.m. (ET) at the end of a respective Drawing Entry Period listed in subsection (4), 
							below, to be entered into a drawing.
						</li>
						<li>
							Number of Entries Received. For each eligible ticket, a player will receive the number of entries listed:
							<table class="dataTbl secondTbl">
								<tr>
									<th>GAME</th>
									<th>PRICE/COST</th>
									<th>NUMBER OF ENTRIES</th>
								</tr>
								<tr>
									<td>#1565 &mdash; $1 MONOPOLY SECRET VAULT</td>
									<td>$1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>#1566 &mdash; $2 MONOPOLY SECRET VAULT</td>
									<td>$2</td>
									<td>2</td>
								</tr>
								<tr>
									<td>#1567 &mdash; $5 MONOPOLY SECRET VAULT</td>
									<td>$5</td>
									<td>5</td>
								</tr>
								<tr>
									<td>#1568 &mdash; $10 MONOPOLY SECRET VAULT</td>
									<td>$10</td>
									<td>10</td>
								</tr>
								<tr>
									<td>#1569 &mdash; $20 MONOPOLY SECRET VAULT</td>
									<td>$20</td>
									<td>20</td>
								</tr>
								<tr>
									<td>Complete Family of MONOPOLY SECRET <br>VAULT (#1565 &mdash; 1569) Tickets&ast;</td>
									<td>$38</td>
									<td>50&ast;</td>
								</tr>
							</table>
							<sup>&ast;</sup>Every ticket in the MONOPOLY SECRET VAULT family need not be entered simultaneously to earn the 50 additional entries. Every completed family entered during a given Drawing Entry 
							Period earns 50 entries into that drawing. Ticket entries from Entry Period 1 (July 1 through July 21, 2024) will not be carried over into Entry Period 2 (July 22 through August 11, 2024).
						</li>
						<li>
							Promo Codes. Various promo codes providing additional entries will be available during the Bonus Play via GSTV L-Bar (gas station TV), In-Store L-Bars, CTV (Connected TV), Florida Lottery 
							social media platforms (Facebook, Instagram, X), and emails to players. An Eligible ticket must be entered to enable the promo code feature, and the ticket number and the promo code must 
							be entered at the same time. Each promo code is only valid for the corresponding Drawing Entry Period for which it is designated and can only be entered one time. Different promo codes may 
							be entered during the corresponding Drawing Entry Period for which they are designated, each with a different ticket number. Promo codes available for Entry Period 1 cannot be used, and 
							will not be valid, for Entry Period 2. Promo codes designated for Entry Period 2 cannot be used, and will not be valid, for Entry Period 1.
						</li>
					</ol>
				</li>
				<li>
					Drawing Entry Periods, Drawing Date/s, and Winners Announced Dates. The Florida Lottery will conduct two drawings. Winners for each drawing will be randomly selected from entries submitted and 
					received by 11:59:59 p.m. (ET) on the last day of each Drawing Entry Period. Entries for Entry Period 1 are not carried over into Entry Period 2. Tickets shall be drawn only from the Eligible 
					ticket entries submitted and received during each Drawing Entry Period. Winners will be randomly selected using a certified random number generation process. The drawing will be public, held in 
					Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm. Drawing Entry Periods, Drawing Dates, and Winners Announced dates:
					<table class="dataTbl secondTbl">
						<tr>
							<th>DRAWING ENTRY PERIOD</th>
							<th>DRAWING DATE</th>
							<th>WINNERS ANNOUNCED</th>
						</tr>
						<tr>
							<td>July 1, 2024 through July 21, 2024 <br>(Entry Period 1)</td>
							<td>July 23, 2024</td>
							<td>July 25, 2024</td>
						</tr>
						<tr>
							<td>July 22, 2024 through August 11, 2024 <br>(Entry Period 2)</td>
							<td>August 13, 2024</td>
							<td>August 15, 2024</td>
						</tr>
					</table>
					<ol type="a">
						<li>
							Winners will be announced and posted on floridalottery.com on the "WINNERS ANNOUNCED" dates, set forth in the table above, or as soon thereafter as practical.
						</li>
						<li>
							In each Drawing, a total of 147 valid entries will be drawn by the Florida Lottery. Prizes will be awarded in the quantities set forth in the table in subsection (5), below, and awarded to 
							players in the order in which they were drawn during each drawing. Remaining entries will be alternates and used in the order in which they were drawn and in the order of need to select alternate 
							top, second, and third prize winners in the event a top, second, or third winner cannot be notified or fails to timely provide required claim documentation as set forth in subsection (7), below, 
							or in the event an entry is disqualified. A player can only win one prize per draw entry.
						</li>
					</ol>
				</li>
				<li>
					Prizes and number of winners:
					<table class="dataTbl secondTbl">
						<tr>
							<th>PRIZE</th>
							<th>AMOUNT</th>
							<th>NUMBER OF <br>WINNERS PER <br>DRAWING</th>
							<th>TOTAL <br>NUMBER OF <br>WINNERS</th>
							<th>TOTAL PRIZE<br> AMOUNT</th>
						</tr>
						<tr>
							<td>Top Prize</td>
							<td>$25,000</td>
							<td>2</td>
							<td>4</td>
							<td>$100,000</td>

						</tr>
						<tr>
							<td>2<sup>nd</sup> Prize</td>
							<td>$5,000</td>
							<td>20</td>
							<td>40</td>
							<td>$200,000</td>
						</tr>
						<tr>
							<td>3<sup>rd</sup> Prize</td>
							<td>$1,000</td>
							<td>75</td>
							<td>150</td>
							<td>$150,000</td>
						</tr>
						<tr>
							<td>Total</td>
							<td>N/A</td>
							<td>97</td>
							<td>194</td>
							<td>$450,000</td>
						</tr>
					</table>
				</li>
				<li>
					Winner Notification. The Florida Lottery will attempt to notify winners by telephone (notification by telephone is deemed complete by leaving a voicemail message, if available) or email 
					(issuing an email constitutes notification) using the contact information provided in the winners' registration data within one business day after the winners are posted on the Lottery's 
					website. The Lottery deems a winner's registration data as his/her official contact information. Issuing an email or leaving a message on voicemail, if available, shall constitute notification. 
					The Lottery will not attempt to further notify a winner if the initial attempt is unsuccessful. If the Lottery is unable to have contact by telephone or email with a winner within ten calendar 
					days of the date the winners are posted on the Lottery's website, the winner will forfeit his/her right to claim the prize and the Lottery will select an alternate winner in accordance with 
					subsection (4), above. If the Lottery is unable to have contact by email or telephone with the alternate winner within ten calendar days of the date of notification, the alternate winner will 
					forfeit his/her right to claim the prize and the Lottery will select the next alternate winner. This process will continue until an alternate is contacted or the Lottery has exhausted the list 
					of alternates due to unsuccessful notification attempts or due to failure by a winner or an alternate winner to timely provide required claim documentation as set forth in subsection (7), below. 
					The Lottery is not responsible or liable for system failures or faults of any sort or type, including, but not exclusively, computer failures or faults, email service failures or faults, telephone 
					service failures or faults, and voicemail failures, faults, or unavailability. If a prize cannot be awarded for any reason, the prize will not be awarded.
				</li>
				<li>
					How to Claim a Prize. 
					<ol type="a">
						<li>
							To claim a prize won in a drawing, a winner must submit to the Florida Lottery a completed Winner Claim Form DOL-173-2, Revised 2/2023, or Spanish Winner Claim Form DOL-173-2S, 
							Revised 2/2023, and a copy of acceptable identification as set forth in the Florida Lottery's rule governing payment of prizes. 
						</li>
						<li>
							A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011 or at flrules.org.  
						</li>
						<li>
							The required documents must be received by the Florida Lottery no later than ten calendar days after the Lottery has first notified the winner by telephone or email. If the Florida Lottery 
							does not receive the required documents from a winner by the tenth calendar day after notification, the winner will forfeit his/her right to claim the prize and the Lottery will award the 
							prize to an alternate winner as described in subsection (4), above. The same timeframe for a winner to return required documentation to the Lottery shall apply to an alternate winner. 
						</li>
					</ol>
				</li>
				<li>
					Award of Prizes. Upon the Florida Lottery's timely receipt of a winner's required documentation, the Lottery will award the applicable prize for that winner, subject to federal tax withholding 
					and analysis for State-Owed Debt and Child Support Debt.
				</li>
				<li>
					A player can only win one prize per entry.
				</li>
				<li>
					A winner is not required to submit the Eligible ticket he/she entered to claim a prize.
				</li>
				<li>
					Analysis for State-Owed Debt and Child Support Debt. Prior to the award of a prize, a winner will be analyzed for Florida state-owed debt and child support debt. If more than one prize is awarded 
					to a winner, a separate analysis shall occur prior to payment of each prize. If the winner is identified as owing outstanding debt to any state agency or owes child support collected through a court, 
					the debt will be offset in accordance with section 24.115, F.S. If the debt is an amount less than the amount of the cash prize, the balance of the prize, less applicable income tax withholding on the 
					full prize amount, and after the debt is offset shall be awarded. If the debt is an amount greater than any cash prize, the entire prize amount, after applicable income tax withholding on the full 
					prize amount, will be applied to the outstanding debt. 
				</li>
				<li>
					Taxes.
					<ol type="a">
						<li>
							Except as specifically defined herein, all federal, state, and/or local taxes and/or other costs and fees on prizes will be the responsibility of the winner.
						</li>
						<li>
							For $25,000 prizes, and pursuant to applicable provisions of the Internal Revenue Service code, federal income taxes will be withheld at a rate of twenty-four percent (24%) for a U. S. 
							citizen or legal U. S. resident and at a rate of thirty percent (30%) for nonresident winner/s. Regardless of prize amount, for all prizes won, federal income taxes will be withheld at a 
							rate of thirty percent (30%) for nonresident winner/s. The reporting and subsequent payment of any additional federal, state, and/or local taxes and any other fees and costs shall be the 
							responsibility of winners. 
						</li>
					</ol>
				</li>
				<li>
					Other Restrictions and Provisions. 
					<ol type="a">
						<li>
							A player must be at least 18 years of age to participate in the Promotion.
						</li>
						<li>
							All prizes are subject to the provisions of chapter 24, F.S., and rules promulgated thereunder. Prizes will be paid in accordance with the Florida Lottery's rule governing payment of prizes. 
							Copies of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011 or at flrules.org.
						</li>
						<li>
							Persons prohibited by section 24.116, F.S., from purchasing a Florida Lottery ticket are not eligible to enter this Promotion.
						</li>
						<li>
							By entering the CASH VAULT Bonus Play Promotion, a player gives his/her permission for the Florida Lottery to photograph and/or videotape and record him/her with or without prior 
							notification and to use the name, photograph, videotape, and/or recording of him/her for advertising or publicity purposes without additional compensation.
						</li>
						<li>
							If there is any conflict with any provision set forth in this Rule and any other CASH VAULT Bonus Play promotion materials, including, but not limited to, point of sale, television, radio, 
							and print advertising, and other promotional media/materials, the terms of this Rule shall prevail.
						</li>
					</ol>
				</li>
			</ol>
			
		<i>Rulemaking Authority 24.105(9), 24.109(1) FS. Law Implemented 24.105(9), 24.115 FS. History &mdash; New 7-1-2024.</i>
		<br><br>
		The official rule for the CASH VAULT Bonus Play Promotion can be obtained from the Florida Administrative Code at www.flrules.org on or soon after July 1, 2024. In the event of a conflict between a provision 
		of this rule version and the official rule, the official rule shall govern.  
		</div>
	</div>
</div>