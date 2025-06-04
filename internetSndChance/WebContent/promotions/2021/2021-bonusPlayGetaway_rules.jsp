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
    <jsp:include page="../2021/includes/2021-bonusPlayGetaway_navigation.jsp"></jsp:include>
  </div>
  <div id="mainContentWrap">
    <div id="mainContent">
    
      <h1><s:property value="messages.h1Title"/></h1>
		<p><strong>53ER21-60 Bonus Play Getaway Promotion.</strong></p>    
 <ol>
	<li>Beginning November 1, 2021, and continuing through December 31, 2021, ("Promotion Period") the Florida Lottery will conduct the Bonus Play Getaway Promotion ("Promotion") in which players can enter HOLIDAY WINNINGS and GOLD RUSH LIMITED Florida Lottery Scratch-Off tickets (also known as instant tickets) and FANTASY 5<sup>&reg;</sup> (with or without EZmatch<sup>&trade;</sup>) tickets purchased/obtained during the Promotion Period into promotional drawings  for a chance to win a Hawaii VIP Getaway Trip, a Royal Caribbean<sup>&reg;</sup> International Royal Incentive Rewards &ndash; Individual Cruise Certificate Program Certificate, or StubHub<sup>&reg;</sup> gift cards.  Non-winning Scratch-Off tickets from Game Numbers: 5023 ($10,000 HOLIDAY WINNINGS), 5024 ($50,000 HOLIDAY WINNINGS), 5025 ($1,000,000 HOLIDAY WINNINGS), 7019 (HOLIDAY WINNINGS BLOWOUT) and 1501 (GOLD RUSH LIMITED) and non-winning, winning, and free tickets from  draw game FANTASY 5<sup>&reg;</sup> (with or without EZmatch<sup>&trade;</sup>) may be entered during the entire Promotion Period. Winning Scratch-Off lottery tickets from Game Numbers: 5023 ($10,000 HOLIDAY WINNINGS), 5024 ($50,000 HOLIDAY WINNINGS), 5025 ($1,000,000 HOLIDAY WINNINGS), 7019 (HOLIDAY WINNINGS BLOWOUT) and 1501 (GOLD RUSH LIMITED) and cancelled tickets from draw game FANTASY 5<sup>&reg;</sup> (with or without EZmatch<sup>&trade;</sup>) cannot be entered into any Bonus Play Getaway promotional drawing.</li>
	<li><strong>How to Participate.</strong></li>
    	<ol type="a">
				<li>To enter non-winning tickets purchased during the Promotion Period from Game Numbers: 5023 ($10,000 HOLIDAY WINNINGS), 5024 ($50,000 HOLIDAY WINNINGS), 5025 ($1,000,000 HOLIDAY WINNINGS), 7019 (HOLIDAY WINNINGS BLOWOUT) and 1501 (GOLD RUSH LIMITED) and free (non-winning and winning) tickets obtained and non-winning and winning tickets purchased during the Promotion Period  from draw game FANTASY 5<sup>&reg;</sup> (with or without EZmatch<sup>&trade;</sup>) into one of the Bonus Play Getaway promotional drawings, a player may use the Florida Lottery's website at <a href="http://www.flalottery.com">flalottery.com</a> or use the Florida Lottery's Mobile Convenience App ("App"). On the home page of the Florida Lottery's website, players are to click on the Promotions tab, select the Bonus Play Getaway Promotion and follow the directions. Players will be prompted to log-in or register. On the App, players may click on either of the Promotions buttons, select the Bonus Play Getaway Promotion and follow the directions. Players will be prompted to log-in or register if not already logged in. A Promotions button is located on the main menu and also on the bottom navigation bar.     
                      <ol>
						<li>Game Numbers: 5023 ($10,000 HOLIDAY WINNINGS), 5024 ($50,000 HOLIDAY WINNINGS), 5025 ($1,000,000 HOLIDAY WINNINGS), 7019 (HOLIDAY WINNINGS BLOWOUT) and 1501 (GOLD RUSH LIMITED). For entries using the website or the App, players are to scratch off the coating on the front of the Scratch-Off tickets to reveal the 24-digit ticket serial number (4-digit game number and 20-digit ticket number). The 24-digit ticket serial number is located below the play area on the front of the Scratch-Off ticket under the latex covering. Enter the entire number in the designated ticket entry area. Enter the 3-digit pin in the designated entry area. Each of the three (3) digits that make up the pin is contained in a rectangular/square box imbedded within the 24-digit ticket number.  Enter each digit of the pin in the order found in the ticket number. Players may also use the App to scan the ticket barcode located under the Scratch-Off ticket coating on the front of the ticket.</li>
                        <li>FANTASY 5<sup>&reg;</sup> (with or without EZmatch<sup>&trade;</sup>). Players are to enter the 19-digit ticket serial number, located on the front of the ticket, in the designated ticket entry area on the website or the App. A player may also scan the ticket barcode located at the bottom of the ticket. </li>
			 	        <li>Number of Entries Recieved. For each qualifying ticket, a player will receive the number of entries as set forth in the table below:</li>
				     </ol>	
			<table class="dataTbl">
				<thead>
					<tr>
                        <th width="302" class="txtc">Game</th>
						<th width="149" class="txtc">Price Point</th>
						<th width="180" class="txtc">Number of Entries</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="txtl">#5023 &ndash; $10,000 Holiday Winnings</td>
						<td class="txtc">$1</td>
						<td  class="txtc">1</td>
					</tr>
					<tr>
						<td class="txtl">#5024 &ndash; $50,000 Holiday Winnings</td>
						<td class="txtc">$2</td>
						<td  class="txtc">2</td>
					</tr>
					<tr>
						<td class="txtl">#5025 &ndash; $1,000,000 Holiday Winnings</td>
						<td class="txtc">$5</td>
						<td  class="txtc">5</td>
					</tr>
					<tr>
						<td class="txtl">#7019 &ndash; Holiday Winnings Blowout</td>
						<td class="txtc">$10</td>
						<td  class="txtc">10</td>
					</tr>
					<tr>
						<td class="txtl">#1501 &ndash; Gold Rush Limited</td>
						<td class="txtc">$20</td>
						<td  class="txtc">20</td>
					</tr>
					<tr>
						<td class="txtl">Fantasy 5<sup>&reg;</sup> (with or without Ezmatch<sup>&trade;</sup>)</td>
						<td class="txtc">Any purchase price</td>
						<td  class="txtc">Equal to the purchase price <br> (e. g. for each dollar spent,<br> one entry received)</td>
					</tr>
					<tr>
						<td class="txtl">Fantasy 5<sup>&reg;</sup> (with or without Ezmatch<sup>&trade;</sup>)</td>
						<td class="txtc">Free</td>
						<td  class="txtc">Equal to the number of plays shown on the ticket. (i.e. one (1) horizontal line of play numbers is one (1) play. <br>For example, three horizontal lines of play numbers represent three plays and receives three entries.)</td>
					</tr>
				</tbody>
			</table>
				</li> 
				<li> Except as stated herein, players may enter a qualifying ticket into the Promotion at any time of day during the Promotion Period. Entry capabilities on the website and App will be unavailable from 12 a.m. through 6 a.m. ET due to routine maintenance and may be unavailable at other times if there are technical difficulties.</li>
				<li>Any attempt by a player to use more than one account by using multiple or different email addresses, identities, registrations, logins, or any other methods will subject the player and any associated entries to disqualification.</li>
				<li>Regardless of whether a player chooses to participate in the Promotion by mobile device or web browser the following provisions shall apply: 
					<ol>
						<li>the player must use the same account login information to enter tickets;</li>
						<li>the player will only be required to register one time; and </li>
						<li>the player's entry history will be cumulative among the entry platforms.</li>			
					</ol>
				</li>
				<li>A player may enter multiple tickets during the entry period; however, each ticket number can only be entered one time. A player may enter up to a maximum of 200 tickets per day.</li>
				<li>A player can only win one prize per ticket entry.</li>
				<li>The odds of winning depend on the number of entries in the drawing. All entries are subject to validation by the Florida Lottery and may be disqualified if eligibility requirements are not met. </li>
				<li>Lottery tickets should not be mailed to the Lottery for entry into the drawing. Lottery tickets received in the mail by the Florida Lottery will not be entered into the drawing and will not be returned. </li>
	</ol>
	<li><strong>Promo Codes.</strong> Various promo codes providing additional entries will be available during the Promotion via static banners; Connected TV (CTV) devices; pre-roll overlays; gas station TV; emails; Holiday envelopes, which can be obtained at retail locations; and POWERBALL<sup>&reg;</sup> ticket vouchers for POWERBALL<sup>&reg;</sup> (with or without Power Play<sup>&reg;</sup>, with or without DOUBLE PLAY<sup>&reg;</sup>, and/or any combination thereof)  ticket purchases of $10 or more. Non-winning ticket numbers from Game Numbers: 5023 ($10,000 HOLIDAY WINNINGS), 5024 ($50,000 HOLIDAY WINNINGS), 5025 ($1,000,000 HOLIDAY WINNINGS), 7019 (HOLIDAY WINNINGS BLOWOUT) and 1501 (GOLD RUSH LIMITED) and non-winning, winning, and free ticket numbers from draw game FANTASY 5<sup>&reg;</sup> (with or without EZmatch<sup>&trade;</sup>) must be entered to enable the promo code feature, and the ticket number and the promo code must be entered at the same time. Each promo code is only valid for the corresponding entry period for which it is designated and can only be entered one time. However, more than one different promo code may be entered during the corresponding entry period for which it is designated, each with a different ticket number. Promo codes available for Entry Period 1 cannot be used, and will not be valid, for Entry Period 2.</li>
		  <li><strong>Prizes.</strong> The following table sets forth the prizes available in the Promotion. 
		  		<table class="dataTbl">
				<thead>
					<tr rowspan="4">
						<th colspan="4" class="txtc">Prizes per Drawing</th>
					</tr>
					<tr>
						<th width="128" class="txtc">Prize Level</th>
                        <th width="500" class="txtc">Prize</th>
						<th width="124" class="txtc">Number of Prizewinners<br> per Drawing</th>
						<th width="106" class="txtc">Total Number of<br>Prizewinners <br>in Promotion</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="txtl">Top Prize</td>
						<td class="txtl">Hawaii VIP Getaway Trip</td>
						<td  class="txtc">25</td>
						<td class="txtc">50</td>
					</tr>
					<tr>
						<td class="txtl">Second Prize</td>
						<td class="txtl">Royal Caribbean<sup>&reg;</sup> Cruise Certificate</td>
						<td  class="txtc">111</td>
						<td class="txtc">222</td>
					</tr>
					<tr>
						<td class="txtl">Third Prize</td>
						<td class="txtl">$500 in StubHub<sup>&reg;</sup> Gift Cards (two $250 gift cards)</td>
						<td  class="txtc">126</td>
						<td class="txtc">252</td>
					</tr>
					<tr>
						<td class="txtl">Total</td>
						<td class="txtc"></td>
						<td  class="txtc">262</td>
						<td class="txtc">524</td>
					</tr>
				</tbody>
			</table>
		</li>
		  <li><strong>Drawings.</strong> Two promotional drawings will be held. Prizewinners for each drawing will be randomly selected from valid entries submitted and received before midnight ET on the last day of the entry period for that drawing. The entry periods, drawing dates, and winner announcement dates are set forth in the table below. Drawings will be public, held in Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm.
			
			<table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="283" class="txtc">Entry Period</th>
							  <th width="104" class="txtc">Drawing Date</th>
                              <th width="204" class="txtc">Winners Announced</th>
                         </tr>
                    </thead>
                    <tbody >
						  <tr>
                              <td class="txtc">1</td>   
                              <td class="txtc">November 1, 2021 &ndash; November 30, 2021</td>
                              <td class="txtc">December 2, 2021</td>
							  <td class="txtc">December 6, 2021</td>
                      </tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">December 1, 2021  &ndash; December 31, 2021 </td>
                              <td class="txtc">January 6, 2022</td>
							  <td class="txtc">January 10, 2022</td>
                      </tr>   
                    </tbody>
            </table>				
		</li>
			<p>In each drawing, a total of 412 valid entries will be drawn by the Florida Lottery using a certified random number generation process. The first twenty-five valid entries drawn will win a top prize. Valid entries twenty-six through one hundred thirty-six drawn will each win a second prize. Valid entries one hundred thirty-seven through two hundred sixty-two will each win a third prize. The remaining valid entries drawn will be used in the order in which they were drawn and in the order of need to select alternate top and second prize winners in the event a top or second prize cannot be awarded. Alternate entries will not be drawn for the third prize.</p>
		<li><strong>Prizewinner Notification. </strong></li>
       		<ol type="a">
				<li>The prizewinners in each drawing will be posted on <a href="http://www.flalottery.com">flalottery.com</a> on the announcement date set forth in the table in subsection (5), above, for the related drawing, or as soon thereafter as practicable.</li> 
				<li>The Florida Lottery will attempt to notify each prizewinner by telephone or email using the contact information provided in the prizewinner's registration data no later than one business day (Monday-Friday) after the prizewinners are posted on the Florida Lottery's website. The Florida Lottery deems the winner's registration data as the prizewinner's official contact information. The Florida Lottery will not attempt to further locate a prizewinner if attempts to reach the winner by telephone or email are unsuccessful. If the Florida Lottery is unable to have contact by telephone or email with a prizewinner within ten calendar days of the date the prizewinners are posted on the website, the winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner in accordance with subsection (5) above. If the Florida Lottery is unable to have contact by email or telephone with the alternate prizewinner within ten calendar days of the date of notification, the alternate prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to the next alternate prizewinner. This process will continue until an alternate prizewinner is contacted or the Florida Lottery has exhausted the list of alternate prizewinners due to unsuccessful notification attempts or due to failure by a prizewinner or an alternate prizewinner to timely provide required claim documentation as set forth in subsection (7) below. If the Florida Lottery exhausts the list of alternate prizewinners, the prize will not be awarded. The Florida Lottery is not responsible or liable for email failures or faults, telephone failures or faults, voicemail failures or faults; system, network, or software failures or faults; or the like.</li>
			</ol>
