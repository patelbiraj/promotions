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
		<jsp:include page="../2020/includes/2020-monopolyBonus_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter non-winning MONOPOLY BONUS SPECTACULAR Scratch-Off tickets into the MONOPOLY Bonus Promotion for the chance to win cash prizes of $1,000, $5,000, or even $20,000!</p>
               <p>Three promotion drawings will be held from tickets entered by midnight ET on the last day of the entry period for each drawing. A total of 123 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

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
                              <td class="txtc">July 6 &ndash; 27, 2020</td>
                              <td class="txtc">August 3, 2020</td>
                              </tr>
                              
                         <tr>
                              <td class="txtc">2</td>
                               <td class="txtc">July 28 &ndash; August 17, 2020</td>
                              <td class="txtc">August 24, 2020</td>
                             
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">August 18 &ndash; September 14, 2020</td>
                              <td class="txtc">September 21, 2020</td>                              
                         </tr>
                    </tbody>
               </table>
               			  
               <p>Players can also earn additional entries by entering a promo code at the time a non-winning MONOPOLY BONUS SPECTACULAR ticket is entered. Promo codes will be available to player subscribed to receive Lottery emails, with the purchase of a $10 or more FANTASY 5<sup>&reg;</sup> ticket sold during the Promotion Period and through Lottery advertisements/commercials on social media platforms, websites, and TV touchpoints. In order to enable the promo code entry feature, a player must enter a non-winning MONOPOLY BONUS SPECTACULAR ticket and the promo code at the same time. Each promo code is only valid for the one entry period for which it is designated and can only be entered once during each entry period.</p>
            <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
			<img src="promotions/2018/images/jpg/MonopolyJackpot_Icon.jpg" alt="Monopoly Jackpot Icon" width="31" height="34" align="left"><p style="padding-left: 25px; margin-left: 25px; font-size: 10px;"> The MONOPOLY name and logo, the distinctive design of the game board, the four corner squares, the MR. MONOPOLY name and character, as well as each of the distinctive elements of the board and playing pieces are trademarks of Hasbro for its property trading game and game equipment. &copy;  1935, 2019 Hasbro. All Rights Reserved. Licensed by Hasbro.</p>         
		 
          </div>
     </div>
</div>