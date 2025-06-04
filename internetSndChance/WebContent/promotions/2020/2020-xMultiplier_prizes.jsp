<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>


<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

</style>



<div id="main">
	<div id="topBanner">
		<jsp:include page="../2020/includes/2020-xMultiplier_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
               <div id="mainContent">
               
			   <p class="" style="text-align: center;margin-bottom:25px;font-size: 18px; margin-top: 0px;"><strong>Win up to $20,000!</strong></p>
			   <p class="" style="text-align: center;margin-bottom:25px; margin-top: 25px;">In each of the three Xtra Chance drawings, 30 players will each receive a $1,000 cash prize, ten players will each receive a $5,000 cash prize, and one player will receive a $20,000 cash prize!</p>			   
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 18px; color:#BD1D6B; margin-top: 25px;"><strong>X MULTIPLIER Xtra Chance Promotion Prizes</strong></p>
			  <br>
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="218" class="txtc">Prizes</th>
                              <th width="170" class="txtc">Winners Per Draw</th>
							 <th width="170" class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc"><strong>Top Prize:</strong> $20,000</td>
							 <td class="txtc">1</td>
							 <td class="txtc">3</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> $5,000</td>
                              <td class="txtc">10</td>
							  <td class="txtc">30</td>
                         </tr>  
                         <tr>
                              <td class="txtc"><strong>Third Prize:</strong> $1,000</td>
                              <td class="txtc">30</td>
							  <td class="txtc">90</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>TOTAL:</strong></td>
                              <td class="txtc">41</td>
							  <td class="txtc">123</td> 
                         </tr>                            
                    </tbody>
               </table>		  
		</div>	                                  
                    
               
          <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>  

             
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