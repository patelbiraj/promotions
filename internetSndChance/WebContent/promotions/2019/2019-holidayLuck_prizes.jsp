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
		<jsp:include page="../2019/includes/2019-holidayLuck_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
               <div id="mainContent">
               
			   <p class="" style="text-align: center;margin-bottom:25px;font-size: 18px; margin-top: 0px;"><strong>WIN up to $10,000!</strong></p>
			   <p class="" style="text-align: center;margin-bottom:25px; margin-top: 25px;">In each of the three second chance drawings, three players will each receive a $10,000 cash prize, seven players will each receive a $5,000 cash prize, and 35 players will each receive a $1,000 cash prize!</p>			   
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 18px; color:#8B0405; margin-top: 25px;"><strong>HOLIDAY LUCK SECOND CHANCE PROMOTION PRIZES</strong></p>
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
                              <td class="txtc"><strong>Top Prize:</strong> $10,000</td>
							 <td class="txtc">3</td>
							 <td class="txtc">9</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> $5,000</td>
                              <td class="txtc">7</td>
							  <td class="txtc">21</td>
                         </tr>  
                         <tr>
                              <td class="txtc"><strong>Third Prize:</strong> $1,000</td>
                              <td class="txtc">35</td>
							  <td class="txtc">105</td> 
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