<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<style>
#sort1{
	height: 20px;
	width: 10px;
	
}
#sort2{
	height: 20px;
	width: 10px;
}
#sort3{
	height: 20px;
	width: 10px;
}
#sort4{
	height: 20px;
	width: 10px;
}
#sort5{
	height: 20px;
	width: 10px;
}
#sort6{
	height: 20px;
	width: 10px;
}
</style>
<script src="https://www.w3schools.com/lib/w3.js"></script>
<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>
<script type="text/javascript" src="lib.js"></script>
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
<%-- <script>
function check_tn(){
	 if( document.ticketEntryForm.ticketNumber.value.length < 24)
	 {
	   let text = "*Invalid Ticket Number, The ticket number should be 24 digit long.";
	   document.getElementById("error_label_tn").innerHTML = text;
	 }
	 else{
	   let text = "";
	   document.getElementById("error_label_tn").innerHTML = text;
	 }
}

function check_pin(){
	 if( document.ticketEntryForm.ticketNumberPin.value.length < 3)
	 {
	   let text = "*Invalid Pin Number, The pin number should be 3 digit long.";
	   document.getElementById("error_label_pin").innerHTML = text;
	 }
	 else{
	   let text = "";
	   document.getElementById("error_label_pin").innerHTML = text;
	 }
}
</script> --%>
<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2024/includes/2024-secretVault_navigation.jsp"></jsp:include>
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
						<p><strong>To participate in the Bonus Play with your non-winning MONOPOLY SECRET VAULT Scratch-Off ticket:</strong></p>
						<ol>
							<li>Scratch off the latex covering at the bottom of your ticket to reveal the 27-digit ticket number.<br>[24-digits, plus the 3-digit pin] </li>
							<br>
							<li>Scan your ticket using the Florida Lottery mobile app or manually enter the ticket number into the designated field below.</li>
							<br>
				            <li>Verify that the entered number matches the ticket number on your ticket before proceeding.</li>
				            <br>
				            <li>Click on SUBMIT.</li>
							
						</ol>
						<!--Beginning of Promotion Entry Form-->
						<s:form id="ticketEntryForm" action="entry_2024-secretVault">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="24" minlength="24"  cssClass="tktNumber" />
									<s:textfield name="form.ticketNumberPin" id="ticketNumberPin" maxlength="3" minlength="3" cssClass="tktNumberPin" />
									<s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
								</p>
								<p class="ticketNumberNote"><span style="margin-right:72px">Ticket Number</span><span>3-Digit Pin</span><br>
								<!-- <p id="status" style="color: #c60c30; font-weight: bold; font-size: 98%;"></p> -->
								<p class="promoCode">
									<s:if test='%{#request.fbPromoCode != null and !#request.fbPromoCode}'>
										<s:textfield name="form.fbPromoCode" id="fbPromoCode" cssClass="promoCode" />
										<br>
										<span class="promoCodeNote">Promo Code</span>
									</s:if>
								</p>
								<!-- <label style="font-size: 13px; color: red;" id="error_label_tn"></label><br>
								<label style="font-size: 13px; color: red;" id="error_label_pin"></label> -->
								
								
							</s:form>
							<br /><br /><br /><br /><br /><br />
				 	</div>

					<div id="tickets">
						<div class="tkt2" >
							<img src="promotions/2024/images/png/SecretVault.png"
								alt="Monopoly Secret Cash Vault Ticket Sample" width="280" height="500">
						</div>
					</div>
					<div class="postInput">
						<p><strong>Florida law prohibits the payment of prizes to persons under the age of 18. 
					By entering my ticket number into the drawing, I affirm that I am 18 years of age or older.</strong></p>
					<p>If you are having trouble entering your ticket number, please check the <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> 
					<br>or send an email to <a href="http://www.floridalottery.com/help/contact">ask@flalottery.com</a>.
					<br>
					<br><strong>Ensure the ticket number entered consists of 27 digits [24-digits, plus the 3-digit pin].</strong></p>


				<p class="hours"><strong>Tickets can only be entered from 6:00 AM to 11:59 PM, ET.</strong><br>Each player is limited to submitting up to 200 tickets per day.<br></strong></p>
			
				<p class="hours"><strong>Only the $1, $2, $5, $10, and $20 MONOPOLY SECRET VAULT Scratch-Offs are eligible for entry into<br>the CASH VAULT BONUS PLAY. The $3 MONOPOLY SECRET VAULT Scratch-Off is not eligible.</strong></p>
					</div>
					
				</div>
			</s:if>				 	
			<!--End of Promotion Entry Form-->
    <!--Beginning of Promotion Ending Message-->    
			<s:else>
			   <h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
			</s:else>
     <!--End of Promotion Ending Message-->
			
			<table class="dataTbl">
			<caption>TICKET FAMILY</caption>
			<thead>
				<tr>
					<th>$1</th>
					<th>$2</th>
					<th>$5</th>
					<th>$10</th>
					<th>$20</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><s:property value="%{familyCheck[1]}"/></td>
					<td><s:property value="%{familyCheck[2]}"/></td>
					<td><s:property value="%{familyCheck[5]}"/></td>
					<td><s:property value="%{familyCheck[10]}"/></td>
					<td><s:property value="%{familyCheck[20]}"/></td>
				</tr>
			</tbody>
		</table>
		
		<p style="text-align: center;"><s:property value="%{familyTicketMessage}"/></p>
		<br />
			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;" id = "myTable">
				<caption style="text-align: center; font-size: 20px;">MY CASH VAULT BONUS PLAY ENTRIES</caption>
				<thead>
					<tr>
						<th class = "entry" id = 1 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(1)')" style="cursor:pointer"><strong>Ticket Number</strong><img id="sort1" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 2 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(2)')" style="cursor:pointer"><strong>Entries Awarded</strong><img id="sort2" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt="" /></th>
						<th class = "entry" id = 3 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(3)')" style="cursor:pointer"><strong>Bonus Entries Earned</strong><img id="sort3" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 4 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(4)')" style="cursor:pointer"><strong>Date Entered</strong><img id="sort4" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 5 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(5)')" style="cursor:pointer"><strong>Draw Date</strong><img id="sort5" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
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
							<tr class="item">
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
			
			<br>
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNoteLotto">
					<span class="redAsterisk">*</span>This ticket has been
					disqualified.
				</p>
			</s:if>
		</div>
	</div>
