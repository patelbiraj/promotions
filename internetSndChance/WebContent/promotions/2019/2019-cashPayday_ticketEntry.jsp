<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#ticketEntryForm').submit(function() {
            if (!validateTicketEntryForm(24)) {
                return false;
            }

            dataLayer.push({
                event: 'ticket-entry-submit',
                ticketNumber: document.ticketEntryForm.ticketNumber.value,
                fbPromoCode: document.ticketEntryForm.fbPromoCode.value
            });
        });
    });
</script>
<div id="main">
	<div id="topBanner">
		<jsp:include page="../2019/includes/2019-cashPayday_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <div class="content_red">
                    <s:property escapeHtml="false" value="messages.message" />
                    <s:fielderror fieldName="form.ticketNumber" escape="false" />
               </div>
               <h1>TICKET  ENTRY</h1>
			  <p>To enter your non-winning <strong>WEEK FOR LIFE<sup>&trade;</sup></strong> Scratch-Off ticket in the second chance Promotion:</p>
               <div id="sampleTicket" >
                    <img  src="promotions/2019/images/jpg/CashPayday_TicketSample.jpg" alt="Cash Payday" width="320" height="602" align="left" />
               </div>
               <ol>
                    <li>Scratch off the latex covering at the bottom of your non-winning ticket to reveal the 24-digit ticket number. (See Ticket Sample)</li>
                    <li>Enter your ticket number in the field provided below.</li>
                    <li>Confirm the number you entered matches the ticket number on your ticket before clicking submit. <span class="boldNote">ALL ENTRIES ARE FINAL.</span></li>
                    <li>Click <strong>SUBMIT</strong></li>

               </ol>
    <!--Beginning of Promotion Entry Form-->        
    <s:if test="%{promotion.promotionInterval.containsNow()}">
		<s:form id="ticketEntryForm" action="entry_2019-cashPayday">	
		<p><s:submit name="form.submitFlag" value="Submit" cssClass="ticketSubmit translate"/></p>	
		<p><s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="%{promotion.allowedDigits.last()}" 
cssClass="tktNumber" /></p>
		<p class="ticketNumberNote"><span>Ticket  Number</span></p>   
		<p style="margin-top: 15px !important;"><s:if test='%{#request.fbPromoCode != null and !#request.fbPromoCode}'>
		<s:textfield name="form.fbPromoCode" id="fbPromoCode" cssClass="promoCode" />
		<br>
		<span class="promoCodeNote">Promo Code</span>
		</s:if>
		</p>
			
		<p><s:if test='%{#request.instPromoCode != null and !#request.instPromoCode}'>
		<s:textfield name="form.instPromoCode" id="instPromoCode" cssClass="promoCode" />
		<br>
		<span class="promoCodeNote">Instagram Promo Code </span>
		</s:if>
		</p>								

		</s:form>
	</s:if>		  
     <!--End of Promotion Entry Form--> 
     
    <!--Beginning of Promotion Ending Message-->    
               <s:else>
                  <h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
               </s:else>
     <!--End of Promotion Ending Message-->               
				<p><span><strong>Florida law prohibits the payment of prizes to persons under the age of 18.  By entering ticket number into the drawing, I affirm that I am 18 years of age or older.</strong></span></p>
				<p>Once you have entered your first ticket, you are ready to enter again, you'll find a record of your entries at the bottom of this page. Enter as many non-winning valid tickets as you wish, but any single ticket may only be entered once.
				<strong>Remember: DO NOT throw away the tickets that you submit online. Winners must have to claim their prizes.</strong></p>
				<p>If you experience difficulty when submitting your ticket number, please click the <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> tab or e-mail <a href="http://www.flalottery.com/contactUs">asklott@flalottery.com</a>. The ticket number entered must be <span class = "boldNote">24 digits</span>. Please enter numbers only. Do not include dashes.</p>
			   <hr/>
			   
			     <h2 class="tktEntry">My WEEK FOR LIFE Scratch-Off Ticket Entry List<!--<span><s:property escapeHtml="false" value="%{promotion.name}" /></span> <s:property value="messages.h1Title" />--> </h2>
                     
               <table class="dataTbl tktEntry" style="width: 100%; margin-top:90px;margin-left: 0; ">
                    <thead>
					<tr class="row_head">
						<th><strong>Ticket  Number</strong></th>
						<th><strong>Entries Awarded</strong></th>
						<th><strong>Bonus Entries Earned</strong></th>
						<th><strong>Date Entered</strong></th>
						<th><strong>Draw Date</strong></th>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
					<tr>
						<td class="row_2" colspan="5">No entries submitted.</td>
					</tr>
					</s:if>
					<s:else>
                         <s:iterator value="ticketEntryList" >
						<s:set var="entriesReceived" value="%{promotion.getGames().get(gameNumber).getWeight()}"/>
						<tr>
							<td><s:property value="%{ticketNumberDisplay}" /><s:label value="**********" /></td>
							<td><s:property value='%{#entriesReceived}' /></td>	
							<td><s:property value="%{bonusPoint}" /></td>	
							<td><s:property value="%{createDateFormatted}" /></td>
							<td><s:property value="%{drawDateFormatted}" /></td>
						</tr>
					 </s:iterator>	
                         </s:else>
				</tbody>
               </table>

				<s:if test="%{#disqualified}">
					<p class="disqualifiedNoteLotto"><span class="redAsterisk">*</span>This ticket has been disqualified.</p>
				</s:if>               
			  
			   <p class="boldNote">HOLD ON TO YOUR NON-WINNING TICKET BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
			   



          </div>
          
     </div>
     
</div>



	
	
