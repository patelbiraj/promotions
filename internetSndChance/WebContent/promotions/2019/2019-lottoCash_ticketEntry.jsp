<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>
<div id="main">
	<div id="topBanner">
		<jsp:include page="../2019/includes/2019-lottoCash_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <div class="content_red">
                    <s:property escapeHtml="false" value="messages.message" />
                    <s:fielderror fieldName="form.ticketNumber" escape="false" />
               </div>
               <h1>VOUCHER ENTRY</h1>
			  <p>To enter your <strong>FLORIDA LOTTO <sup>&reg;</sup></strong> voucher in the Lotto Cash Second Chance Promotion:</p>
               <div id="sampleTicket">
                    <img src="promotions/2019/images/jpg/FLLottoTickets.jpg" alt="Florida Lotto Sample Ticket" width="385" height="490" align="left" />
               </div>
               <ol>
                    <li>Enter the first 19 digits of the FLORIDA LOTTO <sup>&reg;</sup> voucher number in the box below to earn one entry into the Lotto Cash Second Chance Promotion. Vouchers can be entered at the top of the hour following the FLORIDA LOTTO purchase.</li>
                    <li>Please confirm the number you entered matches the FLORIDA LOTTO voucher before clicking submit. <strong> All entries are final. </strong> </li>
                    <li>Click <strong>SUBMIT</strong>.</li>
               </ol>
    <!--Beginning of Promotion Entry Form-->        
    <s:if test="%{promotion.promotionInterval.containsNow()}">
		<s:form id="ticketEntryForm" action="entry_2019-lottoCash">	
		<p><s:submit name="form.submitFlag" value="Submit" cssClass="ticketSubmit translate"/></p>	
		<p><s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="%{promotion.allowedDigits.last()}" cssClass="tktNumber" /></p>
		<p class="ticketNumberNote"><span>Your Entry Number</span></p>     		
		</s:form>
	</s:if>		  
     <!--End of Promotion Entry Form--> 
     
    <!--Beginning of Promotion Ending Message-->    
               <s:else>
                  <h3 class="promoEnded">Promotion has ended.<br />Voucher Entry is now closed.</h3>
               </s:else>
     <!--End of Promotion Ending Message-->               
				<p><span><strong>Florida law prohibits the payment of prizes to persons under the age of 18.  By entering my FLORIDA LOTTO voucher in the drawing, I affirm that I am 18 years of age or older.</strong></span></p>
				<p>Once you have entered a FLORIDA LOTTO voucher number, you'll find a record of your entries at the bottom of this page. You may enter as many valid vouchers as you wish, but any single voucher may only be entered once.
				FLORIDA LOTTO tickets purchased as a part of a Jackpot Combo or GROUPER<sup>&reg;</sup> play will not produce a voucher and cannot be entered in the promotion. </p>
				<p>If you experience difficulty when submitting your voucher number, please visit the <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> section or e-mail <a href="http://www.flalottery.com/contactUs">asklott@flalottery.com</a>. The number entered must be <strong>the first 13 digits</strong> of the voucher number. Please enter numbers only. Do not include dashes.</p>
			   <hr/>
			   
			     <h2 class="tktEntry">My LOTTO CASH Voucher Entry List <!--<span><s:property escapeHtml="false" value="%{promotion.name}" /></span> <s:property value="messages.h1Title" />--> </h2>
                     
               <table class="dataTbl tktEntry" style="width: 100%; ">
                    <thead>
					<tr>
						<th><strong>Voucher Number</strong></th>
						<th><strong>Date Entered</strong></th>
						<th><strong>Draw Date</strong></th>
					</tr>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
						<tr>
							<td class="row_2" colspan="3">There are no vouchers entered for this second chance promotion.</td>
						</tr>
                    </s:if>
					<s:else>
						<s:iterator value="ticketEntryList" >
							<s:if test="%{cancelledTicket}">
								<s:set var="disqualified" value="true" /> 
								<tr class="cancelled">
									<td><s:property value="%{ticketNumberDisplay}" /><strong class="redAsterisk">&nbsp;*</strong></td>
									<td><s:property value="%{createDateFormatted}" /></td>
									<td><s:property value="%{drawDateFormatted}" /></td>
								</tr>
							</s:if>
							<s:else>
								<tr>
									<td><s:property value="%{ticketNumberDisplay}" /></td>
									<td><s:property value="%{createDateFormatted}" /></td>
									<td><s:property value="%{drawDateFormatted}" /></td>
								</tr>
							</s:else>
						 </s:iterator>	
					</s:else>
                    </tbody>
               </table>
				<s:if test="%{#disqualified}">
					<p class="disqualifiedNoteLotto"><span class="redAsterisk">*</span>This voucher has been disqualified.</p>
				</s:if>               
			  
			   <p class="boldNote">HOLD ON TO YOUR VOUCHER BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
			   



          </div>
          
     </div>
     
</div>

<script>
$(document).ready(function() {
    $('#ticketEntryForm').submit(function() {
        if (!validateTicketEntryForm(19)) {
            return false;
        }

        dataLayer.push({
            event: 'ticket-entry-submit',
            ticketNumber: document.ticketEntryForm.ticketNumber.value
        });
    });
});

</script>


	
	
