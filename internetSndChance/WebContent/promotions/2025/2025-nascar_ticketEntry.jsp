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
			page="../2025/includes/2025-nascar_navigation.jsp"></jsp:include>
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
						<p>
							<strong>
								To participate in the NASCAR Powerball Playoff<sup>&trade;</sup> Bonus Play with your winning and non-winning POWERBALL<sup>&reg;</sup> 
								ticket purchased between June 30 and July 31, 2025:
							</strong>
						</p>
						<ol>
							<li>
								Locate the barcode at the bottom of your POWERBALL ticket and scan it using the Florida Lottery mobile app, or manually enter your ticket by typing 
								in the 19-digit ticket number into the designated field below. [Refer to Sample Tickets] 
							</li>
							
							<li>
								Before proceeding, verify the entered number matches the ticket number on your ticket.  
							</li>
							
				            <li>
					            Click SUBMIT.
				            </li>
						</ol>
						
						<!-- Start of Promotion Entry Form -->
						<br><br><br>
						<s:form id="ticketEntryForm" action="entry_2025-nascar">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="19" minlength="19"  cssClass="tktNumber" />
									<s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
								</p>
								<p class="ticketNumberNote"><span style="margin-right:400px">19&ndash;Digit Ticket Number</span><br>				
						</s:form>
						<!-- End of Promotion Entry Form -->
						
						
						<!-- Start of Sample Tickets Images -->
						<div id="tickets">
							<div class="tkt1" >
								<img src="promotions/2025/images/png/nascar-2025-sample-tickets.png" alt="Black Friday Jackpot Ticket Sample" width="536px" height="452px">
							</div>
						</div>
						<!-- End of Sample Ticket Images -->
						
						<br><br>
						<p>
							<strong>
								Florida law prohibits the payment of prizes to persons under the age of 18. By entering my ticket into the drawing, I affirm that I am 18 years<br> of age or older.
							</strong>
						</p>
						<p>
							If you encounter difficulty submitting your ticket number, please refer to the 
							<a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> 
							or send an email to 
							<a href="http://www.floridalottery.com/help/contact">ask@flalottery.com</a>.
							Ensure the ticket number entered consists of 19 digits, using numbers exclusively without dashes.
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
			
			<!-- Start of the Ticket Entry Table -->
			<table class="dataTbl" style="width: 100%; margin-left: 0px;" id = "myTable">
				<thead>
					<tr>
						<th colspan="4" class = "title">My NASCAR Powerball Playoff Bonus Play Entries</th>
					</tr>
					<tr>
						<th class = "entry" id = 1 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(1)')" style="cursor:pointer"><strong>Ticket Number</strong><img id="sort1" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 2 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(2)')" style="cursor:pointer"><strong>Entries Awarded</strong><img id="sort2" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt="" /></th>
						<th class = "entry" id = 3 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(3)')" style="cursor:pointer"><strong>Date Entered</strong><img id="sort3" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 4 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(4)')" style="cursor:pointer"><strong>Draw Date</strong><img id="sort4" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
					</tr>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
						<tr>
							<td class="row_2" colspan="4">No entries submitted.</td>
						</tr>
					</s:if>
					<s:else>
						<s:iterator value="ticketEntryList">
							<s:set var="entriesReceived" value="%{promotion.getGames().get(gameNumber).getWeight()}" />
							<tr class="item">
								<td><s:property value="%{ticketNumberDisplay}" /><s:label value="**********" /></td>
								<td><s:property value='%{ticketWeight}' /></td>								
								<td><s:property value="%{createDateFormatted}" /></td>
								<td><s:property value="%{drawDateFormatted}" /></td>
							</tr>
						</s:iterator>
					</s:else>
				</tbody>
			</table>
			<!-- End of the Ticket Entry Table -->

			
			
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
					var x = document.getElementById("sort1").src;
					x.includes('up.png')? document.getElementById("sort1").src = "images/png/down.png" : document.getElementById('sort1').src = "images/png/up.png";
					break;	
			case '2': 
					document.getElementById("sort1").src = "images/gif/transparent.gif";
    				document.getElementById("sort3").src = "images/gif/transparent.gif";
    				document.getElementById("sort4").src = "images/gif/transparent.gif";
					var x = document.getElementById("sort2").src;
					x.includes('up.png')? document.getElementById("sort2").src = "images/png/down.png" : document.getElementById('sort2').src = "images/png/up.png";
					break;
			case '3': 
     				document.getElementById("sort1").src = "images/gif/transparent.gif";
     				document.getElementById("sort2").src = "images/gif/transparent.gif";
    				document.getElementById("sort4").src = "images/gif/transparent.gif";
					var x = document.getElementById("sort3").src;
					x.includes('up.png')? document.getElementById("sort3").src = "images/png/down.png" : document.getElementById('sort3').src = "images/png/up.png";
					break;
			case '4': 
					document.getElementById("sort1").src = "images/gif/transparent.gif";
     				document.getElementById("sort2").src = "images/gif/transparent.gif";
    				document.getElementById("sort3").src = "images/gif/transparent.gif";
    				var x = document.getElementById("sort4").src;
					x.includes('up.png')? document.getElementById("sort4").src = "images/png/down.png" : document.getElementById('sort4').src = "images/png/up.png";
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
