<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<div id="main" class="superGrouper entry">
	<div id="topBanner">
		<jsp:include page="../2018/includes/2018-superGrouper_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <div class="content_red">
                    <s:property escapeHtml="false" value="messages.message" />
                    <s:fielderror fieldName="form.ticketNumber" escape="false" />
               </div>
               <h1>TICKET ENTRY</h1>
			  <p>To enter your <strong>LUCKY MONEY<sup>&trade;</sup></strong> ticket in the $400,000 Super GROUPER<sup>&reg;</sup> Promotion:</p>
               <div id="sampleTicket">
                    <img src="promotions/2018/images/jpg/superGrouper-ticketSample.jpg" alt="Super Grouper Sample Ticket" width="282" height="458" align="left" />
               </div>
               <ol>
                    <li>Enter the 19-digit LUCKY MONEY<sup>&trade;</sup> ticket number in the box below to earn one entry into the $400,000 Super GROUPER<sup>&reg;</sup> Promotion. Only LUCKY MONEY tickets from GROUPER purchases are eligible. Tickets can be entered beginning one day after the GROUPER purchase.</li>
                    <li>Please confirm the number you entered matches the LUCKY MONEY ticket number before clicking submit. <strong> All entries are final. </strong> </li>
                    <li>Click <strong>SUBMIT</strong></li>
               </ol>
    <!--Beginning of Promotion Entry Form-->        
   <s:if test="%{promotion.promotionInterval.containsNow()}">
		<s:form id="ticketEntryForm" action="entry_2018-superGrouper">	
		<p><s:submit name="form.submitFlag" value="Submit" cssClass="ticketSubmit translate" /></p>	
		<p><s:textfield name="form.ticketNumber" id="ticketNumber" maxlength="%{promotion.allowedDigits.last()}" cssClass="tktNumber" /></p>
		
		<p class="ticketNumberNote"><span>Your Entry Number</span></p>       
			
		</s:form>
	</s:if>			  
     <!--End of Promotion Entry Form--> 
     
    <!--Beginning of Promotion Ending Message-->    
               <s:else>
                  <h3 class="promoEnded">Promotion has ended.<br />Ticket Entry is now closed.</h3>
               </s:else>
     <!--End of Promotion Ending Message-->               
				<p><span><strong>Florida law prohibits the payment of prizes to persons under the age of 18. By entering my LUCKY MONEY ticket in the drawing, I affirm that I am 18 years of age or older.</strong></span></p>
				<p>Once you have entered a LUCKY MONEY ticket number, you will find a record of the entries at the bottom of this page. You may enter as many valid tickets as you wish, but any single ticket may only be entered once.</p>
				<p>If you experience difficulty when submitting your entry number, please click on the <a href="https://secondchance.flalottery.com/secondchance/FAQs">FAQs</a> tab or e-mail <a href="http://www.flalottery.com/contactUs">asklott@flalottery.com</a>. The number entered must be <strong>19 digits</strong>. Please enter numbers only. Do not include dashes.</p>

			   <hr/>
			   
			     <h2 class="tktEntry">My LUCKY MONEY Ticket Entry List <!--<span><s:property escapeHtml="false" value="%{promotion.name}" /></span> <s:property value="messages.h1Title" />--> </h2>
         
               <table class="dataTbl tktEntry" style="width: 100%; ">
                    <thead>
					<tr class="row_head">
						<th><strong>Ticket Entry Number</strong></th>
						<th><strong>Date Entered</strong></th>
						<th><strong>Draw Date</strong></th>
				</thead>
				<tbody>
					<s:if test="%{ticketEntryList.isEmpty()}">
					<tr class="row_2">
						<td colspan="3">There are no tickets entered for this second chance promotion.</td>
					</tr>
					</s:if>
					<s:else>
						<s:iterator value="ticketEntryList" >
							<s:if test="%{cancelledTicket}">
								<s:set var="disqualified" value="true" /> 
								<tr class="cancelled">
									<td><s:property value="%{ticketNumberDisplay}" /><strong class="redAsterisk">&nbsp;*</strong></td>
									<td><s:property value="%{createDateFormatted}" /></td>
									<td><s:property value="%{drawDateFormatted}" /></td>
								</tr>
							</s:if>
							<s:else>
								<tr>
									<td><s:property value="%{ticketNumberDisplay}" /></td>
									<td><s:property value="%{createDateFormatted}" /></td>
									<td><s:property value="%{drawDateFormatted}" /></td>
								</tr>
							</s:else>
						 </s:iterator>	
					</s:else>
				</tbody>
               </table>
			<s:if test="%{#disqualified}">
				<p class="disqualifiedNote"><span class="redAsterisk">*</span>This ticket has been disqualified.</p>
			</s:if>
<div style="clear: both;">
     <s:if test="%{#attr.messageRemoveDateTime.isAfter(@org.joda.time.DateTime@now())}">
          <jsp:include page="../../includes/alertNotice.jsp"/>
     </s:if>
</div>
			
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
	
	
