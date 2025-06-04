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
		<jsp:include page="../2019/includes/2019-lottoCash_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>		  
			  
			  <br>
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th class="txtc">Prizes</th>
                              <th class="txtc">Winners Per Draw</th>
							 <th class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc">$25,000</td>
							 <td class="txtc">1</td>
							 <td class="txtc">3</td>
							 
                         </tr>
                          <tr>
                              <td class="txtc">$5,000</td>
							 <td class="txtc">5</td>
							 <td class="txtc">15</td>							 
                         </tr>
						 <tr>
                              <td class="txtc">$500</td>
							 <td class="txtc">100</td>
							 <td class="txtc">300</td>
                         </tr>
                         <tr class="total">
							 <td class="txtc"><strong>TOTAL</strong> </td>
							 <td class="txtc"><strong>106</strong> </td>
							 <td class="txtc"><strong>318</strong></td>							 
                         </tr>                            
                    </tbody>
               </table>
               
          <p class="boldNote">HOLD ON TO YOUR VOUCHER BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>  

             
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