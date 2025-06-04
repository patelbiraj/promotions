<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="monopolyBonus howtoplay">
	<div id="topBanner">
		<jsp:include page="../2020/includes/2020-holidayBonusPlay_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter any FLORIDA LOTTO<sup>&reg;</sup> or eligible non-winning holiday Scratch-Off ticket into the Holiday Bonus Play Promotion for the chance to win amazing cash prizes or gift cards to The Home Depot<sup>&reg;</sup>!</p>
               <p>Two promotion drawings will be held from tickets entered by midnight ET on the last day of the entry period for each drawing. A total of 536 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

               <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="218" class="txtc">Entry Period</th>
                              <th width="218" class="txtc">Winners Announced</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">October 26 &ndash; November 30, 2020</td>
                              <td class="txtc">December 7, 2020</td>
                              </tr>
                              
                         <tr>
                              <td class="txtc">2</td>
                               <td class="txtc">December 1, 2020 &ndash; January 4, 2021</td>
                              <td class="txtc">January 11, 2021</td>
                             
                      </tr>
                        
                    </tbody>
               </table>
               	<p>The number of entries a player will receive is based on the price point of the ticket entered into the Holiday Bonus Play Promotion.</p>	
			  
			  <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="450" class="txtc">Game</th>
                              <th width="218" class="txtc">Price Point</th>
                              <th width="218" class="txtc">Number of Entries</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">FLORIDA LOTTO</td>
                              <td class="txtc">$2 or More</td>
                              <td class="txtc">5</td>
                              </tr>
                              
                         <tr>
                              <td class="txtc">$10,000 HOLIDAY CASH</td>
                              <td class="txtc">$1</td>
                              <td class="txtc">1</td>
                              </tr>
					     <tr>
                              <td class="txtc">NATIONAL LAMPOON'S CHRISTMAS VACATION<sup>&trade;</sup></td>
                              <td class="txtc">$2</td>
                              <td class="txtc">2</td>
                              </tr>
						 <tr>
                              <td class="txtc">$1,000,000 MONEY TREE</td>
                              <td class="txtc">$5</td>
                              <td class="txtc">5</td>
                              </tr>
						 <tr>
                              <td class="txtc">HOLIDAY CASH BLOWOUT</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
                              </tr>
						 <tr>
                              <td class="txtc">200X THE CASH</td>
                              <td class="txtc">$20</td>
                              <td class="txtc">20</td>
                              </tr>
						
                        
                    </tbody>
               </table>
			  
               <p>Players can also earn additional entries by entering a promo code at the time a FLORIDA LOTTO or eligible non-winning holiday Scratch-Off ticket is entered. Promo codes will be available to players subscribed to receive Florida Lottery emails and through Lottery advertisements/commercials on social media platforms, websites, and TV touchpoints. In order to enable the promo code entry feature, a player must enter a FLORIDA LOTTO or eligible non-winning holiday Scratch-Off ticket and the promo code at the same time. Each promo code is only valid for the one entry period for which it is designated and can only be entered once during each entry period.</p>
           
			         
		 
          </div>
     </div>
</div>