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
		<jsp:include page="../2022/includes/2022-jackpotRaffle_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                  
               <div id="mainContent">
			  <p class="prizes-bold">RAFFLE PRIZES!! </p>
			  <p style="margin-top: -10">$500 prize winning tickets can be cashed at any Florida Lottery retailer. Prizes must be claimed within 180 days following the applicable draw.</p>
              <div style="text-align: center;">
               <table class="dataTbl" style="font-weight: 900; text-align: center; width: 65%; border: 0;">
                    <thead>
                         <tr>
                         	  <th class="txtc">Prize</th>
                              <th class="txtc">Weekly Winners</th>
                              <th class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc">$500</td>
							 <td class="txtc">100</td>
							 <td class="txtc">500</td>
							 
                         </tr>                                                                    
                    </tbody>
               </table>

			</div> 
				<p style="text-align: center; color: #E54360; font-weight: bold;" >HOLD ON TO YOUR RAFFLE TICKET, YOU WILL NEED IT TO CLAIM YOUR $500 PRIZE!</p>				
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