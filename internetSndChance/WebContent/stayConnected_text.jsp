<%@taglib uri="/struts-tags" prefix="s"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.text.*,java.util.*"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda" %>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>


<joda:parseDateTime var="PickDrawTimeChangeNow" value="07/01/2018 00:00:01" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="PickDrawTimeChangeNowEnd" value="08/05/2018 00:00:01" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="PickDrawTimeChangeNew" value="08/05/2018 00:00:02" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="fantasy5" value="03/20/2023 08:00:00" pattern="M/d/y H:m:s" />	

<div id="main">
	<div id="mainContent">
		<h1><s:property value="%{messages.h1Title}" /></h1>
		<p style="margin-bottom: 5px;">Please complete the form below to receive text messages with winning numbers of selected Florida Lottery games. You may also elect to receive text messages about new games, upcoming promotions, special events, and announcements from the Florida Lottery.</p>
		<s:form cssClass="textPreferences" action="textMessageNotificationPrefs">
			<fieldset class="textMessageNotificationPrefs1" style="float: left; width: 410px; padding-right: 30px; border-right: 1px solid #CCCCCC; margin-bottom: 0; overflow: auto;">
				<legend>
					<span class="number">1.</span> Enter and confirm your mobile number.
				</legend>
				<div class="fieldsetSubSection">
					<div class="entrySection">
						<label for="form.phone">Mobile Number:</label>
						<s:textfield name="form.phone" id="phone" size="30" maxlength="12" tabindex="3" cssErrorClass="errorMessage" />
						<p class="formHint">(United States: 555-555-5555)</p>
						<s:fielderror fieldName="form.phone" />
					</div>
				</div>
				<div class="fieldsetSubSection">
					<div class="entrySection">
						<label for="form.phoneC">Confirm Mobile Number:</label>
						<s:textfield name="form.phoneConfirm" id="phoneC" size="30" maxlength="12" tabindex="4" cssErrorClass="errorMessage" />
						<p class="formHint">(United States: 555-555-5555)</p>
						<s:fielderror fieldName="form.phoneConfirm" />
					</div>
				</div>
			</fieldset>
			<fieldset class="textMessageNotificationPrefs2" style="float: left; width: 400px;  padding-left: 41px; margin-right: -10px; margin-bottom: 0; overflow: auto;">
				<legend>
					<span class="number">2.</span> Select your service provider.
				</legend>
				<div class="fieldsetSubSection">
					<div class="entrySection">
						<label for="form.domain">Domain:</label>
						<s:select list="textMessagingProviders" name="form.domain" listValue="key" listKey="value" id="domain" tabindex="5" cssErrorClass="errorMessage"></s:select>
						<p class="formHint">If your provider is not listed, please select "Other."</p>
						<s:fielderror fieldName="form.domain" />
					</div>
				</div>
				<div class="fieldsetSubSection">
					<div class="entrySection">
						<label for="form.other">Other:</label>
						<s:textfield name="form.other" id="other" size="30" maxlength="12" tabindex="6" cssErrorClass="errorMessage" />
						<div id="otherInactive" class="hidden" style="float: right; width: 345px; height: 24px; background-color: #FBFBFB; border: 1px solid #DBDBDB;"></div>
						<label for="other" class="otherLabel" style="width: 6%; display: inline-block; font-size: 138.5%; font-weight: normal; float: left;">@</label>
						<s:fielderror fieldName="form.other" />
					</div>
				</div>
			</fieldset>
			<div class="clear" style="margin: 0; padding: 0; height: 1px; width: 100%; border-top: 1px solid #CCCCCC;"></div>
			<fieldset class="textMessageNotificationPrefs3 clear" style="width: 900px;">
				<legend>
					<span class="number">3.</span> Select the text messages that you would like to receive and click "Submit."
				</legend>
				<p>To unsubscribe from receiving text messages from the Florida Lottery, simply uncheck any selected boxes and click "Submit."</p>
				<p><em>Please note</em>: Winning number text messages are sent three times a day at approximately 2:20 p.m. for midday drawings, 10:00 p.m. for evening drawings, and 4:30 a.m. for night drawings (Eastern Time Zone). Regular text message rates apply.</p>
				<s:fielderror fieldName="form.night" />
				<div id="nightDraws">
					<label for="form.night"><h3>Night Drawings</h3> </label>
					<s:checkbox name="form.night" id="night" cssClass="checkbox" cssErrorClass="errorMessage" tabindex="9" />
					<label for="eve"> <span>Includes winning numbers for:<br /> </span></label>
					<div>
						<label for="form.night"> <img src="images/png/LOTTO-DbleTabsLogo.png" width="105" height="54" alt="Florida Lotto" /><span><strong>FLORIDA LOTTO</strong><br />Drawing: Wed. &amp; Sat. at 11:15 p.m.</span>
						</label>
					</div>
					<div>
						<label for="form.night"><img src="images/png/PowerballDPLogo_105.png" width="105" height="39" alt="Powerball" /><span><strong>POWERBALL</strong><br />Drawing: Mon., Wed. &amp; Sat. at 10:59 p.m.</span></label>
					</div>
					<div>
						<label for="form.night"> <img src="images/png/MegaMillionsLogo2025.png" width="105" height="43" alt="Mega Millions" /><span><strong>MEGA MILLIONS</strong><br /> Drawing: Tue. &amp; Fri. at 11:00 p.m.</span>
						</label>
					</div>
					
					<div>
						<label for=form.jackpotTriplePlay><img src="images/png/stayConnectedJTPLogo.png" width="100" height="55" alt="Jackpot Triple Play" /><span><strong>JACKPOT TRIPLE PLAY<sup>&#8482;</sup></strong><br/>Drawing: Tue. &amp; Fri. at 11:15 p.m.</span></label>
					</div>
					<s:if test="%{#attr.fantasy5.isBefore(@org.joda.time.DateTime@now())}">	
					<div>
						<label for="form.night"> <img src="images/png/stayConnectedTxtFantasy5MiddayLogo.png" width="105" height="56" alt="Fantasy 5 with EZmatch" /><span><strong>FANTASY 5</strong><br />Drawing: Daily at 11:15 p.m.</span> </label>
					</div>
					</s:if>
					<s:else>
					<div>
						<label for="form.night"> <img src="images/png/stayConnectedFantasy5Logo.png" width="105" height="40" alt="Fantasy 5 with EZmatch" /><span><strong>FANTASY 5</strong><br />Drawing: Daily at 11:15 p.m.</span> </label>
					</div>
					</s:else>
					
				 <div>
				 
				 
						<label for="form.night"> <img src="images/png/c4life_logo.png" width="105" height="37" alt="Cash 4 Life" /><span><strong>CASH 4 LIFE</strong><br />Drawing: Daily at 9:00 p.m.</span> </label>
					</div>
					 <div>
						<label for="form.night"><img src="images/png/stayConnectedCashPop.png" width="105" height="54" alt="CashPop" /><span><strong>CASH POP</strong><br />Drawing:  Daily at 11:45 p.m. </span> </label>
					</div>	
				</div>
									
				<div id="midDraws">
					<label for="form.midday"><h3>Midday Drawings</h3> </label>
					<s:checkbox name="form.midday" id="mid" cssClass="checkbox" cssErrorClass="errorMessage" tabindex="7" />
					<label for="mid"> <span>Includes winning numbers for:<br /> </span></label>					
					<div>
						<label for="form.midday"> <img src="images/png/stayConnectedCashPop.png" width="105" height="54" alt="CashPop"  /> 
				    	<span><strong>Cash Pop</strong><br />Drawing:  Daily at <br>8:45 a.m. &amp; 11:45 a.m.</span></label>	
					</div>	
					<div>							
						<label for="form.midday"> <img src="images/png/stayConnectedPickGamesLogo.png" width="105" height="56" alt="PICK Daily Games" />
							<span><strong>PICK 5 / PICK 4 / PICK 3 / PICK 2</strong><br />Drawing: Daily at 1:30 p.m.</span></label>
					</div>
					<s:if test="%{#attr.fantasy5.isBefore(@org.joda.time.DateTime@now())}">	
					<div>							
						<label for="form.midday"> <img src="images/png/stayConnectedTxtFantasy5MiddayLogo.png" width="105" height="56" alt="PICK Daily Games" />
							<span><strong>Fantasy 5 Midday</strong><br />Drawing: Daily at 1:05 p.m.</span></label>
					</div>
					</s:if>
				</div>

				<div id="eveDraws">
					<h3>Evening Drawings</h3>

					<s:checkbox name="form.evening" id="evening" cssClass="checkbox" cssErrorClass="errorMessage" tabindex="7" />
					<label for="form.evening"> <span>Includes winning numbers for:<br /> </span></label>							
					<div>
						<label for="form.evening"> <img src="images/png/stayConnectedCashPop.png" width="105" height="54" alt="CashPop"  /> 
				    	<span><strong>Cash Pop</strong><br />Drawing:  Daily at <br>2:45 p.m. &amp; 6:45 p.m.</span></label>	
					</div>						
					<s:if test="%{#attr.PickDrawTimeChangeNew.isBefore(@org.joda.time.DateTime@now())}">
					<div>

						<label for="form.evening"> <img src="images/png/stayConnectedPickGamesLogo.png" width="105" height="56" alt="PICK Daily Games" /> 
				    	<span><strong>PICK 5 / PICK 4 / PICK 3 / PICK 2</strong><br />Drawing:  Daily at 9:45 p.m.</span></label>	
					</div>
					</s:if>
			   
					<s:if test="%{#attr.PickDrawTimeChangeNowEnd.isAfter(@org.joda.time.DateTime@now()) && #attr.PickDrawTimeChangeNow.isBefore(@org.joda.time.DateTime@now()) }">
					<div>

						<label for="form.evening"> <img src="images/png/stayConnectedPickGamesLogo.png" width="105" height="56" alt="PICK Daily Games" /> 
						
						<span><strong>PICK 5 / PICK 4 / PICK 3 / PICK 2</strong><br />Drawing:  Daily at 7:57 p.m.</span></label>						
					</div>
					</s:if>
					
				    
				</div>			
				<div style="text-align: center;clear:both;">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" tabindex="11" />
				</div>
			</fieldset>
		</s:form>
	</div>
</div>

<script type="text/javascript">
function displayFormField() {
	var selection = $("#domain").val();
	if(selection == ""){
		$("#otherInactive").addClass("hidden");
		$("#other").removeClass("hidden");
		$(".otherLabel").css("color", "#000");
		
	}
	else {
		$("#other").val('');
		$("#other").addClass("hidden");
		$("#otherInactive").removeClass("hidden");
		$(".otherLabel").css("color", "#CCCCCC");
	}
}

displayFormField();
$("#phone").focus();
$("#domain").change(displayFormField);

$("label img").click(function(event) {
	event.preventDefault();
	$("#" + $(this).parents("label").attr("for")).click();
});
</script>