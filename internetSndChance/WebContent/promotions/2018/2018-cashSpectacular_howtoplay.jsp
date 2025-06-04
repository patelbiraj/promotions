<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="cashSpectacular howtoplay">
	<div id="topBanner">
		<jsp:include page="includes/2018-cashSpectacular_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Receive up to 30 entries per ticket for a chance to win cash prizes of up to $30,000 by entering your non-winning FLORIDA X THE CASH tickets into the 30th Birthday Cash Spectacular Second Chance Promotion. Number of entries differs by game. </p>
               <p>Six drawings will be held between January 31 and April 11, 2018, from tickets entered by midnight on the last night of the entry period for each drawing. A total of 222 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

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
                              <td class="txtc">January 31, 2018</td>
                              <td class="txtc">January 15 &ndash; January 29, 2018</tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">February 14, 2018</td>
                              <td class="txtc">January 30  &ndash; February 12, 2018
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">February 28, 2018</td>
                              <td class="txtc">February 13  &ndash; February 26, 2018
                         </tr>
                         <tr>
                              <td class="txtc">4</td>
                              <td class="txtc">March 14, 2018</td>
                              <td class="txtc">February 27   &ndash; March 12, 2018
                         </tr>
                          <tr>
                              <td class="txtc">5</td>
                              <td class="txtc">March 28, 2018</td>
                              <td class="txtc">March 13    &ndash; March 26, 2018
                         </tr>
                         <tr>
                              <td class="txtc">6</td>
                              <td class="txtc">April 11, 2018</td>
                              <td class="txtc">March 27     &ndash; April 9, 2018
                         </tr>
                    </tbody>
               </table>
               
               <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the 30th Birthday Cash Spectacular  Second Chance Promotion.
               
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
                              <td class="txtc">FLORIDA 100X THE CASH</td>
                              <td class="txtc">$30</td>
                              <td class="txtc">30</td>
                         </tr>
                         <tr>
                              <td class="txtc">FLORIDA 50X THE CASH</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
                         </tr>                        
                         <tr>
                              <td class="txtc">FLORIDA 20X THE CASH</td>
                              <td class="txtc">$5</td>
                              <td class="txtc">5</td>
                         </tr>
                         <tr>
                              <td class="txtc">FLORIDA 10X THE CASH</td>
                              <td class="txtc">$2</td>
                              <td class="txtc">2</td>
                         </tr>
                         <tr>
                              <td class="txtc">FLORIDA 5X THE CASH</td>
                              <td class="txtc">$1</td>
                              <td class="txtc">1</td>
                         </tr>
                    </tbody>
               </table>
			  
			  <p>The Florida Lottery&reg; will also post one promo code live on Facebook <a href="https://www.facebook.com/floridalottery">(www.facebook.com/floridalottery)</a> during each of the six 30<sup>th</sup> Birthday Cash Spectacular Second Chance Promotion entry periods. Players may earn <b>25</b> extra entries by entering the promo code designated for that entry period. Additionally, after each of the Facebook live videos conclude, players will be encouraged to view the Florida Lottery's Instagram story, where a second promo code will be posted, to earn <b>10</b> extra entries. In order to enable the promo code entry feature, a player must first enter a non-winning FLORIDA X THE CASH ticket into the promotion. A player may only enter a promo code once during each entry period. See the Official <a href="rules_2018-cashSpectacular">30th Birthday Cash Spectacular Second Chance Promotion Rules</a> for complete details.</p>

               <!--<s:if test="%{promotion.promotionInterval.containsNow()}">
                    <div id="enterVouchers" class="enterVouchers">
                         <a class="button" href="entry_2018-cashSpectacular">Enter Tickets Here</a>
                    </div>
               </s:if>-->
               
            <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>