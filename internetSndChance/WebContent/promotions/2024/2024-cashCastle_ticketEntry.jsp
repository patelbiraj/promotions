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
			page="../2024/includes/2024-cashCastle_navigation.jsp"></jsp:include>
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
							
						<p><strong>YOU MUST ENTER A NON-WINNING $20 GOLD RUSH LEGACY SCRATCH-OFF TICKET <span style = "text-decoration:underline; font-weight: bolder;">AND</span> ANY FLORIDA LOTTO<sup>&reg;</sup> DRAW GAME TICKET PURCHASED OR RECEIVED DURING THE BONUS PLAY TO RECEIVE ENTRIES INTO THE NEXT DRAWING.
						<br><br>INDIVIDUAL TICKETS WILL BE ASSIGNED A VALUE OF ZERO UNTIL THE SET IS COMPLETED. <br>ONCE COMPLETED, ENTRIES WILL DISPLAY ONE/ONE FOR BOTH TICKETS.
						<br><br>Follow the instructions below to enter your non-winning $20 GOLD RUSH LEGACY Scratch-Off and FLORIDA LOTTO<sup>&reg;</sup> Draw game ticket into the CASH CASTLE BONUS PLAY promotion:</strong></p>
						<ol>
							<li>To view the 27-digit ticket number on your non-winning Scratch-Off ticket, scratch off the latex coating at the bottom of the ticket. 
							[24-digits, plus the 3-digit pin] or locate the 19-digit FLORIDA LOTTO Draw game ticket number. </li>
							<br>
							<li>Enter your ticket number manually in the space provided below or use the Florida Lottery mobile app to scan your tickets.</li>
							<br>
				            <li>Before hitting submit, please make sure the number you typed matches the ticket number on your ticket.</li>
							
						</ol>
						<s:form id="ticketEntryForm" action="entry_2024-cashCastle">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="24" cssClass="tktNumber" />		
									<p class="ticketNumberNote"><span>Ticket Number</span>
									<br>
									<br>
								</p>
								<p>
									<s:textfield name="form.ticketNumberPin" id="ticketNumberPin" maxlength="3" cssClass="tktNumberPin" /><span><s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
									<br>
									<span class="tktNumber">3-Digit Pin</span></span>
								</p>
								
								
								<br>
								<br>
								<p><strong>Florida law prohibits the payment of 
									<br>prizes to persons under the age of 18. 
									<br> By entering my ticket number into 
									<br>the drawing, I affirm that I am 18 
									<br>years of age or older.
									</strong>
								</p>
								<p>If you are having trouble entering your 
									<br>ticket number, please check the <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> or 
									<br>send an email to <a href="http://www.floridalottery.com/help/contact">ask@flalottery.com</a>.
									<br>
									<br><strong>Please only enter digits. Don't use any dashes.</strong>
								</p>
								
								
								<p id="status" style="color: #c60c30; font-weight: bold; font-size: 98%;"></p>
								
							</s:form>
				 	</div>
				 	
				 	<!--Beginning of Promotion Entry Form-->
					<div id="tickets">
						<div class="tkt1" >
						<br>
							<img src="promotions/2024/images/png/tktSample1.png"
								alt="Florida Lotto Ticket Sample" width="200" height="361">
						</div>
						<div class="tkt2" >
							<img src="promotions/2024/images/png/tktSample2.png"
								alt="Gold Rush Legacy Ticket Sample" width="218" height="534">
						</div>
					</div>
				</div>
				
				<p class="hours"><strong>ENTRIES WILL BE LIMITED TO 200 TICKETS PER PLAYER, PER DAY.</strong><br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET. <br></p>
				<p class="hours">You must enter a non-winning $20 GOLD RUSH LEGACY Scratch-Off ticket <span style = "text-decoration:underline; font-weight: bolder;">AND</span> any FLORIDA LOTTO<sup>&reg;</sup> Draw game ticket purchased or received during the bonus play to receive entries into the next drawing.</p>
				<p class="hours"><strong>INDIVIDUAL TICKETS WILL BE ASSIGNED A VALUE OF ZERO UNTIL THE SET IS COMPLETED. <br>ONCE COMPLETED, ENTRIES WILL DISPLAY ONE/ONE FOR BOTH TICKETS.</strong></p>
				
					
						
					
						
						
						
					
			</s:if>
			<!--End of Promotion Entry Form-->
    <!--Beginning of Promotion Ending Message-->    
			<s:else>
			   <h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
			</s:else>
     <!--End of Promotion Ending Message-->

			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;" id = "myTable">
				<caption style="text-align: left; font-size: 20px;">MY CASH CASTLE BONUS PLAY ENTRIES</caption>
				<thead>
					<tr>
						<th class = "entry" id = 1 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(1)')" style="cursor:pointer"><strong>Ticket Number </strong><img id="sort1" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 2 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(2)')" style="cursor:pointer"><strong>Entries Awarded </strong><img id="sort2" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt="" /></th>
						<th class = "entry" id = 3 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(3)')" style="cursor:pointer"><strong>Date Entered </strong><img id="sort3" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 4 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(4)')" style="cursor:pointer"><strong>Draw Date </strong><img id="sort4" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
				</thead>
				<tbody>
					<s:if test="%{ticketFamilyList.isEmpty()}">
					<tr>
						<td class="row_2" colspan="6">No entries submitted.</td>
					</tr>
					</s:if>
					<s:else>
						<s:iterator value="ticketFamilyList">
							<s:set var="entriesReceived"
								value="%{promotion.getGames().get(gameNumber).getWeight()}" />
							<tr class="item">
								<td><s:property value="%{ticketNumber}" />
									<s:label value="**********" /></td>
								<td><s:property value='%{ticketWeight}' /></td>
								<td><s:property value="%{dateCreateDisplay}" /></td>
								<td><s:property value="%{dateDrawDisplay}" /></td>
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