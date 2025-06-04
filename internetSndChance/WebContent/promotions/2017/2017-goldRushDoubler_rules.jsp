<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 3;</script>

<div id="main" class="bethethunder rules">
	<div id="topBanner">
		<jsp:include page="includes/2017-goldRushDoubler_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <ol>
                 <li>Beginning January 17, 2017, through April 11, 2017, the Florida Lottery will conduct the Doubly Rich Second Chance Promotion ("Promotion") in which players can enter non-winning Florida Lottery Scratch-Off tickets from the following	GOLD RUSH DOUBLER games into a second chance drawing for a chance to win a cash prize:</li>
                                          <ol type="a">
                              <li>$5,000,000 GOLD RUSH DOUBLER Game Number 1322;  </li>
                              <li>$2,000,000 GOLD RUSH DOUBLER Game Number 1335;  </li>
                               <li>$500,000 GOLD RUSH DOUBLER Game Number 1334;</li>
                                <li>$50,000 GOLD RUSH DOULBER Game Number 1333; and   </li>
                                 <li>$10,000 GOLD RUSH DOULBER Game Number 1332. </li>
                         </ol>
     <p>Winning Scratch-Off tickets from the above listed games cannot be used for entry into the Promotion.</p>                        
                 <li><strong>How to Enter. </strong>
                  <ol type="a">
                              <li>
                               To enter a non-winning $5,000,000 GOLD RUSH DOUBLER, $2,000,000 GOLD RUSH DOUBLER, $500,000 GOLD RUSH DOUBLER, $50,000 GOLD RUSH DOULBER or $10,000 GOLD RUSH DOULBER Scratch-Off ticket into one of the second chance drawings, players must enter on the Florida Lottery’s website at  <a href="http://www.flalottery.com">flalottery.com</a>. On the home page of the Florida Lottery’s website, players can click on the Doubly Rich Second Chance Promotion banner and follow the directions. Players will be prompted to log-in or register. The 24-digit ticket serial number (4-digit game number and 20-digit ticket number) is located below the play area on the front of a $5,000,000 GOLD RUSH DOUBLER, $2,000,000 GOLD RUSH DOUBLER, $500,000 GOLD RUSH DOUBLER, $50,000 GOLD RUSH DOULBER and $10,000 GOLD RUSH DOULBER Scratch-Off ticket under the latex covering. Players are to scratch off the latex covering to reveal the number and enter the entire 24-digit ticket serial number in the designated ticket entry area on the website. </li>
      <li><strong>Entry Determination</strong>. Each non-winning $5,000,000 GOLD RUSH DOUBLER, $2,000,000 GOLD RUSH DOUBLER, $500,000 GOLD RUSH DOUBLER, $50,000 GOLD RUSH DOULBER and $10,000 GOLD RUSH DOULBER Scratch-Off ticket is assigned a predetermined number of entries that corresponds to the price of the non-winning ticket, as shown in the table below.  <br><br>

      <table class="dataTbl">
                      <thead>
                        <tr>
                          <th width="119" class="txtc">Ticket Price Point</th>
                          <th width="332" class="txtc">GOLD RUSH DOUBLER Game </th>
                          <th width="87">Number of Entries</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="txtc"> $20</td>
                          <td class="txtc">$5,000,000 GOLD RUSH DOUBLER  </td>
                          <td  class="txtc">20</td>
                        </tr>
                        <tr>
                          <td class="txtc">$10</td>
                          <td class="txtc">$2,000,000 GOLD RUSH DOUBLER</td>
                          <td  class="txtc">10</td>
                        </tr>
                        <tr>
                          <td class="txtc">$5</td>
                          <td class="txtc">$500,000 GOLD RUSH DOUBLER  </td>
                          <td  class="txtc">5</td>
                        </tr>
                        <tr>
                          <td class="txtc">$2</td>
                          <td class="txtc">$50,000 GOLD RUSH DOUBLER</td>
                          <td class="txtc">2</td>
                        </tr>
                        <tr>
                          <td class="txtc">$1</td>
                          <td class="txtc">$10,000 GOLD RUSH DOUBLER </td>
                          <td  class="txtc">1</td>
                        </tr>
                        
                      </tbody>
              </table>
      
      </li>
                       
               <p>Players may enter as many times as they wish during the contest period; however, each valid ticket number may only be entered one time. Tickets should not be mailed to the Florida Lottery unless players are contacted by the Florida Lottery and requested to do so. Non-winning tickets received in the mail by the Florida Lottery will not be entered in the drawing and will not be returned. The odds of winning depend on the number of entries entered. All entries are subject to validation by the Florida Lottery and may be disqualified if eligibility requirements are not met.</p>  
               <li><strong>Instagram Promo Code</strong>. The Florida Lottery will post one promo code on Instagram  (<a href="https://www.instagram.com/floridalottery/">www.instagram.com/Florida Lottery</a>) during each of the four entry periods set forth in subsection (4), below. A player may earn 25 additional entries by entering the promo code (designated for that entry period) at the time the player enters a non-winning $5,000,000 GOLD RUSH DOUBLER, $2,000,000 GOLD RUSH DOUBLER, $500,000 GOLD RUSH DOUBLER, $50,000 GOLD RUSH DOULBER or $10,000 GOLD RUSH DOULBER  ticket into a drawing.  A player may only enter a promo code once during each entry period.  </li>
               </ol>
                
                 <li><strong>Prizes.</strong> The following table sets forth the prizes available in the Doubly Rich Second Chance Promotion.<br/>
                 <h3 class="tableCaption">Prizes per Drawing </h3>
                   <table class="dataTbl">
                      <thead>
                        <tr>
                          <th class="txtc">Prize Level</th>
                          <th align="center" class="txtc">Prize Amount </th>
                          <th class="txtc">Number of Winners per Drawing</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="txtc">First Prize</td>
                          <td class="txtc">$25,000</td>
                          <td  class="txtc">1</td>
                        </tr>
                        <tr>
                          <td class="txtc">Second Prize</td>
                          <td class="txtc">$10,000</td>
                          <td  class="txtc">3</td>
                        </tr>
                        <tr>
                          <td class="txtc">Third Prize</td>
                          <td class="txtc">$1,000</td>
                          <td  class="txtc">20</td>
                        </tr>

                        <tr>
                          <td colspan="3" class="txtc">A total of 96 prizes will be available in the Promotion.</td>
                        </tr>
                      </tbody>
                   </table>
                 </li>

                 <li><strong>Drawings.</strong> A total of four second chance drawings will be held and winners will be randomly selected from entries submitted and received before midnight ET on the last day of the entry period for each drawing. The entry periods and drawing dates are set forth in the table below.<br/>
                   <table class="dataTbl">
                    <thead>
                     
                         <tr>
                              <th width="79" class="txtc">Drawings</th>
                              <th width="273" class="txtc"> Entry Period</th>
                              <th width="162" class="txtc">Drawing Date</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">January 17, 2017 &ndash; February 7, 2017</td>
                              <td class="txtc">February 9, 2017</td>
                         </tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">February 8, 2017 &ndash; February 28, 2017</td>
                              <td class="txtc">March 2, 2017</td>
                         </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">March 1, 2017 &ndash; March 21, 2017</td>
                              <td class="txtc">March 23, 2017</td>
                         </tr>
                           <tr>
                              <td class="txtc">4</td>
                              <td class="txtc">March 22, 2017 &ndash; April 11, 2017</td>
                              <td class="txtc">April 13, 2017</td>
                         </tr>
                    </tbody>
               </table>
                    In each of the drawings, a total of forty-four valid entries will be drawn by the Florida Lottery using a certified random number generation process. The first valid entry drawn will win the first prize of $25,000. The second through fourth valid entries drawn will each win a second prize of $10,000. The fifth through twenty-fourth valid entries drawn will each win a third prize of $1,000. The twenty-fifth through forty-fourth valid entries drawn will be used in the order in which they were drawn and in the order of need to select an alternate first, second or third prize winner in the event a first, second or third prize cannot be awarded.  </li>
                <li><strong>Notification.</strong><br/>
                         <ol type="a">
                              <li>
                               The prizewinners in each second chance drawing will be posted on <a href="http://www.flalottery.com">flalottery.com</a> after the drawing. </li>
                              <li>The Florida Lottery will attempt to notify each winner by telephone or email using the contact information provided in the winner's registration data no later than twenty-four hours after the winners are posted on the Florida Lottery's website. The Florida Lottery deems the winner's registration data as the winner's official contact information, including the physical mailing address, and will not attempt to further locate a winner if attempts to reach the winner using the winner's registration data are unsuccessful. If the Florida Lottery is unable to have personal contact with the first prizewinner or a second or third prize winner within two weeks of the date of the drawing, the winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to the first alternate winner in accordance with subsection (4) above.  If the Florida Lottery is unable to have personal contact with the first alternate winner within two weeks of the date of notification, the alternate winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to a second alternate winner. This process will continue until an alternate is contacted or the Florida Lottery has exhausted the list of available alternates. If the Florida Lottery is unable to contact an alternate, the prize will not be awarded.</li>
                         </ol>
                 </li>
                    <li><strong>How to Claim a Prize.</strong> To claim any prize in a Doubly Rich second chance drawing, the winner must submit to the Florida Lottery the original valid non-winning $5,000,000 GOLD RUSH DOUBLER, $2,000,000 GOLD RUSH DOUBLER, $500,000 GOLD RUSH DOUBLER, $50,000 GOLD RUSH DOULBER or $10,000 GOLD RUSH DOULBER Scratch-Off ticket bearing the entry number selected in the drawing. Without such ticket, the winner will forfeit his or her right to claim a prize. The winner must submit the valid entry ticket along with a completed Winner Claim Form DOL 173-2, revised 9/13, or Spanish Winner Claim Form DOL 173-2S, revised 9/13 and a copy of acceptable identification as set forth in the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011.  Forms DOL 173-2 and DOL 173-2S are hereby incorporated by reference and may be obtained at any Florida Lottery office, from the Florida Lottery’s website at  <a href="http://www.flalottery.com">flalottery.com</a>, or by writing to: Florida Lottery, Customer Service, 250 Marriott Drive, Tallahassee, Florida 32399-4016. The required documentation must be received by the Florida Lottery no later than two weeks after the Florida Lottery has made personal contact with the winner. If the Florida Lottery has not received the required documentation from a prizewinner by the fourteenth day after notification, the winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to the first alternate winner in accordance with subsection (4) above.  If the Florida Lottery is unable to have personal contact with the first alternate winner within two weeks of the date of notification, the alternate winner will forfeit his or her right to claim the prize and the Florida Lottery will award the prize to a second alternate winner. This process will continue until an alternate is contacted or the Florida Lottery has exhausted the list of available alternates. If the Florida Lottery is unable to contact an alternate, the prize will not be awarded.     
          <li><strong>Award of First Prize.</strong> Upon the Florida Lottery's timely receipt of a first prize winner's required documentation, the Lottery will award a prize of $25,000, less applicable federal tax withholding.</li>         
    <li><strong>Award of Second Prizes.</strong> Upon the Florida Lottery's timely receipt of a second prize winner's required documentation, the Lottery will award a prize of $10,000, less applicable federal tax withholding.</li>
               <li><strong>Award of Third Prizes.</strong> Upon the Florida Lottery’s timely receipt of a third prize winner's required documentation, the Lottery will award a prize of $1,000. </li>
                
            
                 <li><strong>Taxes.</strong> All federal, state and/or local taxes or other fees on the prizes won in the Doubly Rich Second Chance Promotion will be the responsibility of the winner. Thirty percent federal income tax withholding will be withheld from any prize won by a nonresident alien claimant in the Promotion, regardless of the amount of the prize. The reporting and subsequent payment of any additional federal, state and/or local taxes shall be the responsibility of the nonresident alien winner.  </li>  
              <li><strong>Other Restrictions and Provisions.</strong></li>
               <ol type="a">
         <li>All prizes are subject to the provisions of Chapter 24, Florida Statutes, and rules promulgated thereunder. Prizes shall be paid in accordance with the rule of the Florida Lottery governing payment of prizes. A copy of the current prize payment rule can be obtained from the Florida Lottery, Office of the General Counsel, 250 Marriott Drive, Tallahassee, Florida 32399-4011. </li>
         <li>If any prizewinner in the Doubly Rich Second Chance Promotion is identified as owing an outstanding debt to a state agency or child support collected through a court, the debt will be collected in accordance with section 24.115, Florida Statutes.</li>
         <li>Players must be at least 18 years of age. Persons prohibited by section 24.116, Florida Statutes, from purchasing a Florida Lottery ticket are not eligible to play.</li>
         <li>By entering the Doubly Rich Second Chance Promotion, a player gives his or her permission for the Florida Lottery to photograph and/or videotape and record the prizewinner with or without prior notification and to use the name, photograph, videotape, and/or recording of the prizewinner for advertising or publicity purposes without additional compensation.</li>
         <li>Doubly Rich second chance drawings shall be public, held in Tallahassee, Florida, and witnessed by an accountant employed by an independent certified public accounting firm. The results of each drawing will be available after the drawing on the Florida Lottery’s website at <a href="http://www.flalottery.com">flalottery.com</a>.</li>
         </ol>
          
               </ol>
             </ol>    
</div>
	</div>	
</div>