<li><strong>How to Claim a Prize. </strong></li>
       		<ol type="a">
				<li>Top and second prize winners must submit a completed Winner Claim Form DOL 173-2, revised 3/21, or a Spanish Winner Claim Form DOL 173-2S, revised 3/21, and a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. Forms DOL 173-2 and DOL 173-2S are hereby incorporated by reference and may be obtained at any Florida Lottery office or retailer, from the Florida Lottery’s website at <a href="http://www.flalottery.com">flalottery.com</a>, or by writing to: Florida Lottery, Claims Processing, 250 Marriott Drive, Tallahassee, Florida 32399-4016. </li>
				<li> Top prize winners must also submit a completed Hawaii VIP Getaway Trip Winner Release, Acknowledgement, and Authorization form DOL-474-BPGP-WH Hawaii, effective 10/28/21 and a Hawaii VIP Getaway Trip Guest Release, Acknowledgement, and Authorization form DOL-474-BPGP-GH Hawaii, effective 10/28/2021.</li>
				<li>Second prize winners must also submit a completed Royal Caribbean Cruise Certificate Winner Release, Acknowledgement, and Authorization form DOL-474-BPGP-WR Royal, effective 10/28/2021.</li>
				<li>Third prize winners must submit a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes.</li>
				<li>Forms DOL-474-BPGP-WH Hawaii, DOL-474-BPGP-GH Hawaii, and DOL-474-BPGP-WR Royal are hereby incorporated by reference and may be obtained at any Florida Lottery office or by writing to: Florida Lottery, Claims Processing, 250 Marriott Drive, Tallahassee, Florida 32399-4016.</li>
				<li>As applicable, a prizewinner's Winner Claim Form (DOL 173-2, revised 3/21 or DOL 173-2S, revised 3/21) and a copy of the prizewinner’s identification, along with the prizewinner's completed DOL-474-BPGP-WH Hawaii, effective 10/28/2021 (Winner Release, Acknowledgement, and Authorization) or DOL-474-BPGP-WR Royal, effective 10/28/2021 (Winner Release, Acknowledgement, and Authorization), must be received by any Florida Lottery office no later than ten calendar days after the Florida Lottery has made contact with the prizewinner. If the Florida Lottery has not received the required documentation from a prizewinner by the tenth calendar day after notification, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner in accordance with subsections (5) and (6) above. The same timeframe for a prizewinner to return required documentation to the Florida Lottery shall apply to an alternate prizewinner. </li>
			</ol>
	<li><strong>Award of Top Prizes (Hawaii VIP Getaway Trip).</strong></li>
	     		<ol type="a">
				<li>Upon the Florida Lottery’s timely receipt of a top prize winner’s required documentation, the Lottery will award a Hawaii VIP Getaway Trip. Atlas Experiences, LLC will arrange and provide for the Hawaii VIP Getaway Trip elements, consisting of the following: 
					<ol>
						<li>Hotel accommodations for two (2), double occupancy, at the Fairmont Orchid - Hawaii, or accommodations of comparable value.</li>
						<li>Roundtrip airfare to Hawaii for two (2) from the nearest major commercial airport, within the state of Florida, in the vicinity of the residence of the Top Prize Winner (or their Proxy).</li>	
						<li>Roundtrip transportation from the airport to the hotel accommodations and scheduled events.</li>
						<li>Daily breakfast buffet or equivalent at the accommodations.</li>
						<li>Welcome gift that includes sunscreen lotions, lip balm, and a beach towel.</li>
						<li>Private welcome reception that will include dinner and drink tokens.</li>
						<li>Taste of the Islands Dinner showcasing locations, chefs, and local cuisine. </li>
						<li>Choice of a Sunset Cruise on a local catamaran cruise line or a 60-minute massage at the accommodations.</li>
						<li>$1,000 spending cash. (Upon completion of the state-owed debt/child support analysis, as described in section (13), below, and after June 1, 2022, spending cash payments will be issued to Hawaii VIP Getaway Trip winners.)</li>
						<li>Opportunity to participate in the $50,000 Lucky Pik Game Show ("Lucky Pik Game") and the possibility of winning a prize of $250 (18 awarded), $500 (16 awarded), $1,000 (10 awarded), $2,500 (3 awarded), $5,000 (2 awarded), or $10,000 (1 awarded). The Lucky Pik Game has been developed by and at the direction of Atlas Experiences, LLC. Each of the 50 winners of the Hawaii VIP Getaway Trip will win one cash prize in the Lucky Pik Game; no Trip winner may win more than one prize in the Lucky Pik Game. Prizewinners in the Lucky Pik Game will be chosen using a certified random number generator. One of the above-listed cash prizes from the Lucky Pik Game will be awarded to any winner of the Hawaii VIP Getaway Trip who does not attend the Lucky Pik Game. Upon the Lottery's receipt of a winner's claim form, as described herein, and completion of the state-owed debt/child support analysis, as described in section (13)(a), and deduction of Federal tax withholding, as described in section (12)(b), Lucky Pik Game prize payments will be issued to Hawaii VIP Getaway Trip winners. A winner of $1,000 and higher in the Lucky Pik Game must submit a Winner Claim Form (DOL 173-2, revised 3/21 or DOL 173-2S, revised 3/21) and a copy of his/her identification prior to issuance of the Lucky Pik Game prize to the winner.   </li>
						<li>Payment of Federal income tax withholding on the total retail value of the Hawaii VIP Getaway Trip elements described in subparagraphs 1. through 9., above, except as to the cash prize from the $50,000 Lucky Pik Game Show.</li>
					
				<p>Exclusive of the cash prize received in the $50,000 Lucky Pik Game Show, the reportable taxable value of the Hawaii VIP Getaway Trip includes the value of the prize plus the value of the Federal income tax withholding paid by the Lottery. The retail value of the Hawaii VIP Getaway Trip Prize and the estimated reportable taxable value of the prize for a U.S. citizen are as follows:
                  	<table width="577" class="dataTbl">
                    <thead>
                         <tr>
                              <th width="321" class="txtc">Approximate Retail Value of <br>Hawaii VIP Getaway Trip <br> (exclusive of a Lucky Pik Game Show cash prize)</th>
                              <th width="408" class="txtc">Estimated Reportable Taxable Value <br>of Hawaii VIP Getaway Trip</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">$11,700.00</td>
                              <td class="txtc">$15,394.74</td>
                      </tr>                        
                    </tbody>
               		</table>
				</p>
					 </ol>			
				
				</li>
				<li>As to any guest, the Florida Lottery must receive a completed Form DOL-474-BPGP-GH Hawaii, effective 10/28/2021 (Guest Release, Acknowledgement, and Authorization) on or before June 17, 2022. A guest must be 18 years of age or older. No guest changes or proxy appointments are permitted past this date. Once names are submitted, any changes made may incur a fee.</li>
				<li>The Hawaii VIP Getaway Trip event takes place from September 10, 2022 through September 16, 2022.  The Florida Lottery reserves the right to change event dates as circumstances require.</li>
				<li>Except as specified above, a Hawaii VIP Getaway Trip does not include travel to and from a prizewinner's residence and an airport, other travel, meals, parking fees, baggage fees, travel insurance, alcoholic beverages (other than those served without charge at any reception and/or party), any items not expressly specified, such as, incidentals, tips, and personal expenses such as telephone calls, valet service or laundry, etc., as well as rebooking or cancellation fees that may be charged by the hotel, airline, or other suppliers.</li>
				<li>Atlas Experiences, LLC shall determine, in its sole discretion, the specific merchandise models, items, vendors, and/or retailers for all elements of the Hawaii VIP Getaway Trip prize and reserves the right to substitute (i) any portion or elements of the Trip prize for items of comparable or greater value; and/or (ii) any specified brand, vendor, or retailer for one of comparable quality. Elements of the Trip prize are subject to availability and may be fulfilled by third-party companies and/or vendors.</li>
				<li>If the prizewinner chooses not to use the Hawaii VIP Getaway Trip or becomes unavailable for any reason, the prizewinner may appoint a proxy, provided there is sufficient time, by completing a Proxy Appointment and Acknowledgement form DOL-491-B, revised 5/21. Form DOL-491-B and a completed Hawaii VIP Getaway Trip Proxy Release, Acknowledgement, and Authorization form DOL-474-BPGP-PH Hawaii, effective 10/28/21, must be received by the Lottery on or before June 17, 2022. Forms DOL-491-B and DOL-474-BPGP-PH Hawaii are hereby incorporated by reference and can be obtained from any Florida Lottery office, or by writing to Florida Lottery, Claims Processing Division, 250 Marriott Drive, Tallahassee, Florida 32399-4016. If the prizewinner or appointed proxy fails to book the trip prior to the booking deadline, the prizewinner will forfeit the trip and will remain taxable on the entire value of the Trip Prize. In the event a proxy is appointed, the original prizewinner shall receive the $1,000 spending cash and will receive a cash prize from the $50,000 Lucky Pik Game Show. Should a proxy, for any reason, be unable to travel, the proxy may not appoint another proxy; and the trip portion of the prize shall be forfeited. In such case, however, the prizewinner will still receive the $1,000 spending cash and will receive a cash prize in the $50,000 Lucky Pik Game Show. Under all circumstances, the entire value of the Hawaii VIP Getaway Trip shall remain taxable income to the original prizewinner.</li>
		</ol>
