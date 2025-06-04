<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="cashSpectacular howtoplay">
	<div id="topBanner">
		<jsp:include page="../2019/includes/2019-cashPayday_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
               <p>Receive up to 10 entries per ticket for a chance to win cash prizes of up to $20,000 by entering your non-winning <strong>WEEK FOR LIFE</strong> tickets into the Cash Payday  Second Chance Promotion. Number of entries differs by game. </p>
               <p>Three drawings will be held from tickets entered by midnight on the last night of the entry period for each drawing. A total of 150 prizes will be awarded. For more information, click on the "Prizes" tab above.</p>

               <!-- <h3 class="tableCaption"></h3> -->
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th width="71" class="txtc">Drawing</th>
                              <th width="218" class="txtc">Entry Period</th>
                                <th width="218" class="txtc">Draw Date</th>
                         </tr>
                    </thead>
                    <tbody >
                         <tr>
                              <td class="txtc">1</td>
                              <td class="txtc">July 1 &ndash; July 22, 2019</td>
                              <td class="txtc">July 24, 2019</td>
                              </tr>
                              
                         <tr>
                              <td class="txtc">2</td>
                               <td class="txtc">July 23  &ndash; August 12, 2019</td>
                              <td class="txtc">August 14, 2019</td>
                             
                      </tr>
                         <tr>
                              <td class="txtc">3</td>
                              <td class="txtc">August 13  &ndash; September 9, 2019</td>
                              <td class="txtc">September 11, 2019</td>
                              
                         </tr>
                         
                         
                    </tbody>
               </table>
               
               <p>The number of entries a player will receive is based on the price point of the non-winning ticket entered into the Cash Payday   Second Chance Promotion.</p>
               
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
                              <td class="txtc">$5,000 A WEEK FOR LIFE</td>
                              <td class="txtc">$10</td>
                              <td class="txtc">10</td>
                         </tr>
                         <tr>
                              <td class="txtc">$2,500 A WEEK FOR LIFE</td>
                              <td class="txtc">$5</td>
                              <td class="txtc">5</td>
                         </tr>                        
                         <tr>
                              <td class="txtc">$1,000 A WEEK FOR LIFE</td>
                              <td class="txtc">$2</td>
                              <td class="txtc">2</td>
                         </tr>
                         <tr>
                              <td class="txtc">$500 A WEEK FOR LIFE</td>
                              <td class="txtc">$1</td>
                              <td class="txtc">1</td>
                         </tr>
                         
                    </tbody>
               </table>
			  
               <p><strong>Unique Retailer Promo Code: </strong>Players may earn 20 extra entries by asking a retailer for the promo code. The promo code must be entered at the same time a ticket is entered. The promo code is valid throughout the entire promotional period but may only be used one time for one ticket.</p>
            <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>