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
		<jsp:include page="../2021/includes/2021-guyharvey_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                  
               <div id="mainContent">
				   <p style="margin-top:-25px;"><h3>REEL IN ONCE-IN-A-LIFETIME EXPERIENCES AND PRIZES!</h3></p>
   			   <p class="" style="margin-bottom:25px; margin-top: 5px;">     
  				In each of the three  drawings, one grand prize winner will win a 2021 Ford F-150 Guy Harvey Edition Pick-Up Truck! Additionally, two second prize winners will each receive a four-day/three-night Grand Cayman Island Getaway for two; and 40 third prize winners will each receive $1,000 cash!      
               </p>
               <table class="prTbl">
				   <h3 style="text-align:center; font-size:1.4em; margin-bottom:-25px;">Trucks, Bucks, and Trips Second Chance  Promotion Prizes</h3>
                    <thead>
                         <tr>
                              <th width="505" class="txtc">Prizes</th>
                              <th width="160" class="txtc">Winners Per Draw</th>
							 <th width="133" class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc"><strong>Grand Prize:</strong> 2021 Ford F-150 Guy Harvey Edition Pick-Up Truck</td>
							 <td class="txtc">1</td> 
							 <td class="txtc">3</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> Grand Cayman Islands Getaway</td>
                              <td class="txtc">2</td>
							  <td class="txtc">6</td>
                         </tr>  
                         <tr>
                              <td class="txtc"><strong>Third Prize:</strong> $1,000</td>
                              <td class="txtc">40</td>
							  <td class="txtc">120</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>Total</strong> </td>
                              <td class="txtc">43</td>
							  <td class="txtc">129</td> 
                         </tr>
                                              
                 </tbody>
               </table>	
			<p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
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