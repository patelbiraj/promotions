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
		<jsp:include page="../2022/includes/2022-monopolyDoubler_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                  
               <div id="mainContent">
			  <p class="prizes-bold">Win up to $25,000! </p>
			  <p style="margin-top: -10">In each of the two bonus play drawings, two winners will each be awarded a top prize of $25,000, 20 winners will be each be awarded $5,000, and 75 winners will each be awarded $1,000.</p>
				<p class="prizes-bold" style="text-align: center; margin-bottom: -25px;">MONOPOLY Doubler Bonus Play Promotion Prizes</p>
               <table class="dataTbl" style="font-weight: 900; text-align: center; width: 65%; border: 0;">
                    <thead>
                         <tr>
                         	  <th class="txtc">Prizes</th>
                              <th class="txtc">Winners <br> Per Draw</th>
                              <th class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">Top Prize: $25,000</td>
							 <td class="txtc" style="background-color: #FFFFFF;" >2</td>
							 <td class="txtc" style="background-color: #FFFFFF;">4</td>
							 
                         </tr>
                          <tr>
                              <td class="txtc" style="background-color: #AA1721; color: #fff;">Second Prize: $5,000</td>
							 <td class="txtc">20</td>
							 <td class="txtc">40</td>							 
                         </tr>
						 <tr>
                              <td class="txtc" style="background-color: #EC1C24; color: #fff;">Third Prize: $1,000</td>
							 <td class="txtc" style="background-color: #FFFFFF;">75</td>
							 <td class="txtc" style="background-color: #FFFFFF;">150</td>
                         </tr>                                                                            
                    </tbody>
               </table>
			<p class="boldNote">
				TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET. <br> ENTRIES WILL BE LIMITED TO 200 TICKETS PER PLAYER, PER
				DAY.
			</p>
		
		
		
		
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