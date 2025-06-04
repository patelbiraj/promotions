<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 3;</script>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-comeOnDown_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
	<div id="mainContent">
		<h1><s:property value="messages.h1Title"/></h1>
		<p><strong>53ER23-- COME ON DOWN Challenge Bonus Play Promotion.</strong></p>    
		<ol>
			<li>Beginning February 27, 2023, and through March 26, 2023 ("Promotion Period"), the Florida Lottery will conduct the COME ON DOWN Challenge Bonus Play Promotion ("Promotion") in which players can enter non-winning THE PRICE IS RIGHT&#8482; (Game Number 1518) Florida Lottery Scratch-Off tickets ("Eligible" ticket/s) purchased during the Promotion Period into a promotional drawing for a chance to win a trip to Las Vegas, Nevada ("Trip" or "Trip Prize" or "Trip Package").</li>
				<ol type="a">
					<li>To enter an Eligible ticket, a player may use the Florida Lottery's website at <a href="https://www.floridalottery.com/">floridalottery.com</a> or use the Florida Lottery's Mobile Convenience App ("App").</li>
					<ol type="1">
						<li>Website. On the home page of the Florida Lottery's website, players are to click on the PROMOTIONS tab and select the COME ON DOWN Challenge Bonus Play Promotion. Players will click on Register/Login and follow the prompts. Players will manually enter the 24-digit ticket number shown on the ticket.</li>
						<li>App. On the App, players navigate to the Promotions section of the app and select the COME ON DOWN Challenge Bonus Play Promotion. A Promotions button is located on the main menu and on the bottom navigation bar. Players will be prompted to log-in or register. Players may scan the barcode on the bottom of a ticket or may manually enter the 24-digit ticket number shown on the ticket.</li>
						<li>Deleted Accounts. If a player deletes his/her account, whether through the App or on the Florida Lottery's website, all account data, including ticket entries, associated with the email address used to register his/her account will also be deleted. A player's account cannot be reactivated using the email associated with the deactivated account. Should a player establish a new account utilizing a different email address, account data, including ticket entries, cannot be transferred to the newly established account. Tickets entered under the prior account cannot be re-entered utilizing the newly created account.</li>
						<li>Regardless of whether a player chooses to participate in the Promotion by using the web browser or the App, the following provisions shall apply:</li>
						<ol type="a">
							<li>the player must use the same account login information to enter tickets;</li>
							<li>the player will only be required to register one time; and</li>
							<li>the player's entry history will be cumulative among the entry platforms.</li>
						</ol>
					</ol>
						<li>Any attempt by a player to use more than one account by using multiple or different email addresses, identities, registrations, logins, or any other methods will subject the player and any associated entries to disqualification. In the event a player wins a prize, the name a player uses to register must match the name shown on his/her identification used to make a claim, except for a person who has made a legal name change. A person who has made a legal name change must provide a copy of a marriage certificate/judgment/court order, as applicable, as proof of a differing name. Fictitious names and business names will not be accepted and shall subject the player and any associated entries to disqualification.</li>
						<li>Tickets should not be mailed to the Lottery for entry into a drawing. Tickets received in the mail by the Florida Lottery for entry into the Promotion will not be entered and will not be returned.</li>
						<li>Players may enter an Eligible ticket into the Promotion at any time of day during the Promotion Period, except that entry capabilities on the website and App will be unavailable from 12 a.m. through 6 a.m. ET due to routine maintenance and may be unavailable at other times if there are technical difficulties. Entries must be made by 11:59:59 p.m. (ET) on March 26, 2023.</li>
						<li>Only Eligible tickets purchased and entered during the Promotion Period may win a prize.</li>
						<li>A player may enter multiple tickets during the entry period; however, each ticket number can only be entered one time. A player may enter up to a maximum of 200 tickets per day.</li>
						<li>A player can only win one prize per ticket entry.</li>
						<li>The odds of winning depend on the number of entries. All entries are subject to validation by the Florida Lottery and may be disqualified if eligibility requirements are not met.</li>
				</ol>
			<li><strong>Number of Entries Earned.</strong> When a player enters a non-winning ticket number on the website or app or scans the barcode on the app, either 5, 10, 15, 20, or 25 entries will be applied to the player's account. The number of entries is predetermined for each ticket, as dictated by the gaming parameters.</li>
			<li><strong>Prizes.</strong> The following table sets forth the prizes available in the Promotion.
				<table class="dataTbl">
				<thead>
					<tr>
						<th width="128" class="txtc">Prize</th>
						<th width="128" class="txtc">Number of Prizewinners</th>
						<th width="128" class="txtc">Prize Value<br>(for a Single Las Vegas Trip<br>Package)</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="txtc">Las Vegas, Nevada Trip</td>
						<td class="txtc">20</td>
						<td class="txtc">$9,460.00</td>
					</tr>
				</tbody>
				</table>
			</li>
		  	<li><strong>Drawing.</strong> One promotional drawing will be held. Prizewinners will be randomly selected from valid entries submitted and received by 11:59:59 p.m. (ET) on March 26, 2023. The entry period, drawing date, and winner announcement date are set forth in the table below. Drawings will be public, held in Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm.
		  		<table class="dataTbl">
				<thead>
					<tr>
						<th width="150" class="txtc">Entry Period</th>
		                <th width="110" class="txtc">Drawing Date</th>
						<th width="124" class="txtc">Winners Announced</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="txtc">February 27, 2023 - March 26, 2023</td>
						<td class="txtc">March 28, 2023</td>
						<td class="txtc">March 30, 2023</td>
					</tr>
				</tbody>
				</table>
				In the drawing, a total of 40 valid entries will be drawn by the Florida Lottery using a certified random number generation process. The first twenty valid entries drawn will win a Trip Prize. The remaining valid entries drawn will be used in the order in which they were drawn and in the order of need to select alternate prize winners in the event a Trip Prize cannot be awarded to an initial winner. 
			</li>
		 	<li><strong>Prizewinner Notification.</strong>
		 		<ol type="a">
		 			<li>The prizewinners will be posted on floridalottery.com on the announcement date set forth in the table in subsection (4), above, or as soon thereafter as practical.</li>
		 			<li>The Florida Lottery will attempt to notify each prizewinner by telephone or email using the contact information provided in the prizewinner's registration data no later than one business day (Monday-Friday) after the prizewinners are posted on the Florida Lottery's website. The Florida Lottery deems the winner's registration data as his/her official contact information. The Florida Lottery will not attempt to further locate a prizewinner if attempts to reach the winner by telephone or email are unsuccessful. If the Florida Lottery is unable to make contact by telephone or email with a prizewinner within ten calendar days of the date the prizewinners are posted on the website, the winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner. If the Florida Lottery is unable to make contact by email or telephone with the alternate prizewinner within ten calendar days of the date of notification, the alternate prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to the next alternate prizewinner. This process will continue until an alternate prizewinner is contacted or the Florida Lottery has exhausted the list of alternate prizewinners due to unsuccessful notification attempts or due to failure by a prizewinner or an alternate prizewinner to timely provide required claim documentation as set forth in subsection (6), below. If the Florida Lottery exhausts the list of alternate prizewinners, the prize will not be awarded. The Florida Lottery is not responsible or liable for email failures or faults, telephone failures or faults, voicemail failures or faults; system, network, or software failures or faults; or the like.</li>
		 		</ol>	
			</li>
			<li><strong>How to Claim a Prize.</strong>
		       		<ol type="a">
						<li>Trip Prize winners must submit a completed Winner Claim Form DOL 173-2, revised 2/2023, or a Spanish Winner Claim Form DOL 173-2S, revised 2/2023, and a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. Forms DOL 173-2 and DOL 173-2S are hereby incorporated by reference and may be obtained at any Florida Lottery office or retailer, from the Florida Lottery's website at <a href="http://www.floridalottery.com/">floridalottery.com</a>, or by writing to: Florida Lottery, Claims Processing, 250 Marriott Drive, Tallahassee, Florida 32399-4016. </li>
						<li>Trip Prize winners must also submit a completed Winner Release, Acknowledgement, and Authorization form, DOL 474-TPIR Trip-Winner, effective 2/27/2023, and a Guest Release, Acknowledgement, and Authorization form, DOL 474-TPIR Trip-Guest, effective 2/27/2023.</li>
						<li>Forms DOL 474-TPIR Trip-Winner and DOL 474-TPIR Trip-Guest are hereby incorporated by reference and may be obtained at any Florida Lottery office or by writing to: Florida Lottery, Claims Processing, 250 Marriott Drive, Tallahassee, Florida 32399-4016.</li>
						<li>A prizewinner's Winner Claim Form (DOL 173-2 or DOL 173-2S) and a copy of the prizewinner's identification, along with the prizewinner's completed DOL 474-TPIR Trip-Winner (Winner Release, Acknowledgement, and Authorization), must be received by any Florida Lottery office no later than ten calendar days after the Florida Lottery has made contact with the prizewinner. If the Florida Lottery has not received the required documentation from a prizewinner by the tenth calendar day after notification, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner. The same timeframe for a prizewinner to return required documentation to the Florida Lottery shall apply to an alternate prizewinner.</li>
					</ol>
			</li>
			<li><strong>Award of Las Vegas Trip.</strong>
		       		<ol type="a">
						<li>Upon the Florida Lottery's timely receipt of a Trip Prize winner's required documentation, the Lottery will award a Las Vegas Trip Package. Trip Prize elements are:</li>
						<ol type="1">
							<li>Hotel accommodations for three (3) nights for two (2) people, double occupancy (one room), at a hotel on the Las Vegas, Nevada strip.</li>
							<li>Roundtrip coach airfare to Las Vegas for two (2) from the nearest major commercial airport, within the state of Florida, in the vicinity of the residence of a Trip winner (or his/her Proxy).</li>
							<li>Roundtrip transportation from the airport to the hotel and any Scientific Games (a/k/a "Prize Provider") hosted events.</li>
							<li>Meal vouchers for use at the hotel accommodation, valued at $400. Meal vouchers cannot be used at any location other than the hotel. Meals taken elsewhere are at the expense of the Winner/Proxy/Guest.</li>
							<li>$4,000 spending cash. (Upon completion of the state-owed debt/child support analysis, as described in subsection (10), below, spending cash payments will be issued to Trip winners approximately two [2] weeks prior to scheduled departure to Las Vegas.)</li>
							<li>Opportunity to participate in the COME ON DOWN CHALLENGE Event ("Challenge Event" or "Event") for a chance to win from $1,000 up to $50,000,000. The Challenge Event has been developed by, and will be conducted by, Scientific Games, LLC. No Trip winner may win more than one Event prize. A Trip Prize winner's guest may attend the Challenge Event with the Trip winner but cannot take part in the Event and is not eligible to win a Challenge Event prize. A Trip Prize winner's appointed Proxy, if any, may participate in the Challenge Event, but a prize won, if any, will be awarded to the Trip Prize winner. A Trip Prize winner's Proxy is not eligible to win a Challenge Event prize. If neither a Trip winner nor a Trip winner's Proxy attends the Challenge Event, a stand-in may be appointed by the Prize Provider. The person appointed as a stand-in for the Trip winner is not eligible to win a Challenge Event prize. A prize won, if any, will be awarded to the Trip winner, subject to state-owed debt and child support analysis and the withholding of applicable federal tax. Should a Trip winner not attend the Challenge Event, the Trip winner shall accept the outcome of the Challenge Event as played by a Proxy/Prize Provider stand-in. Challenge Event results are final and shall be accepted by all participants.    
								<br>A winner of Challenge Event prize must submit a Winner Claim Form (DOL 173-2 or DOL 173-2S) and a copy of his/her identification prior to issuance of the Challenge Event prize. Upon the Lottery's receipt of a Winner's claim form and completion of the state-owed debt/child support analysis, as described in subsection (10), and deduction of federal tax withholding, as described in subsection (9), any Challenge Event prize payments will be issued to winners.</li>
							<li>Payment of federal income tax withholding on the total retail value of the Trip Prize elements described in subparagraphs 1. through 5., above, except as to any prize won in the COME ON DOWN Challenge Event.  
								<br>Exclusive of any prize received in the Challenge Event, the reportable taxable value of the Las Vegas Trip includes the value of the Trip Prize plus the value of the federal income tax withholding paid by the Florida Lottery. The retail value of the Trip Prize and the estimated reportable taxable value of the prize for a U.S. citizen are:
								<table class="dataTbl">
								<thead>
									<tr>
										<th width="150" class="txtc">Approximate Retail Value of Las<br>Vegas Trip Prize (exclusive of a<br>Challenge Event cash prize, if any)</th>
										<th width="150" class="txtc">Estimated Reportable Taxable Value of Las<br>Vegas Trip Prize</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="txtc">$9,460.00</td>
										<td class="txtc">$11,730.40</td>
									</tr>
								</tbody>
								</table>
							</li>
						</ol>
						<li>As to any guest, the Florida Lottery must receive a completed Form DOL 474-TPIR Trip-Guest (Guest Release, Acknowledgement, and Authorization) on or before July 7, 2023. A guest must be 18 years of age or older. No guest changes or proxy appointments are permitted past this date. Once names are submitted, any changes made may incur a fee.</li>
						<li>Las Vegas Trip dates are September 4 through September 7, 2023.  The Florida Lottery reserves the right to change Trip dates as circumstances require.</li>
						<li>Except as specified above, a Las Vegas Trip does not include travel to and from a Trip winner's residence and an airport, other travel, meals, parking fees, baggage fees, travel insurance, alcoholic beverages (other than those served without charge at any reception and/or party), incidentals, tips, and personal expenses such as telephone calls, valet service or laundry, etc., as well as rebooking or cancellation fees that may be charged by the hotel, airline, or other suppliers/vendors.</li>
						<li>Scientific Games, LLC shall determine, in its sole discretion, the specific merchandise models, items, vendors, and/or retailers for all elements of the Las Vegas Trip Prize and reserves the right to substitute any portion or elements of the Trip Prize for items of comparable or greater value and/or any specified brand, vendor, or retailer for one of comparable quality. Elements of the Trip Prize are subject to availability and may be fulfilled by third-party companies and/or vendors.</li>
						<li>If the Trip winner chooses not to use the Las Vegas Trip or becomes unavailable for any reason, the Trip winner may appoint a Proxy, provided there is sufficient time, by completing a Proxy Appointment and Acknowledgement form DOL 491-B, revised 2/2023. Form DOL 491-B and a completed Proxy Release, Acknowledgement, and Authorization form DOL 474-TPIR Trip-Proxy, effective 2/27/23, must be received by the Lottery on or before July 7, 2023. Forms DOL 491-B and DOL 474-TPIR Trip-Proxy are hereby incorporated by reference and can be obtained from any Florida Lottery office, or by writing to Florida Lottery, Claims Processing Division, 250 Marriott Drive, Tallahassee, Florida 32399-4016. If the Trip Prize winner or appointed Proxy fails to book the trip prior to the booking deadline, the Winner will forfeit the trip and will remain taxable on the entire value of the Trip Prize. In the event a Proxy is appointed, the original Trip Prize winner shall receive the $4,000 spending cash and will remain eligible and may win a prize in the COME ON DOWN Challenge Event. Should a Proxy, for any reason, be unable to travel, the Proxy may not appoint another proxy; and the trip portion of the prize shall be forfeited. In such case, the Trip Prize winner will receive the $4,000 spending cash and may receive a cash prize in the Challenge Event. Under all circumstances, the entire value of the Trip Prize shall remain taxable income to the original Trip Prize winner.</li>
					</ol>
			</li>
			<li>No substitution of any kind, a cash substitution, assignment, or transfer of the Trip Prize, or element thereof, is permitted, except as provided herein. Any unused Trip Prize or Trip Prize elements will be forfeited, will not be redeemable for cash, and will not reduce the Trip Prize value awarded for tax purposes. A substitution initiated by the Florida Lottery, or its providers, are at the sole discretion of the Florida Lottery and its providers. Should there be prize substitutions, such will be of comparable or greater value.</li>
			<li><strong>Taxes.</strong>
				<ol type="a">
					<li>Except as specifically described herein, all federal, state and/or local taxes or other fees on the Trip Prize or Trip Prize element/s, including any prize won in the Challenge Event, shall be the sole responsibility of the prizewinner, regardless of whether a prizewinner avails himself/herself of the prize.</li>
					<li>If a prize is won in the COME ON DOWN CHALLENGE Event, and as applicable, federal income tax withholding will be applied prior to issuance of payment to the winner of this prize. Federal income taxes will be withheld at a rate of twenty-four percent (24%) for U.S. citizens or legal residents and at the rate of thirty percent (30%) for nonresident alien claimants. 
						<br>A Trip Prize winner who is a nonresident alien will be required to forward to the Lottery the difference between thirty percent (30%) and the twenty-four percent (24%) Florida Lottery-made payment (amount for U.S. citizens and legal residents) to cover taxes prior to award of the prize to him/her; a failure to forward the necessary sums will result in forfeiture of the Trip Prize and every element thereof. The $4,000, or portion thereof, in spending money (element of Trip Prize), after application of any state-owed debt or child support owed, will also be withheld to cover the tax withholding difference for a nonresident alien. The reporting and subsequent payment of any additional federal, state and/or local taxes shall be the responsibility of the prizewinner.
					</li>
					<li>If the prizewinner claims a Trip Prize but does not make travel arrangements within the specified timeframes, or otherwise does not make the Trip, the Trip Prize shall be forfeited, except for the $4,000 in spending money and a prize awarded in the Challenge Event, if any. The entire value of a Trip Prize will remain taxable income to the Trip Winner.</li>
				</ol>
			</li>  
			<li><strong>Other Restrictions and Provisions.</strong>
				<ol type="a">
					<li>After the withholding of applicable federal tax, Trip Prize winners, with respect to any $600 or greater cash portion (i. e. $4,000 in spending money and any Challenge Event prize), will be analyzed for state-owed debt and child support. If a prizewinner is identified as owing an outstanding debt to any state agency or owes child support collected through a court, the debt will be offset in accordance with section 24.115(4), Florida Statutes. If the debt is an amount less than the amount of a cash portion of the Prize Package, the balance of the cash portion after deduction of the debt shall be awarded. If the debt is an amount greater than the amount of the cash portion, the entire cash portion amount will be applied to the outstanding debt. Winners will be analyzed prior to issuance of each of the $4,000 in spending money and any Challenge Event prize.</li>
					<li>Players must be at least 18 years of age.</li>
					<li>Persons prohibited by section 24.116, Florida Statutes, from purchasing a Florida Lottery ticket are not eligible to enter the COME ON DOWN Challenge Bonus Play Promotion.</li>
					<li>All prizes and Trip winners are subject to the provisions of Chapter 24, Florida Statutes, and rules promulgated thereunder. Prizes shall be paid in accordance with the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011.</li>
					<li>By entering the COME ON DOWN Challenge Bonus Play Promotion, a player gives his or her permission for the Florida Lottery to photograph and/or videotape and record the prizewinner with or without prior notification and to use the name, photograph, videotape, and/or recording of the prizewinner for advertising or publicity purposes without additional compensation.</li>
					<li>The COME ON DOWN Challenge Bonus Play Promotion is void where prohibited by law.</li>
				</ol>
			</li>			 
			<p><span class = "small"><i>Rulemaking Authority 24.105(9), 24.109(1), FS.  Law Implemented 24.105(9), 24.115(1) FS.  History - New 2-27-23.</i></span></p>
			<p><span class = "small"><i>The official rule for the COME ON DOWN Challenge Bonus Play Promotion can be obtained from the Florida Administrative Code at www.flrules.org on or soon after February 27, 2023. In the event of a conflict between a provision of this rule version and the official rule, the official rule shall govern.</i></span></p>
		</ol>
	</div>
	</div>
</div>