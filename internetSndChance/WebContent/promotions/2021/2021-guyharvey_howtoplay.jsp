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
<script type="text/javascript">var page = 1;</script>

<div id="main" class="guyharvey howtoplay">
	<div id="topBanner">
		<jsp:include page="../2021/includes/2021-guyharvey_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter non-winning GUY HARVEY $500,000 FLORIDA CASH Scratch-Off tickets into the Trucks, Bucks, and Trips Promotion for the chance to win once-in-a-lifetime experiences and prizes including a 2021 Ford F-150 Guy Harvey Edition Pick-Up Truck; a four-day/three-night Grand Cayman Island Getaway for two; or $1,000 cash!</p>
               <p>Three drawings will be held from tickets entered by midnight ET on the last day of the entry period for each drawing. A total of 129 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>
			   
			   

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
                              <td class="txtc">May 17 &ndash; June 14, 2021</td>
                              <td class="txtc">June 21, 2021</td>
                              </tr>
                         <tr>
                              <td class="txtc">2</td>
                              <td class="txtc">June 15 &ndash; July 12, 2021</td>
                              <td class="txtc">July 19, 2021</td>
                              </tr>   
						<tr>
                              <td class="txtc">3</td>
                              <td class="txtc">July 13 &ndash; August 2, 2021</td>
                              <td class="txtc">August 9, 2021</td>
                              </tr>
                    </tbody>
               </table>
	 				<p>Players can also earn additional entries by entering a promo code at the time a non-winning GUY HARVEY $500,000 FLORIDA CASH ticket is entered. In order to enable the promo code entry feature, a player must enter a non-winning GUY HARVEY $500,000 FLORIDA CASH ticket and the promo code at the same time. Promo codes will be available via multiple outlets including, but not limited to, the Florida Lottery's official social media channels and email subscription service. Each promo code is only valid for the one entry period for which it is designated and can only be entered once during each entry period.</p>	
			  <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>