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
<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2025/includes/2025-forLife_navigation.jsp"></jsp:include>
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
						<p>Follow the instructions below to enter your non-winning<strong> WEEK FOR LIFE</strong> 
						Scratch-Off tickets ($1, $2, $5, $10, $20) and any <strong>CASH4LIFE</strong> Draw game ticket into the <strong>FOR LIFE BONUS PLAY:</strong></p>
						<ol>
							<li>
								To view the 27-digit ticket number [24-digits, plus a 3-digit pin] on your non-winning Scratch-Off ticket, scratch off the latex coating at the bottom
								of the ticket, or locate the 19-digit CASH4LIFE Draw game number.
							</li>
							
							<li>
								Enter your ticket number manually in the space provided below or use the Florida Lottery mobile app to scan your tickets.
							</li>
							
				            <li>
					            Before hitting submit, please make sure the number you typed matches the ticket number on your ticket.
				            </li>
						</ol>
						
						<!-- Start of Promotion Entry Form -->
						
						<s:form id="ticketEntryForm" action="entry_2025-forLife">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="24" minlength="19"  cssClass="tktNumber" />
									<s:textfield name="form.ticketNumberPin" id="ticketNumberPin" maxlength="3" minlength="3" cssClass="tktNumberPin" />
									<s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
								</p>
								<p class="ticketNumberNote"><span style="margin-right:72px">Ticket Number</span><span style="margin-left:50px">3-Digit Pin</span><br>
								<!-- <p id="status" style="color: #c60c30; font-weight: bold; font-size: 98%;"></p> -->
								<p class="promoCode" >
									<s:if test='%{#request.fbPromoCode != null and !#request.fbPromoCode}'>
										<s:textfield name="form.fbPromoCode" id="fbPromoCode" cssClass="promoCode" style="width:182px; margin-left: 20px;"/>
										<br>
										<span class="promoCodeNote" style="margin-left: 20px;">Promo Code</span>
									</s:if>
								</p>
								 <label style="font-size: 13px; color: red;" id="error_label_tn"></label><br>
								<label style="font-size: 13px; color: red;" id="error_label_pin"></label> 
								
								
							</s:form>
							
							<div id="sampleTicket" style="">
								<div class="tkt2" style = "margin-right: 75px; " >
									<img src="promotions/2025/images/png/WEB-W4L-Ticket-2.png"
										alt="Gold Rush Ticket Sample" width="450" height="300">
								</div>
							</div>
						
						<br><br>
						<p>
							<strong>
								Florida law prohibits the payment of prizes to persons under the age of 18. By entering my ticket number into the drawing, I affirm that I am 18 years of age or older.
							</strong>
						</p>
						<p>
							If you are having trouble entering your ticket number, please refer to the  
							<a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> 
							or send an email to 
							<a href="http://www.floridalottery.com/help/contact">ask@flalottery.com</a> for assistance.
							<br />
							<b>Remember only to use numbers when entering your ticket number and avoid dashes.</b>
						</p>
						<br>
				 	</div>
				</div>
			</s:if>				 	
			
    		<!--Start of Promotion Ending Message-->    
			<s:else>
				<h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
			</s:else>
     		<!--End of Promotion Ending Message-->
     		
			<br>
			<h2>MY For Life Entries</h2>
			<!-- Start of the Ticket Entry Table -->
			<table class="dataTbl" style="width: 100%; margin-left: 0px;" id = "myTable">
				<thead>
					
					<tr>
						<th class = "entry" id = 1 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(1)')" style="cursor:pointer"><strong>Ticket Number</strong><img id="sort1" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 2 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(2)')" style="cursor:pointer"><strong>Entries Awarded</strong><img id="sort2" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt="" /></th>
						<th class = "entry" id = 3 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(3)')" style="cursor:pointer"><strong>Bonus Entries Earned</strong><img id="sort3" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 4 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(4)')" style="cursor:pointer"><strong>Date Entered</strong><img id="sort4" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 5 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(5)')" style="cursor:pointer"><strong>Draw Date</strong><img id="sort5" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
					</tr>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
						<tr>
							<td class="row_2" colspan="5">No entries submitted.</td>
						</tr>
					</s:if>
					<s:else>
						<s:iterator value="ticketEntryList">
							<s:set var="entriesReceived" value="%{promotion.getGames().get(gameNumber).getWeight()}" />
							<tr class="item">
								<td><s:property value="%{ticketNumberDisplay}" /><s:label value="**********" /></td>
								<td><s:property value='%{ticketWeight}' /></td>	
								<td><s:property value="%{bonusPoint}" /></td>							
								<td><s:property value="%{createDateFormatted}" /></td>
								<td><s:property value="%{drawDateFormatted}" /></td>
							</tr>
						</s:iterator>
					</s:else>
				</tbody>
			</table>
			<!-- End of the Ticket Entry Table -->
			
			<div><p>&nbsp;</p></div>
			
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNoteLotto">
					<span class="redAsterisk">*</span>This ticket has been disqualified.
				</p>
			</s:if>
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
     	<br>
     	<p class = "hours">
     		TICKET ENTRIES WILL BE LIMITED TO 200 PER PLAYER PER DAY.<br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 AM AND 11:59 PM ET.
		<p>
     	<br>
     	<br>
     	</p>	
 </div>
