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
    <jsp:include page="../2022/includes/2022-monopolyDoubler_navigation.jsp"></jsp:include>
  </div>
  <div id="mainContentWrap">
    <div id="mainContent">
    
      <h1>
        <s:property value="messages.h1Title"/> <span> 
      </h1>
      
    <p><strong>53ER22 &ndash; Monopoly&trade; Doubler Bonus Play Promotion.</strong></p>
      
      <ol>
		<li>Beginning July 4, 2022 and ending July 31, 2022 (“Promotion Period”), the Florida Lottery will conduct the Monopoly&trade; Doubler Bonus Play Promotion (“Promotion”). Players who purchase Game Number 1509, $1 Monopoly&trade; Doubler; Game Number 1510, $2 Monopoly&trade; Doubler; Game Number 1511, $5 Monopoly&trade; Doubler; Game Number 1512, $10 Monopoly&trade; Doubler; and Game Number 1513, $20 Monopoly&trade; Doubler Scratch-Off tickets during the Promotion Period can earn entries into a Promotion Drawing for a chance to win a cash prize of $1,000; $5,000; or $25,000. Only non-winning Game Number 1509, $1 Monopoly&trade; Doubler; Game Number 1510, $2 Monopoly&trade; Doubler; Game Number 1511, $5 Monopoly&trade; Doubler; Game Number 1512, $10 Monopoly&trade; Doubler; and Game Number 1513, $20 Monopoly&trade; Doubler Scratch-Off tickets [collectively “Eligible” ticket(s)] may be entered into a Monopoly&trade; Doubler Bonus Play promotional drawing. Winning tickets cannot be entered into any Monopoly&trade; Doubler Bonus Play promotional drawing.</li>
		<li><strong>How to Enter.</strong></li>
		<ol type="a">
			<li>To enter an Eligible ticket into a Promotion Drawing, a player may use the Florida Lottery's website at <a href="http://www.floridalottery.com">floridalottery.com</a> or use the Florida Lottery's Mobile Convenience App ("App"). </li>
       		<ol type="1">
				<li>Website. On the home page of the Florida Lottery's website, players are to click on the PROMOTIONS tab, select the Monopoly&trade; Doubler Bonus Play Promotion and follow the directions. Players will be prompted to log-in or register. Players will manually enter the 24-digit ticket number on the ticket entry page to collect entries as described in subsection (3), below.</li> 
				<li>App. On the App, players navigate to the Promotions section of the app, select the Monopoly&trade; Doubler Bonus Play Promotion, and follow the directions. A Promotions button is located on the main menu and on the bottom navigation bar. Players will be prompted to log-in or register if the app does not recognize them as already logged into the Promotions section. Players may scan the barcode on the bottom of a ticket or may manually enter the 24-digit ticket number on the ticket entry page to collect entries as described in subsection (3), below.</li>
				<li>Deleted Accounts. If a player deletes his/her account, whether through the App or on the Florida Lottery’s website, all account data, including ticket entries, associated with the email address used to register his/her account will also be deleted. Any entries earned, as described in subsection (3), below, will not be entered into a drawing. A player’s account cannot be reactivated using the email associated with the deactivated account. Should a player establish a new account utilizing a different email address, account data, including ticket entries, cannot be transferred to the newly established account. Tickets entered under the prior account cannot be re-entered utilizing the newly created account.</li>
				<li>Regardless of whether a player chooses to participate in the Promotion by using the web browser or the App, the following provisions shall apply:
					<ol type="A">
					  <li>the player must use the same account login information to enter tickets;</li>
					  <li>the player will only be required to register one time; and</li>
					  <li>the player's entry history will be cumulative among the entry platforms.</li>
					</ol>				
				</li>
			  </ol> 
			  <li>Any attempt by a player to use more than one account by using multiple or different email addresses, identities, registrations, logins, or any other methods will subject the player and any associated entries to disqualification. In the event a player wins a prize, the name a player uses to register must match the name shown on his/her identification used to make a claim, except for a person who has made a legal name change. A person who has made a legal name change must provide a copy of a marriage certificate/judgment/court order, as applicable, as proof of a differing name. Fictitious names and business names will not be accepted and shall subject the player and any associated entries to disqualification.  </li>
			  <li>The odds of winning depend on the number of entries in the drawing. All entries are subject to validation by the Florida Lottery and will be disqualified if eligibility requirements are not met. </li>
		     <li>Lottery tickets should not be mailed to the Lottery for entry into the drawing. Lottery tickets received in the mail by the Florida Lottery for entry into the Promotion will not be entered into the drawing and will not be returned. </li>
		</ol>
		<li><strong>How to Earn Entries into the Promotion.</strong></li>
		<ol type="a">
		<li>To earn entries into a Promotion Drawing, a player may enter ticket numbers by scanning the barcode on the bottom of an Eligible ticket using his or her mobile device or by manually entering the 24-digit ticket number on the website or the App. A player may earn multiple entries during an entry period; however, a player can only win one promotion prize per entry. A player may enter a maximum of 200 tickets per day. Each ticket number can only be entered one time and cannot be entered again for either drawing. Training tickets will not be accepted, and tickets with invalid ticket numbers will be disqualified. The hours for ticket entry are between 6:00 a.m. ET and 12:00 midnight ET seven days a week during the Promotion Period. </li>
		<li>Number of Entries Received. For each Eligible ticket, a player will receive the number of entries as set forth in the table below:</li>
			 <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="150" class="txtc">Game</th>
                              <th width="50" class="txtc">Price Point</th>
                              <th width="35" class="txtc">Number of Entries</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr class="even">
                              <td class="txtc">#1509 - $1 Monopoly&trade; Doubler</td>
                              <td class="txtc">$1</td>
							 <td class="txtc">1</td>
						</tr>
                         <tr>
                              <td class="txtc">#1510 - $2 Monopoly&trade; Doubler</td>
                              <td class="txtc">$2</td>
							 <td class="txtc">2</td>
                      </tr>
                         <tr class="even">
                              <td class="txtc">#1511 - $5 Monopoly&trade; Doubler</td>
                              <td class="txtc">$5</td>
							 <td class="txtc">5</td>
						</tr>
                         <tr>
                              <td class="txtc">#1512 - $10 Monopoly&trade; Doubler</td>
                              <td class="txtc">$10</td>
							 <td class="txtc">10</td>
                      </tr>		
                         <tr class="even">
                              <td class="txtc">#1513 - $20 Monopoly&trade; Doubler</td>
                              <td class="txtc">$20</td>
							 <td class="txtc">20</td>
						</tr>					  
                    </tbody>
               </table>			
				
		<li>Promo Codes. Various promo codes providing additional entries will be available during the Promotion Period via GSTV L-Bar (gas station TV), In-Store L-Bars, High Impact Digital Units, CTV (Connected TV), social media platforms, and emails to players. Each Promo code earns a player five (5) additional entries into a drawing. An Eligible ticket must be entered to enable the promo code feature, and the ticket number and the promo code must be entered at the same time. Each promo code is only valid for the corresponding entry period for which it is designated and can only be entered one time. However, more than one different promo code may be entered during the corresponding entry period for which it is designated, each with a different ticket number. Promo codes available for Entry Period 1 cannot be used, and will not be valid, for Entry Period 2. Promo codes designated for Entry Period 2 cannot be used, and will not be valid, for Entry Period 1.</li>
		</ol>
		<li><strong>Drawings and Number of Prizes.</strong></li>
		<p>The Florida Lottery will conduct two drawings in the Promotion to select prizewinners. Prizewinners for the first drawing will be randomly selected from entries submitted and received during the first drawing entry period and before midnight (ET) on July 17, 2022. Prizewinners for the second drawing will be randomly selected from entries submitted and received during the second drawing entry period and before midnight (ET) on July 31, 2022. Entries for the first drawing entry period are not carried over into the second drawing entry period; tickets shall be drawn only from the Eligible ticket entries submitted and received during each drawing entry period. Prizewinners will be randomly selected using a certified random number generation process. The drawing shall be public, held in Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm. The drawing dates, entry periods, and winner announcement dates are as follows:</p>
			 <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing Entry Period</th>
                              <th width="100" class="txtc">Drawing Date</th>
                              <th width="85" class="txtc">Winners Announced</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr class="even">
                              <td class="txtc">July 4, 2022 through July 17, 2022</td>
                              <td class="txtc">July 20, 2022</td>
							 <td class="txtc">July 22, 2022</td>
						</tr>
                         <tr>
                              <td class="txtc">July 18, 2022 through July 31, 2022</td>
                              <td class="txtc">August 3, 2022</td>
							 <td class="txtc">August 5, 2022</td>
                      </tr>
                    </tbody>
               </table>			
             <ol type="a">  
            <li>The prizewinners in a Promotion Drawing will be announced and posted on <a href="http://www.floridalottery.com">floridalottery.com</a> on the “WINNERS ANNOUNCED” dates, set forth in the table above, or as soon thereafter as possible.</li>  	
			<li>In each Promotion Drawing, a total of 122 valid entries will be drawn by the Florida Lottery. Prizes will be awarded in the quantities set forth in the table in subsection (5), below, and awarded to players in the order in which they were drawn during each drawing. Remaining entries will be alternates and used in the order in which they were drawn and in the order of need to select alternate top, second, and third prizewinners in the event a top, second, or third prizewinner cannot be notified or fails to timely provide required claim documentation as set forth in subsection (7), below, or in the event an entry is disqualified. A player can only win one prize per draw entry.
			</li>
			</ol>		
			<li>The prizes, prize amounts, and number of prizewinners are listed in the table, below:</li>
			<table class="dataTbl">
					<thead>
						<tr>
							<th class="txtc">Prize</th>
							<th class="txtc">Amount</th>
							<th class="txtc">Number of Winners <br> per Drawing</th>
							<th class="txtc">Total Number <br>of Winners</th>
							<th class="txtc">Total Prize Amount</th>
						</tr>
					</thead>
				<tbody>
					<tr class="even">
						<td class="txtc">Top Prize</td>
						<td class="txtc">$25,000</td>
						<td  class="txtc">2</td>
						<td  class="txtc">4</td>
						<td  class="txtc">$100,000</td>
					</tr>
					<tr>
						<td class="txtc">2<sup>nd</sup> Prize</td>
						<td class="txtc">$5,000 </td>
						<td  class="txtc">20</td>
						<td  class="txtc">40</td>
						<td  class="txtc">$200,000</td>
						
					</tr>
					<tr class="even">
						<td class="txtc">3<sup>nd</sup> Prize</td>
						<td class="txtc">$1,000 </td>
						<td  class="txtc">75</td>
						<td  class="txtc">150</td>
						<td  class="txtc">$150,000</td>
						
					</tr>													
					<tr class="total">
						<td class="txtc"><strong>TOTALS</strong></td>
						<td class="txtc">N/A</td>
						<td  class="txtc"><strong>97</strong></td>
						<td  class="txtc"><strong>194</strong></td>
						<td  class="txtc"><strong>$450,000</strong></td>
					</tr>
				</tbody>
			</table>	
		</li>		

		<li><strong>Prizewinner Notification.</strong></li> 
		<p>The Florida Lottery will attempt to notify each prizewinner by telephone or email using the contact information provided in the prizewinner’s registration data within one business day after the prizewinners are posted on the Florida Lottery’s website. The Florida Lottery deems the prizewinner’s registration data as the prizewinner’s official contact information. Issuing an email or leaving a telephone message on voicemail, if available, shall constitute notification. The Florida Lottery will not attempt to further locate a prizewinner if attempts to reach the prizewinner by telephone or email are unsuccessful. If the Florida Lottery is unable to have contact by telephone or email with a prizewinner within ten calendar days of the date the prizewinners are posted on the Lottery’s website, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will select an alternate prizewinner in accordance with subsection (4), above. If the Florida Lottery is unable to have contact by email or telephone with the alternate prizewinner within ten calendar days of the date of notification, the alternate prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will select the next alternate prizewinner. This process will continue until an alternate is contacted or the Florida Lottery has exhausted the list of alternates due to unsuccessful notification attempts or due to failure by a prizewinner or an alternate prizewinner to timely provide required claim documentation as set forth in subsection (7), below. The Florida Lottery is not responsible or liable for system failures of any sort or type, including, but not exclusively, computer failures, email service failures, telephone failures. If a prize cannot be awarded for any reason, the prize will not be awarded.</p>
						
		<li><strong>How to Claim a Prize.</strong><br/>
          <ol type="a">
				<li>To claim a prize won in a Promotion drawing, a prizewinner must submit to the Florida Lottery a completed Winner Claim Form DOL-173-2, Revised 3/21, or Spanish Winner Claim Form DOL-173-2S, Revised 3/21, and a copy of acceptable identification as set forth in the Florida Lottery’s rule governing payment of prizes. </li>
          		<li>A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. </li>
				<li>The required documents must be received by the Florida Lottery no later than ten calendar days after the Florida Lottery has first notified the prizewinner by telephone (notification by telephone is deemed complete by leaving a voicemail message, if available) or email (issuing an email constitutes notification). If the Florida Lottery does not receive the required documents from a prizewinner by the tenth calendar day after notification, the prizewinner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to an alternate prizewinner as described in subsection (4), above. The same timeframe for a prizewinner to return required documentation to the Florida Lottery shall apply to an alternate prizewinner. </li>
		  </ol>
        </li>
		
		<li><strong>Award of Prizes.</strong></li>
		<p>Upon the Florida Lottery’s timely receipt of a prizewinner’s required documentation, the Florida Lottery will award the applicable prize for that prizewinner, subject to Federal tax withholding and analysis for State-Owed Debt and Child Support Debt.</p>
		<li><strong>Analysis for State-Owed Debt and Child Support Debt.</strong></li>
		<p>Prior to the award of all cash prizes, a prizewinner will be analyzed for Florida state-owed debt and child support debt. If more than one prize is awarded to the prizewinner, a separate analysis shall occur prior to payment of each prize. If the prizewinner is identified as owing outstanding debt to any state agency or owes child support collected through a court, the debt will be offset in accordance with section 24.115, F.S. If the debt is an amount less than the amount of the cash prize, the balance of the prize, less applicable income tax withholding on the full prize amount, and after the debt is offset shall be awarded. If the debt is an amount greater than any cash prize, the entire prize amount, after applicable income tax withholding on the full prize amount, will be applied to the outstanding debt. </p>
        <li><strong>A player can only win one prize per entry.</strong></li>
        <li><strong>A prizewinner in this Promotion is not required to submit the Eligible ticket he or she entered to claim a prize.</strong></li>
        <li><strong>Taxes.</strong></li>
       		<ol type="a">
       			<li>Except as specifically defined herein, all Federal, state, and/or local taxes and/or other costs and fees on all prizes will be the responsibility of the prizewinner.</li>
       			<li>For $25,000 cash prizes won in the Promotion drawings, and pursuant to applicable provisions of the Internal Revenue Service code, Federal income taxes will be withheld at a rate of twenty-four percent (24%) for a U. S. citizen or legal U. S. resident and at a rate of thirty percent (30%) for nonresident prizewinner/s. Regardless of prize amount, for all prizes won in a Promotion drawing, Federal income taxes will be withheld at a rate of thirty percent (30%) for nonresident prizewinners. The reporting and subsequent payment of any additional Federal, state, and/or local taxes and any other fees and costs shall be the responsibility of the prizewinner. </li>
       		</ol>
        <li><strong>Other Restrictions and Provisions.</strong></li>
        	<ol type="a">
        		<li>A prizewinner must be at least 18 years of age.</li>
				<li>All prizes are subject to the provisions of chapter 24, F.S., and rules promulgated thereunder. Prizes will be paid in accordance with the Florida Lottery’s rule governing payment of prizes. Copies of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011.</li>
        		<li>Persons prohibited by section 24.116, F.S., from purchasing a Florida Lottery ticket are not eligible to enter this Promotion.</li>
				<li>By entering the Monopoly&trade; Doubler Bonus Play Promotion, a player gives his or her permission for the Florida Lottery to photograph and/or videotape and record the prizewinner with or without prior notification and to use the name, photograph, videotape, and/or recording of the prizewinner for advertising or publicity purposes without additional compensation.</li>
			</ol>
		<div style="font-size: 11px;">
		<p style="font-style: italic;">Rulemaking Authority 24.105(9), 24.109(1) FS. Law Implemented 24.105(9), 24.115(1) FS. History–New 7-4-22.  </p>  
   		<p>The official rule for the Monopoly Doubler Bonus Play Promotion can be obtained from the Florida Administrative Code at www.flrules.org on or soon after July 4, 2022. In the event of a conflict between a provision of this rule version and the official rule, the official rule shall govern.</p>
 		</div>  
   </div>
  </div>
</div>
