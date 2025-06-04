<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>
<style type="text/css">
<!--
#main.holiday table.dataTbl { width: 70%; }
#main.holiday table.dataTbl thead tr th, #main.holiday table.dataTbl tbody tr td { text-align: center; }
#main.holiday table.dataTbl tbody tr td p, #main.holiday table.dataTbl tbody tr td ul li { text-align: left; }
-->
</style>

<div id="main" class="Super Grouper prizes">
	<div id="topBanner">
		<jsp:include page="../2018/includes/2018-holidayBonusFamily_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
			   <p class="" style="text-align: left;margin-bottom:0px;font-size: 18px; margin-top: 10px;"><strong>WIN up to $10,000!</strong></p>
			   <p class="" style="text-align: left;margin-bottom:25px; margin-top: 10px;">In each of the three second chance drawings, 35 winners will each receive a $1,000 cash prize, seven winners will each receive a $5,000 cash prize, and three winners will receive a $10,000 cash prize!</p>			   
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 18px; color:#d4482f; margin-top: 25px;"><strong>"$10,000 Holiday Bonus" Second Chance Promotion Prizes</strong></p>
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
                         <tr>
                              <td class="txtc"><strong>TOTAL:</strong> </td>
                              <td class="txtc">45</td>
							  <td class="txtc">135</td> 
                         </tr>                           
                    </tbody>
               </table>
               
            
           <p class="boldNote" >HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
		   
             
		</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>