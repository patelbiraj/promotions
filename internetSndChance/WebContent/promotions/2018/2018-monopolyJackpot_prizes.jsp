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
		<jsp:include page="../2018/includes/2018-monopolyJackpot_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
			   <p class="" style="text-align: center;margin-bottom:25px;font-size: 18px; margin-top: 25px;"><strong>WIN up to $20,000!</strong></p>
			   <p class="" style="text-align: center;margin-bottom:25px; margin-top: 25px;">In each of the four second chance drawings, 30 winners will each receive a $1,000 cash prizes, five winners will each receive a $5,000 cash prize, and one player will receive a $20,000 cash prize.</p>			   
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 18px; color:#d4482f; margin-top: 25px;"><strong>"PASS GO, COLLECT $20,000" SECOND CHANCE PROMOTION PRIZES</strong></p>
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
                              <td class="txtc"><strong>Top Prize:</strong> $20,000</td>
							 <td class="txtc">1</td>
							 <td class="txtc">4</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> $5,000</td>
                              <td class="txtc">5</td>
							  <td class="txtc">20</td>
                         </tr>  
                         <tr>
                              <td class="txtc"><strong>Third Prize:</strong> $1,000</td>
                              <td class="txtc">30</td>
							  <td class="txtc">120</td> 
                         </tr>                            
                    </tbody>
               </table>
               
            
           <p class="boldNote" style="color: #DE443C; font-size: 17px" >HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
		   <img src="promotions/2018/images/jpg/MonopolyJackpot_Icon.jpg" alt="Monopoly Jackpot Icon" width="31" height="34" align="left"><p style="padding-left: 25px; margin-left: 25px; font-size: 10px;"> The MONOPOLY name and logo, the distinctive design of the game board, the four corner squares, the MR. MONOPOLY name and character, as well as each of the distinctive elements of the board and playing pieces are trademarks of Hasbro for its property trading game and game equipment. &copy;  1935, 2018 Hasbro. All Rights Reserved. Licensed by Hasbro.</p> 
             
		</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>