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
		<jsp:include page="../2023/includes/2023-fuelForLife_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1><s:property value="messages.h1Title"/></h1>
			<p><strong>53ER23-32 FREE RIDE AND FUEL FOR LIFE BONUS PLAY Promotion.</strong></p>
			<ol>
				<li>Beginning July 3, 2023 and through August 6, 2023 ("Promotion Period"), the Florida Lottery, in
				conjunction with its contracted vendor, Atlas Experiences, LLC, will conduct the FREE RIDE AND FUEL FOR
				LIFE BONUS PLAY Promotion ("Promotion") in which players can enter non-winning YEAR FOR LIFE Florida
				Lottery Scratch-Off tickets and any CASH4LIFE<sup>&reg;</sup> tickets purchased/obtained during the Promotion Period into a
				promotional drawing for a chance to win an expense-paid trip to Hollywood, Florida. Promotion winners making the
				trip to Hollywood will also participate in a Promotional Game Show to win a vehicle and free fuel/gasoline. Non-
				winning Scratch-Off tickets from Game Numbers:  1529 ($1,000,000 A YEAR FOR LIFE SPECTACULAR); 1532
				($25,000 A YEAR FOR LIFE), 1533 ($50,000 A YEAR FOR LIFE), 1534 ($150,000 A YEAR FOR LIFE), 1535
				($250,000 A YEAR FOR LIFE) and all (non-winning, winning, and free tickets) from draw game CASH4LIFE<sup>&reg;</sup>
				purchased/obtained during the Promotion Period (Collectively, for all tickets identified herein, "Eligible" tickets)
				may be entered.</li>
				<li>How to Participate.
					<ol type="a">
						<li>To enter Eligible tickets into the promotional drawing, a player may use the Florida Lottery's website at floridalottery.com or use the Florida Lottery's Mobile Convenience App ("App").
							<ol>
								<li>Website. On the home page of the Florida Lottery's website, players are to click on the Promotions tab, select
								the FREE RIDE AND FUEL FOR LIFE BONUS PLAY Promotion and follow the directions. Players will be
								prompted to log-in or register. Players will manually enter the 24-digit ticket number shown on Eligible YEAR FOR
								LIFE Scratch-off tickets or the 19-digit ticket number on Eligible CASH4LIFE tickets on the ticket entry page to
								collect entries as described in paragraph (2)(c), below.</li>
								<li>Mobile App. On the App, players navigate to the Promotions section of the App, select the FREE RIDE AND
								FUEL FOR LIFE BONUS PLAY Promotion, and follow the instructions. A Promotions button is located on the
								main menu and on the bottom navigation bar. Players will be prompted to log-in or register if the App does not
								recognize them as already logged in. Players may scan the barcode on the bottom of a ticket or may manually enter
								the 24-digit ticket number (Eligible YEAR FOR LIFE tickets) or 19-digit ticket number (Eligible CASH4LIFE
								tickets) on the ticket entry page to collect entries as described in paragraph (2)(c), below.</li>
								<li>Deleted Accounts. If a player deletes his/her account, whether through the App or on the Florida Lottery's
								website, all account data, including ticket entries, associated with the email address used to register his/her account
								will also be deleted. Any entries earned will not be entered into a drawing. A player's account cannot be reactivated
								using the email associated with the deactivated account. Should a player establish a new account utilizing a different
								email address, account data, including ticket entries, cannot be transferred to the newly established account. Tickets
								entered under the prior account cannot be re-entered utilizing the newly created account.</li>
								<li>Regardless of whether a player chooses to participate in the Promotion by using the website or the App, the following provisions shall apply:
									<ol type="a">
										<li>the player must use the same account login information to enter tickets;</li>
										<li>the player will only be required to register one time; and</li>
										<li>the player's entry history will be cumulative among the entry platforms.</li>
									</ol>
								</li>
							</ol>
						</li>
						<li>Any attempt by a player to use more than one account by using multiple or different email addresses,
						identities, registrations, logins, or any other methods will subject the player and any associated entries to
						disqualification. In the event a player wins a prize, the name a player uses to register must match the name shown on
						his/her identification used to make a claim, except for a person who has made a legal name change. A person who
						has made a legal name change must provide a copy of a marriage certificate/judgment/court order, as applicable, as
						proof of a differing name. Fictitious names and business names will not be accepted and shall subject the player and
						any associated entries to disqualification.</li>
						<li>Number of Entries Received. The number of entries received by a player are in accordance with the table below:
							<table class="dataTbl secondTbl">
								<tr>
									<th>Game*</th>
									<th>Price*</th>
									<th style="width: 300px;">Number of Entries*</th>
								</tr>
								<tr>
									<td>#1529 - $1,000,000 A Year for Life Spectacular</td>
									<td>$50</td>
									<td>50</td>
								</tr>
								<tr>
									<td>#1535 - $250,000 A Year for Life</td>
									<td>$10</td>
									<td>10</td>
								</tr>
								<tr>
									<td>#1534 - $150,000 A Year for Life</td>
									<td>$5</td>
									<td>5</td>
								</tr>
								<tr>
									<td>#1533 - $50,000 A Year for Life</td>
									<td>$2</td>
									<td>2</td>
								</tr>
								<tr>
									<td>#1532 - $25,000 A Year for Life</td>
									<td>$1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>CASH4LIFE<sup>&reg;</sup></td>
									<td>Any purchase price</td>
									<td>Equal to the purchase price (e. g. for each dollar spent, one entry received).</td>
								</tr>
								<tr>
									<td>CASH4LIFE<sup>&reg;</sup></td>
									<td>Free</td>
									<td>Equal to the number of plays shown on the
									ticket. (i.e., one (1) horizontal line of play
									numbers is one (1) play. For example, three
									horizontal lines of play numbers represent three
									plays and receives three entries.)</td>
								</tr>
							</table>
							<p>* For example, a player that enters two (2) tickets from game #1529 - $1,000,000 A Year for Life Spectacular,
							and one (1) ticket from game #1535 - $250,000 A Year for Life, will receive 110 entries (50 entries for each $50
							ticket plus 10 entries for the $10 ticket, for a total of 110 entries) into the promotional drawing.</p>
						</li>
						<li>Lottery tickets should not be mailed to the Florida Lottery for entry into the Promotion. Lottery tickets
						received in the mail by the Lottery will not be entered and will not be returned.</li>
						<li>Promo Codes. Various promo codes providing additional entries will be available during the Promotion
						Period via Florida Lottery social media channels (Facebook, Instagram, Twitter); Gas Station TV (GSTV); In-Store
						L-Bars; and Digital Banners.</li>
						<li>Players may enter an Eligible ticket into the Promotion at any time of day during the Promotion Period.
						Except that, entry capabilities on the website and App will be unavailable from 12 a.m. through 6 a.m. ET due to
						routine maintenance and may be unavailable at other times if there are technical difficulties.</li>
						<li>A player may enter multiple tickets during the entry period; however, each ticket number can only be
						entered one time. A player may enter up to a maximum of 200 tickets per day.</li>
						<li>A player can only win one prize.</li>
						<li>The odds of winning depend on the number of entries in the Promotion. All entries are subject to validation
						by the Florida Lottery and will be disqualified if eligibility requirements are not met.</li>
					</ol>
				</li>
				<li>Prizes. The following table sets forth the prizes available in the Promotion.
					<table class="dataTbl secondTbl">
						<tr>
							<th style="width: 300px;">Prize</th>
							<th>Number of Prizes Available</th>
						</tr>
						<tr>
							<td>Ford Vehicle* + Expense-Paid Trip to Hollywood, Florida + Free Fuel for a Year</td>
							<td>10</td>
						</tr>
						<tr>
							<td>Free Fuel for Life**</td>
							<td>1**</td>
						</tr>
						<tr>
							<td>Free Fuel for a Year**</td>
							<td>Up to 29**</td>
						</tr>
					</table>
					<p>* The vehicle model year will be 2023/2024, depending upon availability. Vehicle Prize includes payment of 
					sales tax, dealer fees, and vehicle registration</p>
					<p>** "Free Fuel for a Year" and "Free Fuel for Life" prizes are awarded in the form of fuel/gas gift card/s. Aside
					from the initial "Free Fuel for a Year" prize, the winner of the "Free Fuel for a Life" prize may not win additional
					"Free Fuel for a Year" prizes. The other nine (9) winners may win additional "Free Fuel for a Year" prizes. Up to
					twenty-nine (29) additional "Free Fuel for a Year" prizes will be awarded. "Free Fuel for Life" is based on a 25-year
					period. Fuel valuations are based on gasoline prices known at the time of this Promotion and do not account for
					price fluctuations or inflation; no future adjustments will be made. Fuel/gas gift cards will not be replaced should
					they be lost, stolen, mutilated, or otherwise damaged and will not be otherwise compensated.<br>
					Should the entity issuing the fuel/gas gift card/s, whether under its current name, operating under another name,
					or otherwise merged with another entity, its parent company, subsidiaries, divisions, banks/financial institutions,
					and/or other entities responsible for honoring the fuel/gas gift cards declare bankruptcy or in any manner be unable
					to honor or refuse to honor the fuel/gas gift card/s awarded in this Promotion, no cash compensation or other manner
					of compensation shall be provided.</p>
				</li>
				<li>Drawing. One promotional drawing will be held. Winners will be randomly selected from valid entries
					submitted and received by the Florida Lottery by 11:59:59 p.m., ET on August 6, 2023. The entry period, drawing
					date, and winner announcement date are set forth in the table below. The drawing will be public, held in Tallahassee,
					Florida, and witnessed by an accountant employed by an independent certified public accounting firm.
						<table class="dataTbl secondTbl">
							<tr>
								<th>Entry Period</th>
								<th>Drawing Date</th>
								<th>Winners Announced</th>
							</tr>
							<tr>
								<td>July 3 - August 6, 2023</td>
								<td>August 8, 2023</td>
								<td>August 10, 2023</td>
							</tr>
						</table>
					In the drawing, a total of 20 valid entries will be drawn by the Florida Lottery using a certified random number
					generation process. The first ten (10) valid entries will be named as winners. The remaining valid entries drawn will
					be used in the order in which they were drawn and in the order of need to select winners in the event:  a) two or
					more ticket numbers are drawn that are associated with the same player (ten different and unique players will be
					declared winners); b) a winner cannot be contacted ; or c) a winner does not provide the necessary documentation to
					the Lottery within the designated time frames, as specified in subsections (5) and (6), below.
				</li>
				<li>Winner Notification.<br>
				The winners in the drawing will be posted on floridalottery.com on the announcement date set forth in the table in
				subsection (4), above, or as soon thereafter as practical. The Florida Lottery will attempt to notify each winner by
				telephone or email using the contact information provided in the winner's registration data no later than one business
				day after the winners are posted on the Florida Lottery's website. The Lottery deems the winner's registration data
				as the winner's official contact information. The Lottery will not attempt to further locate a winner if attempts to
				reach the winner by telephone or email are unsuccessful. Upon having contact with a winner, and within seven (7)
				calendar days of contact, a winner must provide the required documentation to the Lottery, as set forth subsection
				(6), below. If a winner does not contact the Lottery and provide the required documentation to the Lottery, the
				winner will forfeit his/her right to claim a prize.<br>
				As time permits, and in accordance with Atlas Experiences, LLC/Florida Lottery scheduling requirements, the
				Lottery will award the prize to an alternate winner. If the Lottery is unable to have contact by email or telephone
				with the alternate winner and obtain the required documentation, as per subsection (6), within seven (7) calendar
				days of the Lottery's contact with him/her, the alternate winner will forfeit his or her right to claim the prize.<br>
				If the Lottery is unable to achieve contact with a winner/alternate or receive the required documentation from a
				winner/alternate, the prize will not be awarded. Leaving a voicemail message, if available, and/or issuing an email,
				if available, constitutes "contact" with a winner. The Florida Lottery is not responsible or liable for email failures or
				faults, telephone failures or faults, voicemail failures or faults; system, network, or software failures or faults; or the
				like.</li>
				<li>How to Claim a Prize.
					<ol type="a">
						<li>Winners must submit a completed Winner Claim Form DOL 173-2, revised 2/2023, or a Spanish Winner
						Claim Form DOL 173-2S, revised 2/2023, and a copy of acceptable identification as set forth in the rule of the
						Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the
						Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. Forms DOL
						173-2 and DOL 173-2S are hereby incorporated by reference and may be obtained at any Florida Lottery office or
						retailer, from the Florida Lottery's website at <a href="http://www.floridalottery.com/">floridalottery.com</a>, or by contacting the Florida Lottery, Claims
						Processing, 250 Marriott Drive, Tallahassee, Florida 32399-4016.</li>
						<li>Winners must also submit a completed Winner Release, Acknowledgement, and Authorization form DOL-
						474-FREE RIDE-Winner, effective 7/3/2023, and a Guest Release, Acknowledgement, and Authorization form
						DOL-474-FREE RIDE-Guest, effective 7/3/2023. Forms DOL-474-FREE RIDE-Winner and DOL-474-FREE
						RIDE-Guest are hereby incorporated by reference and may be obtained at any Florida Lottery office or by
						contacting the Florida Lottery, Claims Processing, 250 Marriott Drive, Tallahassee, Florida 32399-4016.</li>
						<li>A winner's Winner Claim Form (DOL 173-2 or DOL 173-2S), copy of the winner's identification, and the
						winner's completed DOL-474-FREE RIDE-Winner (Winner Release, Acknowledgement, and Authorization) must
						be received by any Lottery office no later than seven (7) calendar days after the Florida Lottery has made contact
						with the winner. If the Lottery has not received the required documentation from a winner by the seventh calendar
						day after contact, the winner will forfeit his or her right to claim the prize and the Lottery will award the prize to an
						alternate winner in accordance with subsections (4) and (5), above, as time permits. The same timeframe for a
						winner to return required documentation to the Lottery shall apply to an alternate winner.</li>
					</ol>
				</li>
				<li>Expense-Paid Trip.
					<ol type="a">
						<li>Upon the Florida Lottery's timely receipt of a winner's required documentation, the Lottery will award an
						Expense-Paid Trip to the Diplomat Beach Resort in Hollywood, Florida. Atlas Experiences, LLC will administer
						and manage the Trip elements, consisting of:
							<ol>
								<li>Hotel accommodations for two (2), double occupancy for two (2) nights at the Diplomat Beach Resort.
								Winners shall be required to submit a valid major credit card to the Resort to cover all expenses not specifically
								awarded. A winner must book Resort reservations on or before September 18, 2023. Should a winner not make such
								reservations on or before September 18, 2023, the winner will forfeit lodging, the BBQ dinner, the right to
								participate in the Promotional Game Show a/k/a Lucky Pik Digital Game Show ("Game Show"), defined below, and
								the award of any Game Show prizes (vehicle and Free Fuel). Upon such forfeiture, no cash or other compensation
								shall be awarded.</li>
								<li>Welcome gift, valued at approximately $50.</li>
								<li>Bar-B-Que beach dinner.</li>
								<li>$1,500 Travel Allowance, issued as a no-fee gift card. This Travel Allowance is to cover, at the winner's
								discretion and chosen mode of travel, his/her and his/her guest's travel expenses to and from the Diplomat Beach
								Resort. Should $1,500 not cover the travel expenses, any additional expenses are the sole responsibility of the
								winner/guest. A lost, stolen, mutilated, or otherwise damaged gift card will not be replaced or otherwise
								compensated and will not reduce the prize value for taxation purposes. A winner and his/her guest may still travel to
								Hollywood, Florida at the winner's/guest's sole expense. No allowances or adjustments shall be made for the
								distance/s from which a winner and his/her guest must travel to Hollywood, Florida.</li>
								<li>Participation in the Promotional Game Show, developed and administered by and at the direction of Atlas
								Experiences, LLC, to win a vehicle and either "Free Fuel for Life" or "Free Fuel for a Year" prizes. Each of the 10
								winners of the Expense-Paid Trip will win one vehicle in the Game Show and a minimum of one year of free fuel;
								no winner may win more than one vehicle in the Game Show. Ten (10) pre-selected vehicles will be present and
								available at the Game Show; no other vehicles, aside from those present, will be made available to players.<br>
								Prior to finalization of an award of a vehicle and fuel/gas gift card/s, a player must submit a second completed
								Winner Claim Form DOL 173-2, revised 2/2023, or a Spanish Winner Claim Form DOL 173-2S, revised 2/2023,
								and a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes.
								Upon completion of all vehicle registration requirements and verifications and receipt of the required
								documentation, each of the ten winners shall take possession of his/her vehicle at the Game Show. To leave with the
								vehicle, the winner must present proof of a valid driver's license and proof of vehicle insurance as required by the
								laws of the state of residence of the winner, which in Florida are Chapters 322 and 324, Florida Statutes,
								respectively. If the winner is unable to provide proof of a valid driver's license and valid insurance, the vehicle must
								be removed by trailer or similar transport equipment provided by the winner at his/her expense or driven by a person
								of the winner's choice, and at his/her expense, who is able to provide proof of a valid driver's license and valid
								insurance. Neither the Florida Lottery nor Atlas Experiences, LLC provide any warranty, maintenance plan, or
								additional accessories for the vehicles.</li>
								<li>Payment of Federal income tax withholding on the total retail value of the prize elements described in
								subparagraphs 1. through 5., above.<br>
								The reportable taxable value of the Expense-Paid Trip; vehicle; vehicle sales tax, dealer fees, and vehicle
								registration; and gas/fuel gift card/s includes the value of the prize plus the value of the Federal income tax
								withholding paid by the Lottery and are set forth in the table below:
									<table class="dataTbl secondTbl">
										<tr>
											<th>Prize Element</th>
											<th>Approximate Retail Value</th>
											<th>Estimated Reportable Taxable Value (U. S. Citizen or Legal Resident - 24%)</th>
											<th>Estimated Reportable Taxable Value (Nonresident - 30%)</th>
										</tr>
										<tr>
											<td>Expense-Paid Trip ($1,500 Travel Allowance, hotel, Welcome Gift, and Covered Meals)</td>
											<td>$3,400.00</td>
											<td>$4,473.68</td>
											<td>$4,857.14</td>
										</tr>
										<tr>
											<td>Ford Vehicle (Plus Vehicle Sales Tax, Dealer Fees, Tag/Registration Expenses)</td>
											<td>$60,000.00 MSRP (Vehicle) + $4,700.00 (Estimated Sales Tax, Dealer Fees, Tag/Registration) (Total:  $64,700.00)</td>
											<td>$85,131.58</td>
											<td>$92,428.57</td>
										</tr>
										<tr>
											<td>Free Fuel for a Year (Each Year Won)</td>
											<td>$4,500.00</td>
											<td>$5,921.05</td>
											<td>$6,428.57</td>
										</tr>
										<tr>
											<td>Free Fuel for Life (Capped at 25 Years)</td>
											<td>$112,500.00</td>
											<td>$148,026.32</td>
											<td>$160,714.29</td>
										</tr>
									</table>
								</li>
							</ol>
						</li>
						<li>As to any guest, the Florida Lottery must receive a completed Form DOL-FREE RIDE-Guest (Guest
						Release, Acknowledgement, and Authorization) on or before September 1, 2023. A guest must be 18 years of age or
						older.</li>
						<li>The Expense-Paid Trip and Game Show event takes place from October 20 through October 22, 2023. The
						Florida Lottery reserves the right to change event dates as circumstances require.</li>
						<li>Except as specified above, an Expense-Paid Trip does not include a specific mode of travel to and from a
						winner/guest's residence and Hollywood, Florida, other travel, meals, parking fees, baggage fees, insurance,
						alcoholic beverages (other than those served without charge at any reception and/or party), any items not expressly
						specified, such as, incidentals, tips, and personal expenses such as telephone calls, internet, valet service or laundry,
						etc., as well as rebooking or cancellation fees that may be charged by the hotel, airline, or other suppliers.</li>
						<li>Atlas Experiences, LLC shall determine, in its sole discretion, the specific merchandise models, items,
						vendors, and/or retailers for all elements of the prize and reserves the right to substitute (i) any portion or elements
						of the prize for items of comparable or greater value; and/or (ii) any specified brand, vendor, or retailer for one of
						comparable quality. Elements of the prize are subject to availability and may be fulfilled by third-party companies
						and/or vendors.</li>
						<li>A winner must be present at and participate in the Game Show to win a Vehicle and Free Fuel. If a winner
						arrives more that fifteen (15) minutes past the designated/posted start time for the Game Show, the winner is deemed
						as "not being present." Should a winner not be present at the Game Show, the winner forfeits all prizes that would
						have been awarded at the Game Show. No cash or other substitutions will be awarded to a winner who is not present
						at the Game Show. A guest may not appear on behalf of a winner or act as a winner's proxy in the Game Show. A
						winner will remain taxable on the Expense-Paid Trip portion of the prize.</li>
					</ol>
				</li>
				<li>No substitution of any kind, cash redemptions/substitution/compensation, assignment, or transfer of any
				prize, prize element, or gift card/s is permitted. Any unused prize or prize elements or prizes not able to be awarded
				for any reason will be forfeited, will not be redeemable for cash, and will not reduce the prize value awarded for tax
				purposes, except as to a vehicle and any fuel gift card/s not awarded. A prize substitution initiated by the Florida
				Lottery or its providers are at the sole discretion of the Florida Lottery and its providers. Should there be prize
				substitutions, such will be of comparable or greater value.</li>
				<li>Taxes. Except as specifically described herein, all federal, state and/or local taxes or other fees on any prize
				or prize element shall be the sole responsibility of the winner, regardless of whether a winner avails himself/herself
				of the prize or has forfeited a prize.</li>
				<li>Other Restrictions and Provisions
					<ol type="a">
						<li>Players must be at least 18 years of age. Persons prohibited by section 24.116, Florida Statutes, from
						purchasing a Florida Lottery or CASH4LIFE ticket are not eligible to enter the FREE RIDE AND FUEL FOR LIFE
						BONUS PLAY Promotion.</li>
						<li>All prizes are subject to the provisions of Chapter 24, Florida Statutes, and rules promulgated thereunder.
						Prizes shall be paid in accordance with the rule of the Florida Lottery governing payment of prizes. A copy of the
						current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott
						Drive, Tallahassee, Florida 32399-4011.</li>
						<li>By entering the FREE RIDE AND FUEL FOR LIFE BONUS PLAY Promotion, a player gives his or her
						permission for the Florida Lottery to photograph and/or videotape and record the winner with or without prior
						notification and to use the name, photograph, videotape, and/or recording of the winner for advertising or publicity
						purposes without additional compensation.</li>
					</ol>
				</li>
			</ol>
			<p><em>Rulemaking Authority 24.105(9), 24.109(1), FS.  Law Implemented 24.105(9), 24.115(1) FS.  History - New 7-3-2023.</em></p>
			<p>The official rule for the Free Ride and Fuel for Life Bonus Play Promotion can be obtained from the Florida Administrative Code
			at www.flrules.org on or soon after July 3, 2023. In the event of a conflict between a provision of this rule version and the official
			rule, the official rule shall govern.</p>
		</div>
	</div>
</div>