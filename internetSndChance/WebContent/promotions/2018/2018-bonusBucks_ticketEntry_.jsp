<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>

<div id="main" class="bonusBucks entry">
	<div id="topBanner">
		<jsp:include page="../2018/includes/2018-bonusBucks_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <div class="content_red">
                    <s:property escapeHtml="false" value="messages.message" />
                    <s:fielderror fieldName="form.ticketNumber" escape="false" />
               </div>
               <h1><s:property value="messages.h1Title" /></h1>
               <p>To enter your non-winning <strong>CASH4LIFE&reg; </strong> ticket in the Bonus Bucks promotion:</p>
               <div id="sampleTicket">
                    <img src="promotions/2018/images/jpg/bonusBucks-ticketSample.jpg" alt="Bonus Bucks Ticket Sample" width="385" height="456" align="left" />
               </div>
               <ol>
                    <li>Each CASH4LIFE ticket purchased in February 2018 will print with a voucher that includes a unique number. Enter the first 13 digits of your voucher serial number (Your Entry Number) on the Lottery's website to earn one entry into the CASH4LIFE Bonus Bucks promotion.</li>
                    <li>Please confirm the number you entered matches the voucher number on your voucher before clicking submit. <strong> All entries are final. </strong> </li>
                    <li>Click <strong>SUBMIT</strong></li>
               </ol>
    <!--Beginning of Promotion Entry Form-->        
   <s:if test="%{promotion.promotionInterval.containsNow()}">
		<s:form id="ticketEntryForm" action="entry_2018-bonusBucks">	
		<p><s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="%{promotion.allowedDigits.last()}" cssClass="tktNumber" /></p>
		<p class="ticketNumberNote"><span>YOUR ENTRY Number</span></p>       
		<p><s:submit name="form.submitFlag" value="Submit" cssClass="ticketSubmit translate" /></p>			
		</s:form>
	</s:if>
     <!--End of Promotion Entry Form--> 
     
    <!--Beginning of Promotion Ending Message-->    
               <s:else>
                  <h3 class="promoEnded">Promotion has ended.<br />Voucher Entry is now closed.</h3>
               </s:else>
     <!--End of Promotion Ending Message-->               
				<p><span>Florida law prohibits the payment of prizes to persons under the age of 18.<br />
				By entering my voucher number in the drawing, I affirm that I am 18 years of age or older.</span></p>
				<p>You must wait until the top of the hour after purchase to enter your voucher number.</p>
				<p>Once you have entered a voucher number, you will find a record of the entries at the bottom of this page. You may enter as many valid vouchers as you wish, but any single voucher may only be entered once.<strong> Remember: <em>Do NOT throw away the vouchers that you submit online. You must have them to claim your prizes.</em></strong></p>
				<p>If you experience difficulty when submitting your entry number, please click on the FAQs tab or e-mail <a href="http://www.flalottery.com/contactUs">asklott@flalottery.com</a>. The number entered must be <strong>13 digits</strong>. Please enter numbers only. Do not include dashes.</p>

			   <hr/>
			   
			     <h2 class="tktEntry">My CASH4LIFE Bonus Bucks Ticket Entry List <!--<span><s:property escapeHtml="false" value="%{promotion.name}" /></span> <s:property value="messages.h1Title" />--> </h2>
         
               <table class="dataTbl tktEntry" style="width: 100%; ">
                    <thead>
					<tr class="row_head">
						<th><strong>Voucher Entry Number</strong></th>
						<th><strong>Date Entered</strong></th>
						<th><strong>Draw Date</strong></th>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
					<tr class="row_2">
						<td colspan="3">There are no vouchers entered for this second chance promotion.</td>
					</tr>
					</s:if>
					<s:else>
						<s:iterator value="ticketEntryList" >
							<s:if test="%{cancelledTicket}">
								<s:set var="disqualified" value="true" /> 
								<tr class="cancelled">
									<td><s:property value="%{ticketNumber}" /><strong class="redAsterisk">&nbsp;*</strong></td>
									<td><s:property value="%{createDateFormatted}" /></td>
									<td><s:property value="%{drawDateFormatted}" /></td>
								</tr>
							</s:if>
							<s:else>
								<tr>
									<td><s:property value="%{ticketNumber}" /></td>
									<td><s:property value="%{createDateFormatted}" /></td>
									<td><s:property value="%{drawDateFormatted}" /></td>
								</tr>
							</s:else>
						 </s:iterator>	
					</s:else>
				</tbody>
               </table>
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNote"><span class="redAsterisk">*</span>This voucher has been disqualified.</p>
			</s:if>

             <p class="boldNote">HOLD ON TO YOUR VOUCHER BECAUSE IT WILL BE REQUIRED TO CLAIM A PRIZE!</p>
          </div>
     </div>
</div>

<script>
$( document ).ready(function() {
	$("#ticketEntryForm").submit(function(event){
		return validateTicketEntryForm(<s:property value="%{promotion.allowedDigits.last()}" />);
	});
});
</script>