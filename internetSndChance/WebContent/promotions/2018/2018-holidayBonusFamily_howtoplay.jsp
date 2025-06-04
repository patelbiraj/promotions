<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="holidayBonus howtoplay">
	<div id="topBanner">
		<jsp:include page="includes/2018-holidayBonusFamily_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
              <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               
			   <p>Receive up to 10 entries per ticket for a chance to win cash prizes of up to $10,000 by entering your non-winning HOLIDAY BONUS tickets in the "$10,000 Holiday Bonus" Second Chance Promotion. Number of entries differs by game.</p>
			   
			   <p>Three drawings will be held between November 21, 2018, and January 2, 2019, from tickets submitted and received by midnight ET on the last night of the entry period for each drawing. A total of 135 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>
			  
			   <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="168" class="txtc">Draw Date</th>
                              <th width="218" class="txtc">Entry Period</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
							  <td class="txtc">November 21, 2018</td>
                              <td class="txtc">October 29 &ndash; November 19, 2018</td>
						</tr>                             
                         <tr>
                              <td class="txtc">2</td>
							  <td class="txtc">December 12, 2018</td>
                              <td class="txtc">November 20  &ndash; December 10, 2018</td> 
						</tr>		
                         <tr>
                              <td class="txtc">3</td>
							  <td class="txtc">January 2, 2019</td> 
                              <td class="txtc">December 11  &ndash; December 31, 2018</td>  
						</tr>	  
                         	
                    </tbody>
               </table>

			   <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the "$10,000 Holiday Bonus" Second Chance Promotion.</p>
			  
			   <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="218" class="txtc">Game</th>
                              <th width="71" class="txtc">Price Point</th>
                              <th width="100" class="txtc">Number of Entries</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">$2,000,000 HOLIDAY BONUS</td>
							  <td class="txtc">$10</td>
                              <td class="txtc">10</td>
						</tr>                     
                         <tr>
                              <td class="txtc">$1,000,000 HOLIDAY BONUS</td>
							  <td class="txtc">$5</td>
                              <td class="txtc">5</td>
						</tr>                             
                         <tr>
                              <td class="txtc">$50,000 HOLIDAY BONUS</td>
							  <td class="txtc">$2</td>
                              <td class="txtc">2</td>
						</tr>  		
                         <tr>
                              <td class="txtc">$10,000 HOLIDAY BONUS</td>
							  <td class="txtc">$1</td>
                              <td class="txtc">1</td>
						</tr>  	  
                         
                    </tbody>
               </table>			   
           <p class="boldNote"  >HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
		   
		 </div>
     </div>
</div>