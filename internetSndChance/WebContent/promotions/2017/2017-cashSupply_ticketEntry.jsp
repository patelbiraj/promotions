<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>

<div id="main" class="monopoly entry">
	<div id="topBanner">
		<jsp:include page="../2017/includes/2017-cashSupply_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <div class="content_red">
                    <s:property escapeHtml="false" value="messages.message" />
                    <s:fielderror fieldName="form.ticketNumber" escape="false" />
               </div>
               <h1><s:property value="messages.h1Title" /></h1>
               <p>To enter your non-winning <strong>WEEK FOR LIFE </strong> Scratch-Off ticket in the second chance promotion:</p>
               <div id="sampleTicket">
                    <img src="promotions/2017/images/jpg/cashSupply-ticketSample.jpg" alt="Cash Supply Ticket Sample" width="385" height="456" align="left" />
               </div>
               <ol>
                    <li>Scratch off the latex covering at the bottom of your non-winning ticket to reveal the 24-digit ticket number. (See Ticket Sample)</li>
                    <li>Enter your ticket number in the field provided below.</li>
                    <li>Please confirm the number you entered matches the ticket number on your ticket before clicking submit. <strong>All entries are final.</strong></li>
                    <li>Click <strong>SUBMIT</strong></li>
               </ol>
    <!--Beginning of Promotion Entry Form-->        
   <s:if test="%{promotion.promotionInterval.containsNow()}">
  <s:form id="ticketEntryForm" action="entry_2017-cashSupply">	
    <p><s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="%{promotion.allowedDigits.last()}" cssClass="tktNumber" /></p>
    <p class="ticketNumberNote"><span>Ticket Number</span></p>       
    <p><s:submit name="form.submitFlag" value="Submit" cssClass="ticketSubmit translate" /></p>
	<p><s:if test='%{#request.fbPromoCode != null and !#request.fbPromoCode}'>
	<s:textfield name="form.fbPromoCode" id="fbPromoCode" cssClass="promoCode" />
	<br>
    <span class="promoCodeNote">Facebook Promo Code for the week of: <s:property value="#request['fbPromoStartDate']"/></span>
    </s:if>
    </p>								
    
    </s:form>
	</s:if>
     <!--End of Promotion Entry Form--> 
     
    <!--Beginning of Promotion Ending Message-->    
               <s:else>
                  <h3 class="promoEnded">Promotion has ended.<br />Voucher Entry is now closed.</h3>
               </s:else>
     <!--End of Promotion Ending Message-->               
               <p><strong>Florida law prohibits the payment of prizes to persons under the age of 18. By entering my ticket number into the drawing, I affirm that I am 18 years of age or older.</strong></p>

               <p>Once you have entered your first ticket, you are ready to enter again. You'll find a record of your entries at the bottom of this page. Enter as many non-winning valid tickets as you wish, but any single ticket may only be entered once. <strong>Remember: Do NOT throw away the tickets that you submit online. Winners must have them to claim their prizes.</strong></p>
               <p >If you experience difficulty when submitting your ticket number, please visit the <a href="FAQs">FAQs</a> section or e-mail <a href="mailto:asklott@flalottery.com">asklott@flalottery.com</a>. The ticket number entered must be <strong>24 digits</strong>. Please enter numbers only. Do not include dashes.</p>

               <hr />
               <h2 class="tktEntry">My Ticket Entry <!--<span><s:property escapeHtml="false" value="%{promotion.name}" /></span> <s:property value="messages.h1Title" />--> List</h2>
         
               <table class="dataTbl tktEntry" style="width: 100%; ">
                    <thead>
					<tr class="row_head">
						<th><strong>Ticket Number</strong></th>
                        <th><strong>Entries Awarded</strong></th>
                        <th>Bonus Entries Earned</th>	
					    <th><strong>Date Entered</strong></th>
					    <th><strong>Draw Date</strong></th>
				</thead>
                    <tbody>
                         <s:if test="%{ticketEntryList.isEmpty()}">
                         <tr class="row_2">
                              <td colspan="6" style="text-align: center; padding: 12px; font-weight: bold; font-size:14px; ">There are no tickets entered for this second chance promotion.</td>
                         </tr>
                         </s:if>
                         <s:else>
                         <s:iterator value="ticketEntryList" >
						<s:set var="entriesReceived" value="%{promotion.getGames().get(gameNumber).getWeight()}"/>
						<tr>
							<td><s:property value="%{ticketNumber}" /></td>
							<td><s:property value='%{#entriesReceived}' /></td>		
							<td><s:property value="%{bonusPoint}" /></td>
							<td><s:property value="%{createDateFormatted}" /></td>
							<td><s:property value="%{drawDateFormatted}" /></td>
						</tr>
					 </s:iterator>	
                         </s:else>
                    </tbody>
               </table>

             <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>

<script>
$( document ).ready(function() {
	$("#ticketEntryForm").submit(function(event){
		return validateTicketEntryForm(<s:property value="%{promotion.allowedDigits.last()}" />);
	});
});
</script>