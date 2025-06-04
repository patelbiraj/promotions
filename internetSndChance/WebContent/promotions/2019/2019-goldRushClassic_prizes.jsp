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
		<jsp:include page="../2019/includes/2019-goldRushClassic_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
			  <h3>Win up to $30,000! </h3>
			  <p>In each of the six Second Chance drawings, 30 winners will each receive a $1,000 cash prize, four winners will each receive a $5,000 cash prize, two winners will each receive a $10,000 cash prize, and one player will receive a $30,000 cash prize.</p>
			  
			  
			  <br>
               <table class="dataTbl">
				    <caption>"Gold Rush Classic" Second Chance Promotion Prizes</caption>
                    <thead>
                         <tr>
							 <th class="txtc"></th>
                              <th class="txtc">Prizes</th>
                              <th class="txtc">Winners Per Draw</th>
							 <th class="txtc">Total Winners</th>
							 <th class="txtc">Total Cash Prizes</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
							 <td class="txtc"><strong>Top Prize:</strong></td>
                              <td class="txtc">$30,000</td>
							 <td class="txtc">1</td>
							 <td class="txtc">6</td>
							 <td class="txtc">$180,000</td>
							 
                         </tr>
                          <tr class="even">
							 <td class="txtc"><strong>2nd Prize:</strong></td>
                              <td class="txtc">$10,000</td>
							 <td class="txtc">2</td>
							 <td class="txtc">12</td>
							 <td class="txtc">$120,000</td>
							 
                         </tr>
						 <tr>
							 <td class="txtc"><strong>3rd Prize:</strong></td>
                              <td class="txtc">$5,000</td>
							 <td class="txtc">4</td>
							 <td class="txtc">24</td>
							 <td class="txtc">$120,000</td> 
                         </tr>
						 <tr  class="even">
							 <td class="txtc"><strong>4th Prize:</strong></td>
                              <td class="txtc">$1,000</td>
							 <td class="txtc">30</td>
							 <td class="txtc">180</td>
							 <td class="txtc">$180,000</td>
							 
                         </tr>
                         <tr class="total">
							 <td class="txtc"><strong>TOTAL</strong> </td>
							 <td class="txtc"><strong></strong> </td>
							 <td class="txtc"><strong>37</strong></td>
							 <td class="txtc"><strong>222</strong></td>
							 <td class="txtc"><strong>$600,000</strong></td>
							 
                         </tr>                            
                    </tbody>
               </table>
               
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