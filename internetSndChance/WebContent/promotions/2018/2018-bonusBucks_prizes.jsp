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
		<jsp:include page="../2018/includes/2018-bonusBucks_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 15px; color:#3B4881; margin-top: 25px;"><strong>CASH4LIFE Bonus Bucks Promotion Prizes</strong></p>
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th class="txtc">Prizes</th>
                              <th class="txtc"># of Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc"><strong>Top Prize:</strong> $1,000</td>
                              <td class="txtc">28</td>
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> $100 worth of $1,000 A WEEK FOR LIFE Scratch-Off tickets (50 $2 tickets)</td>
                              <td class="txtc">72</td>
                         </tr>  
                         <tr>
							 <td class="txtc"><strong>TOTAL</strong> </td>
							 <td class="txtc"><strong>100</strong></td>
                         </tr>                            
                    </tbody>
               </table>
               
             <!--  <s:if test="%{promotion.promotionInterval.containsNow()}">
                    <div id="enterVouchers" class="enterVouchers">
                    	<a class="button" href="entry_2017-cashSupply">Enter Tickets Here</a>
                    </div>
               </s:if>-->

              <p class="boldNote" style="color: #F28800" >HOLD ON TO YOUR VOUCHER BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
		</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>