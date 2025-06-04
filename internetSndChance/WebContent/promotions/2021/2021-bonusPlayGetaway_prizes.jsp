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
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

</style>



<div id="main">
	<div id="topBanner">
		<jsp:include page="../2021/includes/2021-bonusPlayGetaway_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                  
               <div id="mainContent">
				   <img src="promotions/2021/images/jpg/BonusPlayGetaway_Aloha.jpg" width="960" height="68" alt="Say Aloha to Unforgetable Prizes from the Florida Lottery" style="margin-left:-50px;"/></p>
   			   <p class="drawings" >In both of the Bonus Play Getaway drawings, 25 top prize winners will each receive a VIP getway to Hawaii, including airfare, hotel, and transportation accomodations; 111 second prize winners will each receive a Royal Caribbean<sup>&reg;</sup> cruise certificate for a platinum Caribbean cruise for two; and 126 third prize winners will each receive $500 in StubHub<sup>&reg;</sup> gift cards!      
               </p>
               <table class="dataTbl">
				   <h3 class="header3">Bonus Play Getaway Promotion Prizes</h3>
                    <thead>
                         <tr>
                              <th width="505" class="txtc">Prize Tier</th>
							  <th width="505" class="txtc">Prize</th>
                              <th width="160" class="txtc">Winners Per Draw</th>
							 <th width="133" class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
							 <td class="txtc">Top Prize</td> 
                             <td class="txtc">Hawaii VIP Getaway</td>
							 <td class="txtc">25</td> 
							 <td class="txtc">50</td>
							 
                         </tr>
                         <tr>
							  <td class="txtc">2nd Prize</td> 
                              <td class="txtc">Royal Caribbean Cruise Certificate</td>
                              <td class="txtc">111</td>
							  <td class="txtc">222</td>
                         </tr>  
                         <tr>
							  <td class="txtc">3rd Prize</td> 
                              <td class="txtc">$500 StubHub Gift Card</td>
                              <td class="txtc">126</td>
							  <td class="txtc">252</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>Total</strong> </td>
							  <td class="txtc"></td>
                              <td class="txtc"><strong>262</strong></td>
							  <td class="txtc"><strong>524</strong></td> 
                         </tr>
                                              
                 </tbody>
               </table>	<br>
			<p><img src="promotions/2021/images/jpg/BonusPlayGetaway_limitedEntries.jpg" width="960" height="52" alt="ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY."/></p>
		</div>	                                  
                     
               
             
	
             
		</div>
		<div style="clear: both;">
     <s:if test="%{#attr.messageRemoveDateTime.isAfter(@org.joda.time.DateTime@now())}">
          <jsp:include page="../../includes/alertNotice.jsp"/>
     </s:if>
</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>