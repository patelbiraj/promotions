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

<div id="main" class="monopolyBonus howtoplay">
	<div id="topBanner">
		<jsp:include page="../2021/includes/2021-floridaJackpots_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter any FLORIDA LOTTO<sup>&reg;</sup> or JACKPOT TRIPLE PLAY<sup>&trade;</sup> ticket into the Florida Jackpots Bonus Play Promotion for the chance to win prizes from $1,000 to $50,000!</p>
               <p>One drawing will be held from tickets entered by midnight ET on February 28. A total of 121 prizes will be awarded. For more information, click on the "Prizes" tab above. </p>
			   <p>Players can also earn additional entries by purchasing a FLORIDA LOTTO with Double Play<sup>&trade;</sup> or JACKPOT TRIPLE PLAY with Combo<sup>&trade;</sup> ticket. FLORIDA LOTTO with Double Play and JACKPOT TRIPLE PLAY with Combo tickets will print featuring a promo code worth five additional entries into the drawing. A total of four promo codes will be offered, one for each week of the promotional period. </p>
			   <p>In order to claim the additional five entries into the promotion, a player must first enter a FLORIDA LOTTO or JACKPOT TRIPLE PLAY ticket followed by a valid promo code prior to clicking "Submit". Each promo code is only valid for one week and can only be entered once during the week it is valid.</p>
			   

               <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Draw Date</th>
                              <th width="218" class="txtc">Entry Period</th>
                              <th width="218" class="txtc">Winners Announced</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">March 3, 2021</td>
                              <td class="txtc">February 1 &ndash; February 28, 2021</td>
                              <td class="txtc">March 8, 2021</td>
                              </tr>                        
                    </tbody>
               </table>
	 
          </div>
     </div>
</div>