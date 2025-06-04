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
<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2024/includes/2024-nascar_navigation.jsp"></jsp:include>
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
						<p><strong>To participate in the NASCAR Powerball Playoff<sup>&#8482;</sup> Bonus Play with your winning and non-winning POWERBALL<sup>&reg;</sup> ticket purchased between July 1 and July 31, 2024:</p>
						<ol>
							<li>Locate the barcode at the bottom of your POWERBALL ticket and scan it using the Florida Lottery mobile app, or manually enter your ticket by typing in the 19-digit ticket number into the designated field below. 
							[Refer to Ticket Sample] </li>
							<br>
							<li>Before proceeding, verify the entered number matches the ticket number on your ticket.</li>
							<br>
				            <li>Click SUBMIT.</li>
							
						</ol>
						<s:form id="ticketEntryForm" action="entry_2024-nascar">
								<p>
									<s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="19" cssClass="tktNumber" minlength="19"/>		
									<p class="ticketNumberNote"><span>Ticket Number</span>
									<br>
									<br>
								</p>
								<p>
									<s:submit name="form.submitFlag" value="Submit" id="submit" cssClass="ticketSubmit translate" onclick="checkMobileEntry();"/>
									<br>
							
								</p>
								
								
								<br>
								<br>
								<p><strong>Florida law prohibits the payment of 
									prizes to persons under the age of 18. 
									<br> By entering my ticket number into 
									the drawing, I affirm that I am 18 years of age or older.
									</strong>
								</p>
								<p>If you encounter difficulty submitting your  
									 ticket number, please refer to the  <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a>  
									<br>section or email  <a href="http://www.floridalottery.com/help/contact">ask@flalottery.com</a>.
									<br>
									<br><strong>Ensure the ticket number entered consists 
									of 19 digits, using numbers <br>exclusively 
									 without dashes.</strong>
								</p>
								
								
								<p id="status" style="color: #c60c30; font-weight: bold; font-size: 98%;"></p>
								
							</s:form>
				 	</div>
				 	
				 	<!--Beginning of Promotion Entry Form-->
					<div id="tickets">
						<div class="tkt1" >
						<br>
							<img src="promotions/2024/images/png/powerballticketbonusplay.png"
								alt="Florida Lotto Ticket Sample" width="200" height="361">
						</div>
						
					</div>
				</div>
				
				<p class="hours"><strong>ENTRIES WILL BE LIMITED TO 200 TICKETS PER PLAYER, PER DAY.</strong><br>TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET. <br></p>
			
		
			</s:if>
			<!--End of Promotion Entry Form-->
    <!--Beginning of Promotion Ending Message-->    
			<s:else>
			   <h3 class="promoEnded">Promotion has ended.<br />Ticket  Entry is now closed.</h3>
			</s:else>
     <!--End of Promotion Ending Message-->

			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;" id = "myTable">
				<caption style="text-align: left; font-size: 20px;">MY NASCAR Powerball Playoff BONUS PLAY ENTRIES</caption>
				<thead>
					<tr>
						<th class = "entry" id = 1 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(1)')" style="cursor:pointer"><strong>Ticket Number </strong><img id="sort1" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 2 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(2)')" style="cursor:pointer"><strong>Entries Awarded </strong><img id="sort2" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt="" /></th>
						<th class = "entry" id = 3 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(3)')" style="cursor:pointer"><strong>Date Entered </strong><img id="sort3" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
						<th class = "entry" id = 4 onclick="sortFunction(this.id); w3.sortHTML('#myTable', '.item', 'td:nth-child(4)')" style="cursor:pointer"><strong>Draw Date </strong><img id="sort4" src="https://secondchance.flalottery.com/images/gif/transparent.gif" alt=""/></th>
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