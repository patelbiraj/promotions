<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

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

<style>
h2.popUpTitle{
	text-align: center;
}

div.popUp {
	position: fixed;
	left: 25vw;
	top: 15%;
	width: 735px;
	background-color: #fff;
	visibility: hidden;
	border: 2px solid; 
}

button.close {

	position: relative;
	float: right;
	width: 55px;
	font-size: 20px;
	background-color: rgb(213, 86, 84);
	color: #fff;
	border-radius: 8px;
	border: 0;
	cursor: pointer;
}

#popUpNum {
	text-align: center;
	margin-top: -20px;
}
</style>

<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2023/includes/2023-Xtreme_navigation.jsp"></jsp:include>
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
						<p><strong>To enter your non-winning X THE CASH Scratch-Off ticket into the Xtreme Cash Bonus <br />Play promotion:</strong></p>
						<ol>
							<li>Scratch off the latex covering at the bottom of your non-winning ticket to reveal the <br />27-digit ticket number. [24-digits, plus the 3-digit pin]</li>
							<br>
							<li>Scan your ticket using the Florida Lottery mobile app or manually enter your ticket number in the field provided below.</li>
							<br>
				            <li>Please confirm the number you entered matches the ticket number on your ticket before <br>clicking submit.</li>
				            <br>
							<li>Click <strong>SUBMIT</strong>.</li>
						</ol>
						<s:form id="ticketEntryForm" action="entry_2023-Xtreme">
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
								
							</s:form>
							<br /><br /><br />
				 	</div>
				 	<!--Beginning of Promotion Entry Form-->
					<div id="tickets">
						<div class="tkt2" >
							<img src="promotions/2023/images/jpg/sample_ticket_Xtreme2.jpg"
								alt="Year For Life Ticket" width="324" height="553">
						</div>
					</div>
					<div class="postInput">
						<p><strong>Florida law prohibits the payment of prizes to persons under the age of 18. 
					By entering my ticket number into the drawing, I affirm that I am 18 years of age or older.</strong></p>
					<p>If you experience difficulty when submitting your ticket number, please visit the <a href="FAQs">FAQs</a> section
					or e-mail <a href="https://www.floridalottery.com/contactUs">ask@flalottery.com</a>. The ticket number entered must be 24 digits. Please enter numbers
					only. Do not include dashes.</p>
					<p class="postTime"><strong>TICKETS CAN ONLY BE ENTERED BETWEEN THE <br>HOURS OF 6:00 A.M. AND 11:59 P.M., ET.
					<br>ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER DAY.</strong></p>
					<p>After submitting your initial ticket, you're all set to make another entry. The list of your tickets and 
					corresponding entries can be found at the bottom of this page. </p>
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
				<caption style="text-transform: uppercase; text-align: left; margin: -40px 0 10px 5px; font-size: 16px;">My XTREME CASH Bonus Play Entries</caption>
				<thead>
					<tr>
						<th><strong>Ticket Number</strong></th>
						<th><strong>Entries Awarded</strong></th>
						<th><strong>Bonus Entries Earned</strong></th>
						<th><strong>Date Entered</strong></th>
						<th style="background-color: rgb(0,0,0);" ><strong>Draw Date</strong></th>
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
			<div>
			<h2>Redeem Coupon</h2>
				<p>If you have been awarded a coupon please click on the coupon status to print and redeem your coupon.</p>
			</div>
			<div><p>&nbsp;</p>
			</div>
			<div><p>&nbsp;</p>
			</div>
			<table class="dataTbl"
				style="width: 100%; margin-left: 0px;">
				<caption style="text-transform: uppercase; text-align: left; margin: -40px 0 10px 5px; font-size: 16px;">My XTREME Bonus Play Coupons</caption>
				
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
								<td><s:property value='%{couponVal}' /></td>
								
								<s:if test="%{couponStatus.equals('Not Redeemed')}">
<%-- 									<td id="submit"><button class="submit" onclick="popUpBut(<s:property value='%{couponVal}'/>, '<s:property value='%{filename}'/>', Redeem Now!', '<s:property value='%{couponID}'/>')" ><s:property value='%{couponStatus}'  /></button></td> --%>
										<td><a class="couponLink" href="coupon_2023-Xtreme?id=<s:property value='%{couponID}'/>">Redeem Now!</a></td>
								</s:if>	
								<s:else>
<%-- 									<td id="submit"><button class="submit"  onclick="popUpBut(<s:property value='%{couponVal}'/>, '<s:property value='%{filename}'/>', 'Coupon Redeemed!', '<s:property value='%{couponID}'/>')" ><s:property value='%{couponStatus}' /></button></td> --%>
										<td><a class="couponLink" href="coupon_2023-Xtreme?id=<s:property value='%{couponID}'/>">Coupon Redeemed!</a></td>
								</s:else>
								<td><s:property value='%{couponDateDisplay}'/></td>
<%-- 								<td><a href="coupon_2023-Xtreme?id=<s:property value='%{couponID}'/>">Click to new page</a> </td> --%>
							</tr>
						</s:iterator>
					</s:else>
				</tbody>
			</table>
		<div id="window" class="popUp">
			<button class="close" onclick="popUpClose()">Back</button>
				<h2 style="text-align: center;" id="popUpTitle"></h2>
				<div>
					<div style="background-color: rgb(211, 31, 56); color:#fff; text-align: center;">
						<p style="margin-left: 10%; margin-right: 10%; font-weight: bold">Retailers: Please verify cash on hand <span style="font-weight: bold; text-decoration: underline;">BEFORE</span>
						scanning the coupon. Once scanned it must be paid out in full.</p>
					</div>
					<div style="float: left; width: 50%;">
						<p style="margin-left: 20px;">Redeem this coupon at any Florida Lottery retailer by 06/06/2024, and receive a $100 Cash Prize.
						Coupon can only be used one time. Must be 18 or older to play. Play Responsibly.</p>
					</div>
					<div>
						<img src="https://secondchance.floridalottery.com/images/png/LotteryLogo.png">
					</div>
					<div>
					<div style="text-align: center;">
						<img onload="changeCouponDimension('Small')" src="https://secondchance.floridalottery.com/images/png/LotteryLogo.png" width="auto;" id="couponImg" alt="imageCoupon">
					</div>
						
						<p id="popUpNum"></p>
						<p id="popUpStat"></p>
						<ol>
							<li>Clear any TOTAL from your screen</li>
							<li>Scan the <a id="link">printed</a> coupon via the barcode scanner (Do not insert in the reader channel) Coupons presented
							on a cell phone can also be scanned via the barcode scanner</li>
							<li>Confirm the transaction on the screen</li>
							<li>if redeeming a cash prize coupon, a coupon receipt will print for the cash prize, which you provide to the player with the
							cash prize amount indicated.</li>
							<li>Please provide the player the receipt and the prize</li>
						</ol>
<!-- 						<button class="couponButtonDimension" onclick="changeCouponDimension('Big')">Big Image</button> -->
<!-- 						<button onclick="changeCouponDimension('Medium')">Medium Image</button> -->
<!-- 						<button onclick="changeCouponDimension('Small')">Small Image</button> -->
					</div>	
				</div>
			</div>
		</div>	
	</div>
</div>
<script text="text/javascript" src="js/couponDisplay.js">


</script>