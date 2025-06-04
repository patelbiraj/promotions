<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

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
		<jsp:include
			page="../2021/includes/2021-guyharvey_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<div class="content_red">
				<s:property escapeHtml="false" value="messages.message" />
				<s:fielderror fieldName="form.ticketNumber" escape="false" />
			</div>
			<h1>TICKET ENTRY</h1>
			<p>Enter the Trucks, Bucks, and Trips Promotion online or through the Florida Lottery mobile app!</p>
			<p>First, scratch off the coating covering at the bottom of your non-winning GUY HARVEY $500,000 FLORIDA CASH Scratch-Off ticket to reveal the barcode.</p>
			<p><strong>To enter using the mobile app:</strong> Scan the barcode or manually enter the 24-digit ticket number to be entered into the promotion. (See ticket sample).</p>
			<p><strong>To enter online:</strong> Enter your 24-digit ticket number in the field provided below.<br>
Confirm that the number you entered matches the 24-digit ticket number on your ticket and click submit. <strong>All entries are final</strong>. 
</p>
			<div id="sampleTicket">
				<img src="promotions/2021/images/jpg/GuyHarvey_SecondChance_TicketEntry_2021.jpg"
					alt="Guy Harvey Tickets" width="380" height="440">
			</div>
			
    <!--Beginning of Promotion Entry Form-->
    			<s:if test="%{promotion.promotionInterval.containsNow()}">
    				<s:form id="ticketEntryForm" action="entry_2021-guyharvey">
    					<p>
    						<s:textfield name="form.ticketNumber" id="ticketNumber"
    							maxlength="%{promotion.allowedDigits.last()}"
    							cssClass="tktNumber" />
    					</p>
    					<p class="ticketNumberNote">
    						<span>Ticket Number</span>
    					</p>
    					<p style="margin-top: 15px !important;">
    						<s:if
    							test='%{#request.fbPromoCode != null and !#request.fbPromoCode}'>
    							<s:textfield name="form.fbPromoCode" id="fbPromoCode"
    								cssClass="promoCode" />
    							<br>
    							<span class="promoCodeNote">Promo Code (optional)</span>
    						</s:if>
    					</p>
    					<p>
    						<s:submit name="form.submitFlag" value="Submit"
    							cssClass="ticketSubmit translate" />
    					</p>
    				</s:form>
    			</s:if>
			<!--End of Promotion Entry Form-->
     
    <!--Beginning of Promotion Ending Message-->    
               <s:else>
                  <h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
               </s:else>
     <!--End of Promotion Ending Message-->  

			<p><span><strong>Florida law prohibits the payment of prizes to persons under the age of 18. By entering my ticket into the drawing, I affirm that I am 18 years of age or older.</strong></span></p>
			<p>Once you have entered your first ticket, you are ready to enter again. You'll find a record of your entries at the bottom of this page. Enter as many non-winning valid tickets as you wish, but any single ticket may only be entered once into the drawing.<br>
			<strong>Remember: DO NOT throw away the tickets that you submit online. Winners must have to claim their prizes.</strong>
			</p>
			<p style="width: 500px;">If you experience difficulty when submitting your ticket number, please visit the <a
					href="https://secondchance.floridalottery.com/secondchance/FAQs">FAQs</a> section or e-mail 
				<a href="http://www.floridalottery.com/contactUs">asklott@flalottery.com.</a>  The ticket number entered must be <strong>24 digits</strong>. Please enter numbers only. Do not include dashes.
			</p>
			<hr />

			<h2 class="tktEntry" ><span>My Guy Harvey Promotion Ticket Entry List</span>
				<!--<span><s:property escapeHtml="false" value="%{promotion.name}" /></span> <s:property value="messages.h1Title" />-->
			</h2>

			<table class="dataTbl tktEntry"
				style="width: 100%; margin-top: 40px; margin-left: 0px;">
				<thead>
					<tr class="row_head">
						<th><strong>Ticket Number</strong></th>
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
						<s:iterator value="ticketEntryList">
							<s:set var="entriesReceived"
								value="%{promotion.getGames().get(gameNumber).getWeight()}" />
							<tr>
								<td><s:property value="%{ticketNumberDisplay}" />
									<s:label value="**********" /></td>
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
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNoteLotto">
					<span class="redAsterisk">*</span>This ticket has been
					disqualified.
				</p>
			</s:if>






		</div>

	</div>

</div>





