<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>

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
		<jsp:include page="../2017/includes/2017-goldRushDoubler_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <h3>Win up to $25,000!</h3>
               <p>In each of the four second chance drawings, 20 players will each receive a $1,000 cash prize, three players will each receive a $10,000 cash prize and one player will receive $25,000.</p>
               <h3 class="tableCaption">Doubly Rich Second Chance Promotion Prizes</h3>
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
                              <td class="txtc"><strong>First Prize:</strong> $25,000</td>
                              <td class="txtc">1</td>
                              <td class="txtc">4</td>
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> $10,000</td>
                              <td class="txtc">3</td>
                              <td class="txtc">12</td>
                         </tr>
                           <tr>
                              <td class="txtc"><strong>Third Prize:</strong> $1,000</td>
                              <td class="txtc">20</td>
                              <td class="txtc">80</td>
                         </tr>
                         
                    </tbody>
               </table>
               
             <!--  <s:if test="%{promotion.promotionInterval.containsNow()}">
                    <div id="enterVouchers" class="enterVouchers">
                    	<a class="button" href="entry_2017-goldRushDoubler">Enter Tickets Here</a>
                    </div>
               </s:if>-->

              <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
		</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>