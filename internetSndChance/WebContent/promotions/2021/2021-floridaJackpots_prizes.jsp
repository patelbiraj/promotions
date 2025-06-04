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
		<jsp:include page="../2021/includes/2021-floridaJackpots_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                  
               <div id="mainContent">
   			   <p class="" style="margin-bottom:25px; margin-top: 5px;">     
  				One drawing will be held on March 3 from all tickets entered by February 28, 2021 at midnight ET, where a total of 121 winners will be selected to win a total of $300,000 in cash prizes! Winners will be announced on March 8. The total breakdown of prizes is as follows:        
               </p>
               <table class="prTbl">
                    <thead>
                         <tr>
                              <th width="318" class="txtc">Prizes</th>
                              <th width="200" class="txtc">Amount</th>
							 <th width="170" class="txtc">Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc"><strong>Top Prize</strong></td>
							 <td class="txtc">$50,000</td>
							 <td class="txtc">1</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>2nd Prize</strong></td>
                              <td class="txtc">$10,000</td>
							  <td class="txtc">5</td>
                         </tr>  
                         <tr>
                              <td class="txtc"><strong>3rd Prize</strong></td>
                              <td class="txtc">$5,000</td>
							  <td class="txtc">10</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>4th Prize</strong> </td>
                              <td class="txtc">$2,500</td>
							  <td class="txtc">30</td> 
                         </tr>
                          <tr>
                              <td class="txtc"><strong>5th Prize</strong> </td>
                              <td class="txtc">$1,000</td>
							  <td class="txtc">75</td> 
                         </tr>                           
                    </tbody>
               </table>	
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