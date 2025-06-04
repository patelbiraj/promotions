<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2019/includes/2019-goldRushClassic_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
			  <p>Enter your non-winning GOLD RUSH CLASSIC and GOLD RUSH SPECIAL EDITION tickets in the "Gold Rush Classic" Second Chance Promotion for a chance to win cash prizes of up to $30,000. Number of entries differs by game.</p>
			  <p>Six drawings will be held between January 30 and April 12, 2019, from tickets entered by midnight on the last night of the entry period for each drawing except for the final drawing. Tickets for the final drawing being held on April 12, 2019 must be entered by 11:59:59 a.m. on Thursday, April 11, 2019. A total of 222 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>
			  
			  
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Draw</th>
                              <th width="168" class="txtc">Entry Period</th>
                              <th width="218" class="txtc">Draw Dates</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">January 14 &ndash; January 28, 2019</td>
                              <td class="txtc odd">January 30, 2019</tr>
                         <tr class="even">
                              <td class="txtc">2</td>
                              <td class="txtc">January 29 &ndash; February 11, 2019</td>
							 <td class="txtc">February 13, 2019</td>
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">February 12 &ndash; February 25, 2019</td>
                              <td class="txtc">February 27, 2019</td>
                         </tr>
                         <tr class="even">
                              <td class="txtc">4</td>
                              <td class="txtc">February 26 &ndash; March 11, 2019</td>
                              <td class="txtc">March 13, 2019</td>
						</tr>
					    <tr>
                              <td class="txtc">5</td>
                              <td class="txtc">March 12 &ndash; March 25, 2019</td>
                              <td class="txtc">March 27, 2019</td>
						</tr>
						 <tr class="even">
                              <td class="txtc">6</td>
                              <td class="txtc">March 26 &ndash; April 11, 2019</td>
                              <td class="txtc">April 12, 2019</td>
						</tr>
                    </tbody>
               </table>
   
                    <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the "Gold Rush Classic" Second Chance Promotion.</p>
			  
			       <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="352" class="txtc">Game</th>
                              <th width="97" class="txtc">PricePoint</th>
                              <th width="218" class="txtc"># of Entries</th>
                         </tr>
                    </thead>
                    <tbody >
						<tr>
                              <td class="txtl">1415 &ndash; $15,000,000 GOLD RUSH SPECIAL EDITION*</td>
                              <td class="txtc">$30</td>
                              <td class="txtc">30</td>
						</tr>
                         <tr class="even">
                              <td class="txtl">1407 &ndash; $5,000,000 GOLD RUSH CLASSIC</td>
                              <td class="txtc">$20</td>
                              <td class="txtc">20</td>
						</tr>
                         <tr>
                              <td class="txtl">1411 &ndash; $2,000,000 GOLD RUSH CLASSIC</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
						</tr>
                        <tr  class="even" >
                              <td class="txtl">1410 &ndash; $1,000,000 GOLD RUSH CLASSIC</td>
                              <td class="txtc">$5</td>
							<td class="txtc">5</td>
                         </tr>
                         <tr >
                              <td class="txtl">1409 &ndash; $50,000 GOLD RUSH CLASSIC</td>
                              <td class="txtc">$2</td>
							 <td class="txtc">2</td>
						</tr>
					    <tr  class="even">
                              <td class="txtl">1408 &ndash; $10,000 GOLD RUSH CLASSIC</td>
                              <td class="txtc">$1</td>
							<td class="txtc">1</td>
						</tr>
						 
                    </tbody>
               </table>
			<!--  <p class="disclaimer">*Non-winning tickets from game 1415 &ndash; $15,000,000 GOLD RUSH SPECIAL EDITION, can only be entered<br>  February 25, 2019, through April 8, 2019.</p>-->
			  
			  <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>