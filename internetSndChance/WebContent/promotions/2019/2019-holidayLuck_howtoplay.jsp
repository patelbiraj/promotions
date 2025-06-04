<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="holidayLuck howtoplay">
	<div id="topBanner">
		<jsp:include page="../2019/includes/2019-holidayLuck_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Enter your non-winning $5,000,000 LUCK and HOLIDAY LUCK tickets into the Holiday Luck Second Chance Promotion for a chance to win cash prizes of up to $10,000. Receive up to 20 entries per ticket. Number of entries differs by game.</p>
               <p>Three drawings will be held from tickets entered by midnight on the last night of the entry period for each drawing. A total of 135 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

               <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="218" class="txtc">Entry Period</th>
                                <th width="218" class="txtc">Winners Announced</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">October 28 &ndash; November 18, 2019</td>
                              <td class="txtc">November 25, 2019</td>
                              </tr>
                              
                         <tr>
                              <td class="txtc">2</td>
                               <td class="txtc">November 19  &ndash; December 9, 2019</td>
                              <td class="txtc">December 16, 2019</td>
                             
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">December 10, 2019  &ndash; January 6, 2020</td>
                              <td class="txtc">January 13, 2020</td>
                              
                         </tr>
                         
                         
                    </tbody>
               </table>
               
               <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the Holiday Luck Second Chance Promotion.</p>
               
            <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="218"class="txtc">Game</th>
                              <th  width="150"class="txtc">Price Point</th>
                              <th width="200" class="txtc">Number of Entries</th>
                         </tr>
                    </thead>
                    <tbody>
                        <tr>
                              <td class="txtc">$5,000,000 LUCK</td>
                              <td class="txtc">$20</td>
                              <td class="txtc">20</td>
                         </tr>
                         <tr>
                              <td class="txtc">$2,000,000 HOLIDAY LUCK</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
                         </tr>  						 
                         <tr>
                              <td class="txtc">$1,000,000 HOLIDAY LUCK</td>
                              <td class="txtc">$5</td>
                              <td class="txtc">5</td>
                         </tr>
                         <tr>
                              <td class="txtc">$50,000 HOLIDAY LUCK</td>
                              <td class="txtc">$2</td>
                              <td class="txtc">2</td>
                         </tr>
                         <tr>
                              <td class="txtc">$10,000 HOLIDAY LUCK</td>
                              <td class="txtc">$1</td>
                              <td class="txtc">1</td>
                         </tr> 
                         
                    </tbody>
               </table>
			  
			<p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>