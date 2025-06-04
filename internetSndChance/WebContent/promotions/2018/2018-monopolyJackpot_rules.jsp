<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 3;</script>

<div id="main" class="monopolyJackpot rules">
  <div id="topBanner">
    <jsp:include page="includes/2018-monopolyJackpot_navigation.jsp"></jsp:include>
  </div>
  <div id="mainContentWrap">
    <div id="mainContent">
      <h1>
        <s:property value="messages.h1Title" />
      </h1>
      <ol>
        <li>Beginning July 2, 2018, and continuing through September 24, 2018, the Florida Lottery will conduct the Pass GO, Collect $20,000 Second Chance Promotion (“Promotion”) in which players can enter non-winning Florida Lottery Scratch-Off tickets (also known as instant tickets) from the following MONOPOLY<sup>&trade;</sup> JACKPOT family of games into a Pass GO, Collect $20,000 Second Chance Promotion second chance drawing for a chance to win a cash prize:
		 <ol type="a">
            <li>Game Number 1388, $1 MONOPOLY JACKPOT;</li>
			<li>Game Number 1389, $2 MONOPOLY JACKPOT;</li>
			<li>Game Number 1390, $5 MONOPOLY JACKPOT;</li>
			<li>Game Number 1391, $10 MONOPOLY JACKPOT; and </li>
			<li>Game Number 1398, $20 MONOPOLY JACKPOT. </li>
		</ol>
		Non-winning Scratch-Off lottery tickets from Game Number 1388 ($1 MONOPOLY JACKPOT), Game Number 1389 ($2 MONOPOLY JACKPOT) Game Number 1390 ($5 MONOPOLY JACKPOT); and Game Number 1391 ($10 MONOPOLY JACKPOT) may be entered throughout the entire Promotion (July 2, 2018 through September 24, 2018) for the next available drawing. Non-winning Scratch-Off lottery tickets from Game Number 1398 ($20 MONOPOLY JACKPOT) may only be entered during the period of September 17, 2018, through September 24, 2018, for entry into the September 26, 2018, drawing. Winning Scratch-Off tickets from the above-listed MONOPOLY JACKPOT family of games cannot be used for entry into a Pass GO, Collect $20,000 Second Chance Promotion second chance drawing. 
		</li>
        <li><strong>How to Enter. </strong></li>
			<ol type="a">
				<li>To enter a non-winning a MONOPOLY JACKPOT Scratch-Off ticket into one of the second chance drawings, players must enter on the Florida Lottery’s website at <a href="http://www.flalottery.com">flalottery.com</a>. On the home page of the Florida Lottery’s website, players can click on the Pass GO, Collect $20,000 Second Chance Promotion banner and follow the directions. Players will be prompted to log-in or register. The 24-digit ticket serial number (4-digit game number and 20-digit ticket number) is located below the play area on the front of a MONOPOLY JACKPOT Scratch-Off ticket under the latex covering. Players are to scratch off the latex covering to reveal the number and enter the entire 24-digit ticket serial number in the designated ticket entry area on the website. </li> 
				<li> Entry Determination. Each non-winning MONOPOLY JACKPOT Scratch-Off ticket is assigned a predetermined number of entries that corresponds to the price of the non-winning ticket, as shown in the table below. </li> 
				<table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Ticket Price Point</th>
                              <th width="268" class="txtc">Game</th>
                              <th width="118" class="txtc">Number of Entries</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">$20</td>
                              <td class="txtc">Game Number 1398, $20 MONOPOLY JACKPOT </td>
                              <td class="txtc">20</tr>
                         <tr>
                              <td class="txtc">$10</td>
                              <td class="txtc">Game Number 1391, $10 MONOPOLY JACKPOT </td>
                              <td class="txtc">10
                      </tr>
                         <tr>
                              <td class="txtc">$5</td>
                              <td class="txtc">Game Number 1390, $5 MONOPOLY JACKPOT </td>
                              <td class="txtc">5
                         </tr>
                         <tr>
                              <td class="txtc">$2</td>
                              <td class="txtc">Game Number 1389, $2 MONOPOLY JACKPOT </td>
                              <td class="txtc">2
						</tr>
                         <tr>
                              <td class="txtc">$1</td>
                              <td class="txtc">Game Number 1388, $1 MONOPOLY JACKPOT </td>
                              <td class="txtc">1
						</tr>						
                    </tbody>
               </table>				
			Each valid ticket number may only be entered one time and only into one drawing. Tickets should not be mailed to the Florida Lottery unless players are contacted by the Florida Lottery and requested to do so. Non-winning tickets received in the mail by the Florida Lottery will not be entered in a drawing and will not be returned. The odds of winning depend on the number of entries entered. All entries are subject to validation by the Florida Lottery and may be disqualified if eligibility requirements are not met. </li>	
			</ol>
			<li><strong>Prizes.</strong> The following table sets forth the prizes available in the Promotion.<br>
				
			<h3 class="tableCaption">Prizes per Drawing </h3>
			<table class="dataTbl">
					<thead>
						<tr>
							<th class="txtc">Prize Level</th>
							<th align="center" class="txtc">Prize Amount</th>
							<th class="txtc">Number of Prize winners per Drawing</th>
							<th class="txtc">Total Prize Winners</th>
						</tr>
					</thead>
				<tbody>
					<tr>
						<td class="txtc">Top Prize</td>
						<td class="txtc">$20,000</td>
						<td  class="txtc">1</td>
						<td  class="txtc">4</td>
					</tr>
					<tr>
						<td class="txtc">Second Prize</td>
						<td class="txtc">$5,000 </td>
						<td  class="txtc">5</td>
						<td  class="txtc">20</td>
						
					</tr>
					<tr>
						<td class="txtc">Third Prize</td>
						<td class="txtc">$1,000 </td>
						<td  class="txtc">30</td>
						<td  class="txtc">120</td>
						
					</tr>					
					<tr>
						<td class="txtc">Total</td>
						<td class="txtc"></td>
						<td  class="txtc">36</td>
						<td  class="txtc">144</td>
					</tr>
				</tbody>
			</table>
        </li>
        <li><strong>Drawings.</strong> 
		<p>A total of four second chance drawings will be held. Prizewinners for each drawing will be randomly selected from entries submitted and received before midnight ET on the last day of the entry period for that drawing. The entry periods and drawing dates are set forth in the table below.</p>
			
			 <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="268" class="txtc">Entry Period</th>
                              <th width="118" class="txtc">Drawing Date</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">July 2 &ndash; July 23, 2018</td>
                              <td class="txtc">July 25, 2018</tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">July 24 &ndash; August 13, 2018</td>
                              <td class="txtc">August 15, 2018
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">August 14 &ndash; September 3, 2018</td>
                              <td class="txtc">September 5, 2018
                         </tr>
                         <tr>
                              <td class="txtc">4</td>
                              <td class="txtc">September 4 &ndash; September 24, 2018</td>
                              <td class="txtc">September 26, 2018
						</tr>
                    </tbody>
               </table>
			
			<p>In each of the drawings, a total of 50 valid entries will be drawn by the Florida Lottery using a certified random number generation process. The first valid entry drawn will win the top prize of $20,000. The second through sixth valid entries drawn will each win a second prize of $5,000. The seventh through thirty-sixth valid entries drawn will each win a third prize of $1,000. The thirty-seventh through fiftieth valid entries drawn will be used in the order in which they were drawn and in the order of need to select an alternate top, second or third prize winner in the event a top, second or third prize cannot be awarded. Drawings shall be public, held in Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm.  </p>
		</li>
        <li><strong>Notification.</strong><br/>
          <ol type="a">
            <li>The prizewinners in each second chance drawing will be posted on <a href = "http://www.flalottery.com">flalottery.com</a> after the drawing. </li>
            <li>The Florida Lottery will attempt to notify each prizewinner by telephone or email using the contact information provided in the prizewinner’s registration data no later than one business day after the prizewinners are posted on the Florida Lottery’s website. The Florida Lottery deems the winner’s registration data as the prizewinner’s official contact information, including the physical mailing address. The Florida Lottery will not attempt to further locate a prizewinner if attempts to reach the winner by telephone or email are unsuccessful. If the Florida Lottery is unable to have contact by telephone or email with a prizewinner within two weeks of the date the prizewinners are posted on the website, the winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner in accordance with subsection (4) above. If the Florida Lottery is unable to have contact by email or telephone with the alternate prizewinner within two weeks of the date of notification, the alternate prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to the next alternate prizewinner. This process will continue until an alternate prizewinner is contacted or the Florida Lottery has exhausted the list of alternate prizewinners due to unsuccessful notification attempts or due to failure by a prizewinner or an alternate prizewinner to timely provide required claim documentation as set forth in subsection (6) below. If the Florida Lottery exhausts the list of alternate prizewinners, the prize will not be awarded.</li>   
		  </ol>
        </li>
        <li><strong>How to Claim a Prize.</strong> To claim any prize in a second chance drawing, the prizewinner must submit to the Florida Lottery the original valid non-winning MONOPOLY JACKPOT Scratch-Off ticket bearing the entry number selected in the drawing. Without such ticket, the prizewinner will forfeit his or her right to claim a prize. The prizewinner must submit the valid entry ticket along with a completed Winner Claim Form DOL 173-2, revised 9/13, or Spanish Winner Claim Form DOL 173-2S, revised 9/13 and a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. Forms DOL 173-2 and DOL 173-2S are hereby incorporated by reference and may be obtained at any Florida Lottery office or retailer, from the Florida Lottery’s website at  <a href = "http://www.flalottery.com">flalottery.com</a>, or by writing to: Florida Lottery, Customer Service, 250 Marriott Drive, Tallahassee, Florida 32399-4016. The required documentation must be received by the Florida Lottery no later than two weeks after the Florida Lottery has made personal contact with the prizewinner. If the Florida Lottery has not received the required documentation from a prizewinner by the fourteenth day after notification, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner in accordance with subsections (4) and (5) above. The same timeframe for a prizewinner to return required documentation to the Florida Lottery shall apply to an alternate prizewinner.  </li>
        <li><strong>Award of Top Prizes.</strong> Upon the Florida Lottery’s timely receipt of a top prize winner’s required documentation, the Lottery will award a prize of $20,000, less applicable federal income tax withholding.</li>
        <li><strong>Award of Second Prizes.</strong> Upon the Florida Lottery’s timely receipt of a second prize winner’s required documentation, the Lottery will award a prize of $5,000.</li>
		<li><strong>Award of Third Prizes.</strong> Upon the Florida Lottery’s timely receipt of a third prize winner’s required documentation, the Lottery will award a prize of $1,000. </li>
        <li><strong>Taxes.</strong> Except as specifically described herein, all federal, state and/or local taxes or other fees on the prizes won in the Pass GO, Collect $20,000 Second Chance Promotion will be the responsibility of the prizewinner. Thirty percent federal income tax withholding will be withheld from any prize won by a nonresident alien prizewinner in the Promotion, regardless of the amount of the prize. The reporting and subsequent payment of any additional federal, state and/or local taxes shall be the responsibility of the nonresident alien prizewinner. </li>
		  
		<li><strong>Other Restrictions and Provisions. </strong></li>  
        <ol type="a">
          <li>All prizes are subject to the provisions of Chapter 24, Florida Statutes, and rules promulgated thereunder. Prizes shall be paid in accordance with the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011.   </li>
          <li>All prizewinners will be analyzed for state-owed debt.  If a prizewinner is identified as owing an outstanding debt to any state agency or owes child support collected through a court, the debt will be offset in accordance with section 24.115(4), Florida Statutes. If the debt is an amount less than the amount of the prize, the balance of the prize after deduction of the debt shall be awarded. If the debt is an amount greater than the amount of the prize, the entire prize amount will be applied to the outstanding debt.</li>
          <li>Players must be at least 18 years of age. Persons prohibited by section 24.116, Florida Statutes, from purchasing a Florida Lottery ticket are not eligible to enter the Pass GO, Collect $20,000 Second Chance Promotion.</li>
          <li>By entering the Pass GO, Collect $20,000 Second Chance Promotion, a player gives his or her permission for the Florida Lottery to photograph and/or videotape and record the prizewinner with or without prior notification and to use the name, photograph, videotape, and/or recording of the prizewinner for advertising or publicity purposes without additional compensation.</li>
        </ol>
      </ol>
      </ol>
      <p><i>Editor’s Note: The MONOPOLY name and logo, the distinctive design of the game board, the four corner squares, the MR. MONOPOLY name and character, as well as each of the distinctive elements of the board and playing pieces are trademarks of Hasbro for its property trading game and game equipment.  &copy; 1935, 2018 Hasbro.  All Rights Reserved. Licensed by Hasbro. </i></p>
    </div>
  </div>
</div>
