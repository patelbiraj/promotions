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
<script type="text/javascript">
	var page = 4;
</script>

<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2021/includes/2021-floridaJackpots_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<div class="content_red">
				<s:property escapeHtml="false" value="messages.message" />
				<s:fielderror fieldName="form.ticketNumber" escape="false" />
			</div>
			<h1>TICKET ENTRY</h1>
			<p>
				To enter your FLORIDA LOTTO<sup>&reg;</sup> or JACKPOT TRIPLE PLAY<sup>&trade;</sup>
				ticket into the Florida Jackpots Bonus Play Promotion:
			</p>
			<div id="sampleTicket">
				<img
					src="promotions/2021/images/jpg/FloridaJackpotsBonusPlaySecondChanceTicketEntry.jpg"
					alt="Florida Jackpots" width="305" height="405"
					style="padding-top: 30px;" align="left" />
			</div>
			<ol>
				<li>Locate the barcode or ticket number on your FLORIDA LOTTO
					or JACKPOT TRIPLE PLAY (See Ticket Samples).</li>
				<li>Enter your ticket number in the field provided below or
					scan the barcode using the Florida Lottery <a
					href="https://apps.apple.com/us/app/flalottery/id476160599?ls=1">
						mobile app</a>.
				</li>
				<li>Please confirm the number you entered matches the ticket
					number on your ticket before clicking submit. <span
					class="boldNote">All entries are final.</span>
				</li>
				<li>Click SUBMIT button.</li>

			</ol>

			<!--Beginning of Promotion Entry Form-->
			<s:if test="%{promotion.promotionInterval.containsNow()}">
				<s:form id="ticketEntryForm" action="entry_2021-floridaJackpots">
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
				<h3 class="promoEnded">
					Promotion has ended.<br />Ticket Entry is now closed.
				</h3>
			</s:else>
			<!--End of Promotion Ending Message-->

			<p>
				<span><strong>Florida law prohibits the payment of
						prizes to persons under the age of 18. By entering my FLORIDA
						LOTTO or JACKPOT TRIPLE PLAY ticket into the drawing, I affirm
						that I am 18 years of age or older.</strong></span>
			</p>
			<p>Once you have entered your first ticket, you are ready to
				enter again. You'll find a record of your entries at the bottom of
				this page. Enter as many valid tickets as you wish, but any single
				ticket may only be entered once into the drawing.</p>
			<p style="width: 500px;">
				If you experience difficulty when submitting your ticket number,
				please visit the <a
					href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a>
				section or e-mail <a href="http://www.flalottery.com/contactUs">asklott@flalottery.com.</a>
				The ticket number entered must be <strong>19 digits</strong>. Please
				enter numbers only. Do not include dashes.
			</p>
			<hr />

			<h2 class="tktEntry">
				My Florida Jackpot Promotion Ticket Entry List
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

			<s:if test="%{#disqualified}">
				<p class="disqualifiedNoteLotto">
					<span class="redAsterisk">*</span>This ticket has been
					disqualified.
				</p>
			</s:if>






		</div>

	</div>

</div>





