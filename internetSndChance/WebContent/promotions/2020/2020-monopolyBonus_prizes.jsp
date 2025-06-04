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
		<jsp:include page="../2020/includes/2020-monopolyBonus_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
               <div id="mainContent">
               
			   <p class="" style="margin-bottom:25px;font-size: 18px; margin-top: 0px;"><strong>SPECTACULAR CASH PRIZES!</strong></p>
			   <p class="" style="margin-bottom:25px; margin-top: 25px;">In each of the three MONOPOLY Bonus Promotion drawings, one winner will receive $20,000 cash; 10 winners will each receive $5,000 cash; and 30 winners will each receive $1,000 cash!</p>			   
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 20px; color:#EE3236; margin-top: 25px;"><strong>MONOPOLY Bonus Promotion Prizes</strong></p>
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
		<img src="promotions/2018/images/jpg/MonopolyJackpot_Icon.jpg" alt="Monopoly Jackpot Icon" width="31" height="34" align="left"><p style="padding-left: 25px; margin-left: 25px; font-size: 10px;"> The MONOPOLY name and logo, the distinctive design of the game board, the four corner squares, the MR. MONOPOLY name and character, as well as each of the distinctive elements of the board and playing pieces are trademarks of Hasbro for its property trading game and game equipment. &copy;  1935, 2019 Hasbro. All Rights Reserved. Licensed by Hasbro.</p>         
	
             
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