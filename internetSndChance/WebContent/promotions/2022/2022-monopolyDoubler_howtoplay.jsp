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

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2022/includes/2022-monopolyDoubler_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter non-winning MONOPOLY<sup>&trade;</sup> DOUBLER tickets into the MONOPOLY<sup>&trade;</sup> Doubler Bonus Play Promotion for the chance to win up to $25,000!</p>
               <p>Two drawings will be held between July 20 and August 3, 2022, from tickets entered by midnight, ET, on the last night of the entry period for each drawing. A total of 194 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

               <table class="dataTbl" style="font-weight: 900;">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="218" class="txtc">Draw Date</th>
                              <th width="218" class="txtc">Entry Period</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc" style="background-color: #FFFFFF;">1</td>
                              <td class="txtc" style="background-color: #FFFFFF;">July 20, 2022</td>
                              <td class="txtc" style="background-color: #FFFFFF;">July 4 &ndash; July 17, 2022</td>
                         </tr>
                              
                         <tr>
                              <td class="txtc" >2</td>
                              <td class="txtc" >August 3, 2022</td>
                              <td class="txtc" >July 18 &ndash; July 31, 2022</td>
                         </tr>
                    </tbody>
               </table>
				<p style="margin-top:-10px; padding-left: 44px; font-style: italic;">The number of entries a player will receive is based on the price point of the non-winning ticket entered into the Promotion.</p>
               <table class="dataTbl" style="font-weight: 900; text-align: center; width: 65%; border: 0;">
                    <thead>
                         <tr>
                              <th class="txtc">Game</th>
                              <th class="txtc">Price Point</th>
                              <th class="txtc">Number <br>of Entries</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc" style="background-color: #FFFFFF;">$20 MONOPOLY DOUBLER</td>
                              <td class="txtc" style="background-color: #FFFFFF;">$20</td>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">20</td>
                         </tr>
                         <tr>
                              <td class="txtc">$10 MONOPOLY DOUBLER</td>
                              <td class="txtc">$10</td>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">10</td>
                         </tr>
                         <tr>
                              <td class="txtc" style="background-color: #FFFFFF;">$5 MONOPOLY DOUBLER</td>
                              <td class="txtc" style="background-color: #FFFFFF;">$5</td>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">5</td>
                         </tr>
                         <tr>
                              <td class="txtc" >$2 MONOPOLY DOUBLER</td>
                              <td class="txtc" >$2</td>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">2</td>
                         </tr>
                         <tr>
                              <td class="txtc" style="background-color: #FFFFFF;">$1 MONOPOLY DOUBLER</td>
                              <td class="txtc" style="background-color: #FFFFFF;">$1</td>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">1</td>
                         </tr>                                                                                                        
                    </tbody>
               </table>  
            <p>Players can also earn additional entries by entering a promo code at the time a valid ticket is entered. In order to enable the promo code entry feature, a player must enter the promo code at the same time as any non-winning MONOPOLY DOUBLER Scratch-Off ticket.</p>  			  
			<p>Promo codes will be available via multiple outlets including, but not limited to, Florida Lottery advertisements and promotional emails. Each promo code is only valid for the entry period for which it is designated and can only be entered once during each entry period.</p>			          
			<p class="boldNote" style="text-align: center;"> TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET. <br> ENTRIES WILL BE LIMITED TO 200 TICKETS PER PLAYER, PER DAY.
			</p> 
          </div>
     </div>
</div>