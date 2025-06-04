<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="cashSupply howtoplay">
	<div id="topBanner">
		<jsp:include page="includes/2017-cashSupply_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Receive up to 10 entries per ticket for a chance to win cash prizes of up to $25,000 by entering your non-winning WEEK FOR LIFE tickets into the Cash Supply Second Chance Promotion. Number of entries differs by game. </p>
               <p>Three drawings will be held between July 26 and September 6, 2017, from tickets entered by midnight on the last night of the entry period for each drawing. A total of 111 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

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
                              <td class="txtc">July 26, 2017</td>
                              <td class="txtc">July 3 &ndash; July 24, 2017</tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">August 16, 2017</td>
                              <td class="txtc">July 25 &ndash; August 14, 2017
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">September 6, 2017</td>
                              <td class="txtc">August 15 &ndash; September 4, 2017
                         </tr>
                    </tbody>
               </table>
               
               <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the Cash Supply Second Chance Promotion.
               
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
                              <td class="txtc">$5,000 A WEEK FOR LIFE</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
                         </tr>                        
                         <tr>
                              <td class="txtc">$2,500 A WEEK FOR LIFE</td>
                              <td class="txtc">$5</td>
                              <td class="txtc">5</td>
                         </tr>
                         <tr>
                              <td class="txtc">$1,000 A WEEK FOR LIFE</td>
                              <td class="txtc">$2</td>
                              <td class="txtc">2</td>
                         </tr>
                         <tr>
                              <td class="txtc">$500 A WEEK FOR LIFE</td>
                              <td class="txtc">$1</td>
                              <td class="txtc">1</td>
                         </tr>
                    </tbody>
               </table>
               
               <p>The Florida Lottery will also post one promo code every week on Facebook <a href="https://www.facebook.com/floridalottery">(www.facebook.com/floridalottery)</a> during the Cash Supply Second Chance Promotion drawings. Players may earn 15 extra entries by entering the promo code designated for that week. In order to enable the promo code entry feature, a player must first enter a non-winning WEEK FOR LIFE ticket into the promotion. A player may only enter a promo code once during each week.</p>

               <s:if test="%{promotion.promotionInterval.containsNow()}">
                    <div id="enterVouchers" class="enterVouchers">
                         <a class="button" href="entry_2017-cashSupply">Enter Tickets Here</a>
                    </div>
               </s:if>
               
            <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>