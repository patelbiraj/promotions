<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	
	function closeiFrame() {
    	document.getElementById("iframe-container").style.display="none";
	}

</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#ticketEntryForm').submit(function() {
             if (!validateTicketEntryForm(24)) {
                return false;
            }
 
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
			page="../2023/includes/2023-comeOnDown_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<div class="content_red">
				<s:property escapeHtml="false" value="messages.message" />
				<s:fielderror fieldName="form.ticketNumber" escape="false" />
			</div> 
			
			<h1>TICKET ENTRY</h1>
			<p><strong>To enter your non-winning THE PRICE IS RIGHT<sup>&#8482;</sup> Scratch-Off<br>
			ticket into the Bonus Play Promotion</strong></p>
			<div id="sampleTicket">
				<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_TicketEntry.jpg"
					alt="Holiday Getaway Tickets" width="341" height="536">
			</div>
	<ol>
			<li>Scratch off the latex covering at the bottom of your non-winning ticket to reveal the 27-digit ticket number (24-digits plus the 3-digit pin). (See Ticket Sample) </li>
            <li>Scan your ticket using the Florida Lottery mobile app or manually enter your ticket number in the field provided below.</li>
            <li>Please confirm the number you entered matches the ticket number on your ticket before clicking submit. <strong>All entries are final</strong>. </li>
				<li><strong>Click SUBMIT</strong>.</li>
	</ol>
			 
			
    <!--Beginning of Promotion Entry Form--> 
    			<s:if test="%{promotion.promotionInterval.containsNow()}">
    				<s:form id="ticketEntryForm" action="entry_2023-comeOnDown">
    					<p><s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="24" cssClass="tktNumber" />
						<s:textfield name="form.ticketNumberPin" id="ticketNumberPin" maxlength="3" cssClass="tktNumberPin" />
    					</p>
    					<p class="ticketNumberNote"><span>Ticket Number</span>   <span class="tktNumberPin" style="padding-left:50px;">3-Digit PIN</span></p> 
						<p id="status" style="color: #c60c30; font-weight: bold; font-size: 98%;"></p>
    					<p class="buttonBar"> <s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
	    						<input type="hidden" id="isScanned" name="form.isScanned" />
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
			<p>Once you have entered your first ticket, you are ready to enter again. You'll find a record of your entries at the bottom of this page. A single ticket may only be entered once into the promotion.</p>
			<p style="width: 500px; padding-bottom: 130px;">If you experience difficulty when submitting your ticket number, please visit the <a
					href="https://secondchance.floridalottery.com/secondchance/FAQs">FAQs</a> section or e-mail 
				<a href="http://www.floridalottery.com/contactUs">asklott@flalottery.com</a>.  Please enter numbers only. Do not include dashes.
			</p>

 				<s:if test='%{#request.gamesURL != null}'>
					<div id="iframe-container" style="background-color: #5D9732; text-align: center; width: 600px; border-radius: 25px; margin: 5px;" >
						<a href="entry_2023-comeOnDown"><img src="promotions/2023/images/png/closeButton.png" style="float: right;" width="50" height="50"></img></a>					
							<iframe  src=<s:property value="#request['gamesURL']"/> width="500" height="500"></iframe>
					</div>
				</s:if> 

			<h2 class="tktEntry" ><span style="width:100%;">COME ON DOWN Challenge Bonus Play Entries:</span>
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
								<td><s:property value='%{ticketWeight}' /></td>
								<td><s:property value="%{bonusPoint}" /></td>
								<td><s:property value="%{createDateFormatted}" /></td>
								<td><s:property value="%{drawDateFormatted}" /></td>
							</tr>
						</s:iterator>
					</s:else>
				</tbody>
			</table>
			<p style="text-align:center; font-size:19px; color: #962120;"><strong>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET.<br>ENTRIES WILL BE LIMITED TO 200 TICKETS PER PLAYER, PER DAY.</strong></p>
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNoteLotto">
					<span class="redAsterisk">*</span>This ticket has been
					disqualified.
				</p>
			</s:if>






		</div>

	</div>

</div>