</div>
<script type="text/javascript">
     function sortFunction(id){
     	
     	switch(id){
     		case '1': 
     				document.getElementById("sort2").src = "images/gif/transparent.gif";
    				document.getElementById("sort3").src = "images/gif/transparent.gif";
    				document.getElementById("sort4").src = "images/gif/transparent.gif";
    				document.getElementById("sort5").src = "images/gif/transparent.gif";
					var x = document.getElementById("sort1").src;
					x.includes('up.png')? document.getElementById("sort1").src = "images/png/down.png" : document.getElementById('sort1').src = "images/png/up.png";
					break;
					
					
			case '2': 
					document.getElementById("sort1").src = "images/gif/transparent.gif";
    				document.getElementById("sort3").src = "images/gif/transparent.gif";
    				document.getElementById("sort4").src = "images/gif/transparent.gif";
    				document.getElementById("sort5").src = "images/gif/transparent.gif";
					var x = document.getElementById("sort2").src;
					x.includes('up.png')? document.getElementById("sort2").src = "images/png/down.png" : document.getElementById('sort2').src = "images/png/up.png";
					break;
			case '3': 
     				document.getElementById("sort1").src = "images/gif/transparent.gif";
     				document.getElementById("sort2").src = "images/gif/transparent.gif";
    				document.getElementById("sort4").src = "images/gif/transparent.gif";
    				document.getElementById("sort5").src = "images/gif/transparent.gif";
					var x = document.getElementById("sort3").src;
					x.includes('up.png')? document.getElementById("sort3").src = "images/png/down.png" : document.getElementById('sort3').src = "images/png/up.png";
					break;
					
					
			case '4': 
					document.getElementById("sort1").src = "images/gif/transparent.gif";
     				document.getElementById("sort2").src = "images/gif/transparent.gif";
    				document.getElementById("sort3").src = "images/gif/transparent.gif";
    				document.getElementById("sort5").src = "images/gif/transparent.gif";
    				var x = document.getElementById("sort4").src;
					x.includes('up.png')? document.getElementById("sort4").src = "images/png/down.png" : document.getElementById('sort4').src = "images/png/up.png";
					break;
					
					
			case '5': 
					document.getElementById("sort1").src = "images/gif/transparent.gif";
     				document.getElementById("sort2").src = "images/gif/transparent.gif";
    				document.getElementById("sort3").src = "images/gif/transparent.gif";
    				document.getElementById("sort4").src = "images/gif/transparent.gif";
					var x = document.getElementById("sort5").src;
					x.includes('up.png')? document.getElementById("sort5").src = "images/png/down.png" : document.getElementById('sort5').src = "images/png/up.png";
					break;
					
					
			
     	}
     };
</script>