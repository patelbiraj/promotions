<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>



<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>
<script type="text/javascript">
	window.addEventListener("message", function(params) {
		if (params && params.data.message === 'scanResults') {
			if (params.data.ticket) {
				document.ticketEntryForm.ticketNumber.value = params.data.ticket;
			} else if (params.data.error) {
				//TODO populate error message in microsite.
			}
		}
	}, false);

	function isMobile() {
		return navigator.userAgentData.mobile;
	}
	
	function setMobileEntry() {
		document.getElementById("isScanned").value=true;
		window.parent.postMessage({message: 'scanTicket'},'*');
	}

</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#ticketEntryForm').submit(function() {
/*             if (!validateTicketEntryForm(19)) {
                return false;
            }
 */
            dataLayer.push({
                event: 'ticket-entry-submit',
                ticketNumber: document.ticketEntryForm.ticketNumber.value,
				ticketNumberPin: document.ticketEntryForm.ticketNumberPin.value,
                fbPromoCode: document.ticketEntryForm.fbPromoCode.value
            });
        });
    });
</script>
<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2023/includes/2023-fuelForLife_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<div class="content_red">
				<s:property escapeHtml="false" value="messages.message" />
				<s:fielderror fieldName="form.ticketNumber" escape="false" />
			</div> 
			<h1><s:property value="messages.h1Title"/></h1>
			<s:if test="%{promotion.promotionInterval.containsNow()}">
				<div id="top">
					<div id="instructions">
						<p><strong>To enter your non-winning YEAR FOR LIFE Scratch-Off ticket or qualifying CASH4LIFE<sup>&reg;</sup> Draw game ticket into the Bonus Play promotion:</strong></p>
						<ol>
							<li>Scratch off the latex covering at the bottom of your non-winning YEAR FOR LIFE Scratch-Off ticket to reveal the 27-digit ticket number (24-digits plus the 3-digit pin).
							<span style="margin-left: 220px; margin-right: 220px;"><strong>Or</strong></span>
							Locate the barcode or 19-digit CASH4LIFE Draw game ticket number on the front of your ticket. Please enter numbers only. Do not include dashes.</li>
							<br>
							<li>Scan your ticket using the Florida Lottery mobile app or manually enter<br>your ticket number in the field provided below.</li>
							<br>
				            <li>Please confirm the number you entered matches the ticket number<br>on your ticket before clicking submit. <strong>ALL ENTRIES ARE FINAL.</strong></li>
				            <br>
							<li>Click <strong>SUBMIT</strong>.</li>
						</ol>
						<s:form id="ticketEntryForm" action="entry_2023-fuelForLife">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="24" cssClass="tktNumber" />
									<s:textfield name="form.ticketNumberPin" id="ticketNumberPin" maxlength="3" cssClass="tktNumberPin" />
									<s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
								</p>
								<p class="ticketNumberNote"><span>Ticket Number</span><span class="tktNumber">3-Digit Pin</span></p> 
								<p id="status" style="color: #c60c30; font-weight: bold; font-size: 98%;"></p>
								<p class="promoCode">
									<s:if test='%{#request.fbPromoCode != null and !#request.fbPromoCode}'>
										<s:textfield name="form.fbPromoCode" id="fbPromoCode" cssClass="promoCode" />
										<br>
										<span class="promoCodeNote">Promo Code</span>
									</s:if>
								</p>
								<p><strong>Promo codes are optional and<br>are not necessary to have a valid entry.<br></p> 
							</s:form>
				 	</div>
				 	<!--Beginning of Promotion Entry Form-->
					<div id="tickets">
						<div class="tkt1" >
							<img src="promotions/2023/images/png/sample_ticket_FFL_2.png"
								alt="CASH4LIFE" width="336" height="361">
						</div>
						<div class="tkt2" >
							<img src="promotions/2023/images/png/sample_ticket_FFL_1.png"
								alt="Year For Life Ticket" width="218" height="534">
						</div>
					</div>
				</div>
			</s:if>
			<!--End of Promotion Entry Form-->
    <!--Beginning of Promotion Ending Message-->    
			<s:else>
			   <h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
			</s:else>
     <!--End of Promotion Ending Message-->
			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;">
				<caption style="text-transform: uppercase; text-align: left; margin: -40px 0 10px 5px; font-size: 16px;">bonus play entries</caption>
				<thead>
					<tr>
						<th><strong>Ticket Number</strong></th>
						<th><strong>Entries Awarded</strong></th>
						<th><strong>Bonus Entries Earned</strong></th>
						<th><strong>Date Entered</strong></th>
						<th><strong>Draw Date</strong></th>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
						<tr>
							<td class="row_2" colspan="6">No entries submitted.</td>
						</tr>
					</s:if>
					<s:else>
						<s:iterator value="ticketEntryList">
							<s:set var="entriesReceived"
								value="%{promotion.getGames().get(gameNumber).getWeight()}" />
							<tr>
								<td><s:property value="%{ticketNumberDisplay}" />
									<s:label value="**********" /></td>
								<td><s:property value='%{ticketWeight}' /></td>
								<td><s:property value="%{bonusPoint}" /></td>
								<td><s:property value="%{createDateFormatted}" /></td>
								<td><s:property value="%{drawDateFormatted}" /></td>
							</tr>
						</s:iterator>
					</s:else>
				</tbody>
			</table>
			<p style="margin: 0 200px 15px 200px">Each ticket entered will earn entries equal to the price of the ticket entered.</p>
			<br>
			<p class="hours">TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET. <br><strong>ENTRIES WILL BE LIMITED TO 200 TICKETS PER PLAYER, PER DAY.</strong></p>
			<p>Florida law prohibits the payment of prizes to persons under the age of 18.  By entering my ticket number into the drawing, I affirm that I am 18 years of age or older.</p>
			<p>Once you have entered your first ticket, you are ready to enter again. You'll find a record of your entries at the bottom of this page. A single ticket may only be entered once into the promotion.</p>
			<p>If you experience difficulty when submitting your ticket number, please visit the <a href="https://secondchance.floridalottery.com/secondchance/FAQs">FAQs</a> section or e-mail <a href="http://www.floridalottery.com/contactUs">ask@flalottery.com.</a></p>
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNoteLotto">
					<span class="redAsterisk">*</span>This ticket has been
					disqualified.
				</p>
			</s:if>
		</div>
	</div>
</div>