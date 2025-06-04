<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>


<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2021/includes/2021-bonusPlayGetaway_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter non-winning HOLIDAY WINNINGS or GOLD RUSH LIMITED Scratch-Off tickets, or any FANTASY 5<sup>&reg;</sup> ticket  purchased during November or December into the Bonus Play Getaway Promotion for the chance to win a VIP trip to Hawaii, Royal Carribean<sup>&reg;</sup> cruise certificate, and $500 in StubHub<sup>&reg;</sup> gift cards!</p>
               <p>Two bonus play drawings will be held from tickets <strong>entered by midnight ET</strong> on the last day of the entry period for each drawing. A total of 524 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>
			   
			   

               <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="60" class="txtc">Draw</th>
                              <th width="258" class="txtc">Entry Period</th>
                              <th width="218" class="txtc">Winners Announced</th>
                         </tr>
                    </thead>
                    <tbody >
						  <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">November 1 &ndash; November 30, 2021</td>
							  <td class="txtc">December 6, 2021</td>
                      </tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">December 1 &ndash; December 31, 2021</td>
							  <td class="txtc">January 10, 2022</td>
                      </tr>   
                 </tbody>
               </table>
			<p>Players can also earn additional entries by entering a promo code at the time a valid ticket is entered. In order to enable the promo code entry feature, a player must enter the promo code at the same time as any non-winning HOLIDAY WINNINGS or GOLD RUSH LIMITED ticket, or an eligible FANTASY 5 ticket. Promo codes will be available via multiple outlets including, but not limited to, the Florida Lottery's official social media channels, email subscription service, and with the purchase of certain Florida Lottery products. Each promo code is only valid for the entry period for which it is designated and can only be entered once during each entry period.</p>	<br>
			<img src="promotions/2021/images/jpg/BonusPlayGetaway_limitedEntries.jpg" width="960" height="52" alt="Entries Will be Limited to 200 per Player , per day"/></p>
			
          </div>
     </div>
</div>