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
			page="../2024/includes/2024-holidayBlowout_navigation.jsp"></jsp:include>
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
						<p><strong>To enter the $5,000,000 Holiday Blowout Bonus Play, follow these steps:</strong></p>
						<ol>
							<li>Scratch off the latex coating at the bottom of your non-winning Scratch-Off ticket to 
							reveal the 27-digit ticket number, which consists of 24 digits, plus a 3-digit pin, or locate 
							the 19-digit ticket number for PICK Daily Games<sup>&#8482;</sup> tickets.</li>
							
							<li>Enter your ticket number manually in the designated space below or use the Florida 
							Lottery mobile app to scan your tickets.</li>
							
				            <li>Before clicking the submit button, please make sure that the number you typed matches 
				            the ticket number on your ticket.

				            </li>
							
						</ol>
						<!--Beginning of Promotion Entry Form-->
						<s:form id="ticketEntryForm" action="entry_2024-holidayBlowout">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="24" minlength="19"  cssClass="tktNumber" />
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
							<div id="tickets">
								<div class="tkt2" >
									<img src="promotions/2024/images/jpg/holiday-ticket-art.jpg"
										alt="Holiday Bonus Ticket Sample" width="600" height="300">
								</div>
							</div>
							
					<p><strong>Florida law prohibits the payment of prizes to persons under the age of 18. 
					By entering my ticket number into the drawing, I affirm that I am 18 years of age or older.</strong></p>
					
					<p>If you are having trouble entering your ticket number, please refer to the <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> section or send an email to <a href="http://www.floridalottery.com/help/contact">ask@flalottery.com</a>
					for assistance. Remember to only use numbers when entering your ticket number and avoid dashes.
				
							<br/>
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
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><s:property value="%{familyCheck[1]}"/></td>
					<td><s:property value="%{familyCheck[2]}"/></td>
					<td><s:property value="%{familyCheck[5]}"/></td>
					<td><s:property value="%{familyCheck[10]}"/></td>
				</tr>
			</tbody>
		</table>
		
		<p style="text-align: center;"><s:property value="%{familyTicketMessage}"/></p>
		
		<br />
			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;" id = "myTable">
				<caption style="text-align: center; font-size: 20px;">MY HOLIDAY BLOWOUT ENTRIES</caption>
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
			<p style="text-align: center;">The number of entries awarded depends on the price point of the non-winning Scratch-Off ticket or Draw game ticket submitted into the promotion. </p>
			<div>
			<h2 style="text-align: center;">Redeem Coupon</h2>
				<p style="text-align: center;">If you have been awarded a coupon please click on the coupon status to print and redeem your coupon.</p>
			</div>
			<div><p>&nbsp;</p>
			</div>
			<div><p>&nbsp;</p>
			</div>
			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;">
				<caption style="text-transform: uppercase; text-align: center; margin: -40px 0 10px 5px; font-size: 16px;">My Holiday Blowout Coupons</caption>
				
				<thead>
					<tr>
						<th><strong>Coupon Number</strong></th>
						<th><strong>Coupon Value</strong></th>
						<th><strong>Coupon Status</strong></th>
						<th style="background-color: rgb(0,0,0);"><strong>Date Awarded</strong></th>
<%-- 						<th style="background-color: rgb(0,0,0);"><strong>Redeem on new page</strong></th> --%>
				</thead>
				<tbody>
					<s:if test="%{couponList.isEmpty()}">
						<tr>
							<td class="row_2" colspan="5">No entries submitted.</td>
						</tr>
					</s:if>
					<s:else>
						<s:iterator value="couponList">
							<tr>
								<td><s:property value="%{couponNum}" /></td>
								<td>$<s:property value='%{couponVal}' /></td>
								
								<s:if test="%{couponStatus.equals('Not Redeemed')}">
										<td><a class="couponLink" href="coupon_2024-holidayBlowout?id=<s:property value='%{couponID}'/>">Redeem Now!</a></td>
								</s:if>	
								<s:else>
										<td><a class="couponLink" href="coupon_2024-holidayBlowout?id=<s:property value='%{couponID}'/>">Coupon Redeemed!</a></td>
								</s:else>
								<td><s:property value='%{couponDateDisplay}'/></td>
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

<script type="text/javascript">
     function sortFunction(id){
     	
     	switch(id){
     		case '1': 
     				document.getElementById("sort2").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort3").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort4").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort5").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				
					var x = document.getElementById("sort1").src;
					x.includes('up.png')? document.getElementById("sort1").src = "https://secondchance.flalottery.com/images/png/down.png" : document.getElementById('sort1').src = "https://secondchance.flalottery.com/images/png/up.png";
					break;
					
					
			case '2': 
					document.getElementById("sort1").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort3").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort4").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort5").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				
					var x = document.getElementById("sort2").src;
					x.includes('up.png')? document.getElementById("sort2").src = "https://secondchance.flalottery.com/images/png/down.png" : document.getElementById('sort2').src = "https://secondchance.flalottery.com/images/png/up.png";
					break;
			case '3': 
     				document.getElementById("sort1").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort2").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort4").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort5").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				
					var x = document.getElementById("sort3").src;
					x.includes('up.png')? document.getElementById("sort3").src = "https://secondchance.flalottery.com/images/png/down.png" : document.getElementById('sort3').src = "https://secondchance.flalottery.com/images/png/up.png";
					break;
					
					
			case '4': 
					document.getElementById("sort1").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort2").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort3").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort5").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				
    				var x = document.getElementById("sort4").src;
					x.includes('up.png')? document.getElementById("sort4").src = "https://secondchance.flalottery.com/images/png/down.png" : document.getElementById('sort4').src = "https://secondchance.flalottery.com/images/png/up.png";
					break;
					
					
			case '5': 
					document.getElementById("sort1").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort2").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort3").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				document.getElementById("sort4").src = "https://secondchance.flalottery.com/images/gif/transparent.gif";
    				
					var x = document.getElementById("sort5").src;
					x.includes('up.png')? document.getElementById("sort5").src = "https://secondchance.flalottery.com/images/png/down.png" : document.getElementById('sort5').src = "https://secondchance.flalottery.com/images/png/up.png";
					break;

			
     	}
     
     };
     
</script>
     	<br>
     	<p class = "hours">TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER PER DAY.<br>
TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.<p>
     	<br>
     	<br>
     	</p>
     	
 </div>