<li><strong>Award of Second Prizes (Royal Caribbean<sup>&reg;</sup> Cruise Certificate). </strong> Upon the Florida Lottery's timely receipt of a second prize winner's required documentation, as set forth in paragraph (7), above, the Florida Lottery will provide the second prize winner a Royal Caribbean International Royal Incentive Rewards &ndash; Incentive Cruise Certificate Program Certificate ("Certificate"), which has an approximate retail value of $2,000.</li>	
		  		<ol type="a">
						<li>A Royal Caribbean Cruise Certificate provides for a Platinum Caribbean cruise for two (2). The guest must be at least six (6) months of age. Cruises can be selected and booked at <a href="https://www.royalcaribbean.com/">royalcaribbean.com</a> and are subject to availability. Winner and guest bookings must be done under the same reservation. Changes to cruise bookings may be subject to rebooking and cancellation fees.</li>	
						<li>All elements, restrictions, and other terms and conditions for use of the Certificate are defined on the Certificate and on Royal Caribbean's website (<a href="https://www.royalcaribbean.com/">royalcaribbean.com</a>). </li>
						<li>The Certificate, or any element of a Certificate, may not be photocopied or altered. A photocopied or altered Certificate will not be honored. The determination as to whether a Certificate has been photocopied or altered is at the sole discretion of Royal Caribbean. A Certificate that has been damaged will not be redeemable, as determined at the sole discretion of Royal Caribbean. A lost, stolen, photocopied, altered, or damaged Certificate will not be replaced, nor will a cash or other type of substitution be permitted. </li>
						<li>The Certificate constitutes the entire prize. Any upgrades, amenities, off-ship excursions, on-ship expenses, rebooking and cancellation fees, and the like, not otherwise provided for or covered by the Certificate, shall be at the expense of the prizewinner.  Specific amenities, features, itineraries, off-ship excursions, and the like, are dependent on the cruise chosen; and a specific amenity, feature, itinerary, excursion, and the like, cannot be guaranteed. In accordance with Royal Caribbean guidelines and restrictions, the Certificate may not be used for certain cruises, for example, charter cruises. The last two (2) weeks of December which include Christmas and New Year sailings constitute a blackout period, and the Certificate cannot be used during this period. Any unused portion of a Certificate, or element thereof, shall be forfeited. </li>
						<li>Should a prizewinner, for any reason or no reason, be unable or unwilling to use a Certificate, a Certificate may be given to another person. A Certificate must be given in its entirety. If given to another person by the prizewinner, no element of the Certificate may be retained by the prizewinner. A Certificate sold for cash or other consideration will not be honored. The entire value of the Royal Caribbean Certificate shall remain taxable to the original prizewinner.</li>
						<li>Cruises booked using a Certificate must be booked and completed by June 9, 2023 to receive the full retail value of the Certificate. If a cruise is not completed by June 9, 2023, the Certificate will be given a dollar value based on the value of the Certificate as specified by Royal Caribbean in its annual pricing grid for Certificates in effect at the time of purchase. That value may be applied to a future cruise, which would be subject to the same terms, restrictions, and availability as described herein. If the new value does not cover the cost of a future cruise, the prizewinner is solely responsible for any additional cost and expense. No exchanges, substitutions, or cash redemption can be made. Any adjustment in the Certificate’s value will not reduce the value of the Certificate for tax purposes.</li>
						<li>Except as provided for under a Royal Caribbean Certificate, travel to and from a port, meals, off-ship excursions, on-ship activities, parking fees, baggage fees, travel insurance, alcoholic beverages, incidentals, tips, and personal expenses such as telephone calls, valet service or laundry, etc., as well as rebooking or cancellation fees are the sole responsibility of the prizewinner. </li>
				</ol>
		    
		<li><strong>Award of Third Prizes (StubHub® gift cards totaling $500)</strong>. Upon receipt of the required documentation, the Lottery will award StubHub® gift cards totaling $500.</li>
		<li>No substitution of any kind, a cash substitution, assignment, or transfer for any prize, prize element, Certificate, or gift card is permitted, except as provided herein. Any unused prize or prize elements will be forfeited, will not be redeemable for cash, and will not reduce the prize value awarded for tax purposes. A prize substitution initiated by the Florida Lottery or its providers are at the sole discretion of the Florida Lottery and its providers. Should there be prize substitutions, such will be of comparable or greater value.  </li>				 
		<li><strong>Taxes.</strong></li>
		  	<ol type="a">
					<li>Except as specifically described herein, all federal, state and/or local taxes or other fees on any prize or prize element shall be the sole responsibility of the prizewinner, regardless of whether a prizewinner avails himself/herself of the prize.  </li>
					<li>As to the $10,000 prize in the Hawaii VIP Getaway Trip Lucky Pik Game Show, Federal income tax withholding will be applied prior to issuance of payment to the winner of this prize. Federal income taxes will be withheld at a rate of twenty-four percent (24%), except as further described. Federal income taxes are required to be withheld from a prize awarded to a nonresident alien claimant at the rate of thirty percent (30%) pursuant to applicable provisions of the Internal Revenue Code. For noncash prizes, including gift cards and Royal Caribbean Certificates, a nonresident alien will be required to forward to the Lottery a thirty percent (30%) payment to cover taxes prior to award of the prize to him/her. The reporting and subsequent payment of any additional federal, state and/or local taxes shall be the responsibility of the prizewinner.  </li>
					<li>If the prizewinner claims a Trip or Certificate prize, but fails to make travel or cruise arrangements, as applicable, within the specified timeframes, as applicable, a Prize shall be forfeited, except for cash portions of the Hawaii VIP Getaway Trip. The entire value of a Prize will remain taxable income to the prizewinner.</li>
		  </ol>
		<li><strong>Other Restrictions and Provisions.</strong></li>
       		<ol type="a">
					<li>Prizewinners of $10,000, $5,000, $2,500, and $1,000 cash prizes in the Hawaii VIP Getaway Trip Lucky Pik Game Show and prizewinners of the Hawaii VIP Getaway Trip, with respect to the $1,000 cash portion, will be analyzed for state-owed debt and child support. If a prizewinner is identified as owing an outstanding debt to any state agency or owes child support collected through a court, the debt will be offset in accordance with section 24.115(4), Florida Statutes. If the debt is an amount less than the amount of the prize, the balance of the prize after deduction of the debt shall be awarded. If the debt is an amount greater than the amount of the prize, the entire prize amount will be applied to the outstanding debt.</li>
					<li>Players must be at least 18 years of age. Persons prohibited by section 24.116, Florida Statutes, from purchasing a Florida Lottery ticket are not eligible to enter the Bonus Play Getaway Promotion.</li>
					<li>All prizes are subject to the provisions of Chapter 24, Florida Statutes, and rules promulgated thereunder. Prizes shall be paid in accordance with the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011.   </li>
					<li>By entering the Bonus Play Getaway Promotion, a player gives his or her permission for the Florida Lottery to photograph and/or videotape and record the prizewinner with or without prior notification and to use the name, photograph, videotape, and/or recording of the prizewinner for advertising or publicity purposes without additional compensation.</li>
			</ol>			 
<p><span class = "small"><i>Rulemaking Authority 24.105(9), 24.109(1), FS.  Law Implemented 24.105(9), 24.115(1) FS.  History &ndash; New 10-28-21.</i></span> </p>
</ol>
