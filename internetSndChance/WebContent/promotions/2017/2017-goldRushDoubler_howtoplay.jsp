<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="goldRushDoubler howtoplay">
	<div id="topBanner">
		<jsp:include page="includes/2017-goldRushDoubler_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Receive up to 20 entries per ticket for a chance to win cash prizes of up to $25,000 by entering your non-winning GOLD RUSH DOUBLER tickets in the Doubly Rich Second Chance Promotion. Number of entries differs by game.</p>
               <p>Four drawings will be held between February 9 and April 13, 2017, from tickets submitted and received before midnight on the last night of the entry period for each drawing. A total of 96 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

               <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="168" class="txtc">Draw Date</th>
                              <th width="218" class="txtc">Entry Period</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">February 9, 2017</td>
                              <td class="txtc">January 17 &ndash; February 7, 2017</tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">March 2, 2017</td>
                              <td class="txtc">February 8 &ndash; February 28, 2017
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">March 23, 2017</td>
                              <td class="txtc">March 1 &ndash; March 21, 2017
                         </tr>
                         <tr>
                              <td class="txtc">4</td>
                              <td class="txtc">April 13, 2017</td>
                              <td class="txtc">March 22 &ndash; April 11, 2017
                      </tr>
                    </tbody>
               </table>
               
               <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the Doubly Rich Second Chance Promotion.
               
            <table class="dataTbl">
                    <thead>
                         <tr>
                              <th class="txtc">Game</th>
                              <th class="txtc">Price Point</th>
                              <th class="txtc"># of Entries</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc">$5,000,000 GOLD RUSH DOUBLER</td>
                              <td class="txtc">$20</td>
                              <td class="txtc">20</td>
                         </tr>
                         <tr>
                              <td class="txtc">$2,000,000 GOLD RUSH DOUBLER</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
                         </tr>
                         <tr>
                              <td class="txtc">$500,000 GOLD RUSH DOUBLER</td>
                              <td class="txtc">$5</td>
                              <td class="txtc">5</td>
                         </tr>
                         <tr>
                              <td class="txtc">$50,000 GOLD RUSH DOUBLER</td>
                              <td class="txtc">$2</td>
                              <td class="txtc">2</td>
                         </tr>
                         <tr>
                              <td class="txtc">$10,000 GOLD RUSH DOUBLER</td>
                              <td class="txtc">$1</td>
                              <td class="txtc">1</td>
                         </tr>
                    </tbody>
               </table>
               
               <p>The Florida Lottery will also post one promo code per entry period on Instagram  <a href="https://www.instagram.com/floridalottery">(www.instagram.com/floridalottery)</a> for each of the four Doubly Rich Second Chance Promotion drawings. Players may earn 25 extra entries by entering the promo code designated for that entry period. In order to enable the promo code entry feature, a player must first enter a non-winning GOLD RUSH DOUBLER ticket into the promotion. A player may only enter a promo code once during each entry period.</p>

               <s:if test="%{promotion.promotionInterval.containsNow()}">
                    <div id="enterVouchers" class="enterVouchers">
                         <a class="button" href="entry_2017-goldRushDoubler">Enter Tickets Here</a>
                    </div>
               </s:if>
               
            <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>