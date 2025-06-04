<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

</style>



<div id="main">
	<div id="topBanner">
		<jsp:include page="../2020/includes/2020-holidayBonusPlay_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
               <div id="mainContent">
               
			   <p class="" style="margin-bottom:25px;font-size: 18px; margin-top: 0px;text-align:center;"><strong>AMAZING CASH PRIZES AND GIFT CARDS!</strong></p>
			   <p class="" style="margin-bottom:25px; margin-top: 25px;">
			   	In each of the two Holiday Bonus Play Promotion drawings, one winner will receive $25,000 cash; two winners will each receive $10,000 cash; five winners will each receive $5,000 cash; 10 winners will each receive $2,500 cash; and 250 winners will each receive a $1,000 gift card to The Home Depot&reg;!
			   	</p>			   
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 20px; color:#EE3236; margin-top: 25px;">
			   		<strong>Holiday Bonus Play Promotion Prizes</strong>
			   	</p>
			  <br>
               <table class="prTbl">
                    <thead>
                         <tr>
                              <th width="318" class="txtc">Prizes</th>
                              <th width="200" class="txtc">Winners Per Draw</th>
							 <th width="170" class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc"><strong>Top Prize: $25,000</strong></td>
							 <td class="txtc">1</td>
							 <td class="txtc">2</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize: $10,000</strong></td>
                              <td class="txtc">2</td>
							  <td class="txtc">4</td>
                         </tr>  
                         <tr>
                              <td class="txtc"><strong>Third Prize: $5,000</strong></td>
                              <td class="txtc">5</td>
							  <td class="txtc">10</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>Fourth Prize: $2,500</strong> </td>
                              <td class="txtc">10</td>
							  <td class="txtc">20</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>Fifth Prize: $1,000 The Home Depot&reg; gift card</strong> </td>
                              <td class="txtc">250</td>
							  <td class="txtc">500</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>TOTAL:</strong></td>
                              <td class="txtc">268</td>
							  <td class="txtc">536</td> 
                         </tr>                            
                    </tbody>
               </table>	
				   <p>The Home Depot<sup>&reg;</sup> is not affiliated with this promotion.</p>
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