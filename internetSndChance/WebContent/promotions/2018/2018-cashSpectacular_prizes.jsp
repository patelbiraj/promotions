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

<div id="main" class="monopoly prizes">
	<div id="topBanner">
		<jsp:include page="../2018/includes/2018-cashSpectacular_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <h3>Win up to $30,000!</h3>
               <p>In each of the six second chance drawings, 30 players will each receive a $1,000 cash prize, four players will each receive a $5,000 cash prize, two players will each receive a $10,000 cash prize, and one player will receive a $30,000 cash prize!</p>
			  <p class="" style="text-align: center;margin-bottom:-25px;font-size: 15px; color:#ec008c; margin-top: 25px;"><strong>30th Birthday Cash Spectacular Second Chance Promotion Prizes</strong></p>
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
                              <td class="txtc">Top Prize: $30,000</td>
                              <td class="txtc">1</td>
                              <td class="txtc">6</td>
                         </tr>
                         <tr>
                              <td class="txtc">Second Prize: $10,000</td>
                              <td class="txtc">2</td>
                              <td class="txtc">12</td>
                         </tr>
                           <tr>
                              <td class="txtc">Third Prize: $5,000</td>
                              <td class="txtc">4</td>
                              <td class="txtc">24</td>
                         </tr>
                           <tr>
                              <td class="txtc">Fourth Prize: $1,000</td>
                              <td class="txtc">30</td>
                              <td class="txtc">180</td>
                         </tr>  
                         <tr>
							 <td class="txtc"><strong><b>TOTAL</b></strong> </td>
							 <td class="txtc"><strong>37</strong></td>
							 <td class="txtc"><strong>222</strong></td>
                         </tr>                            
                    </tbody>
               </table>
               
             <!--  <s:if test="%{promotion.promotionInterval.containsNow()}">
                    <div id="enterVouchers" class="enterVouchers">
                    	<a class="button" href="entry_2017-cashSupply">Enter Tickets Here</a>
                    </div>
               </s:if>-->

              <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
		</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>