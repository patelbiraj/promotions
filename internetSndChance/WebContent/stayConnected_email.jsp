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
		<p>Please complete the form below to receive daily winning number and jackpot alert emails for selected Florida Lottery games. You may also elect to receive special emails about new games, upcoming promotions, special events, and announcements from the Florida Lottery. Check the boxes below and click "Submit" to begin receiving emails. To unsubscribe, simply uncheck any selected boxes and click "Submit."</p>
		<p><em>Please note</em>: Winning number emails are sent three times a day at approximately 2:20 p.m. for midday drawings, 10:00 p.m for evening drawings, and 4:30 a.m. for night drawings (Eastern Time Zone).</p>
		<s:form action="emailNotificationPrefs">
			<fieldset style="width: 900px;">
				<div id="nightDraws">
					<h3>Night Drawings</h3>
					<p style="margin-bottom: 0;">Winning numbers, jackpot alerts and game news for:</p>
					<div>
						<s:checkbox name="form.lotto" id="lotto" cssClass="checkbox" tabindex="11" />
						<label for="form.lotto"><img src="images/png/LottoTMLogo_86x54.png" width="86" height="54" alt="Florida Lotto" /><span><strong>FLORIDA LOTTO<sup>&#8482;</sup> </strong><br />Drawing: Wed. &amp; Sat. at 11:15 p.m.</span></label>
					</div>
					<div>
						<s:checkbox name="form.powerball" id="powerball" cssClass="checkbox" tabindex="12" />
						<label for="form.powerball"><img src="images/png/PowerballDPLogo_105.png" width="105" height="29" alt="Powerball" /> <span><strong>POWERBALL<sup>&#174;</sup> </strong><br />Drawing: Mon., Wed. &amp; Sat. at 10:59 p.m.</span></label>
					</div>
					<div>
						<s:checkbox name="form.megaMillions" id="megaMillions" cssClass="checkbox" tabindex="13" />
						<label for="form.megaMillions"><img src="images/png/MegaMillionsLogo2025.png" width="105" height="43" alt="Mega Millions" /><span><strong>MEGA MILLIONS<sup>&#174;</sup></strong><br />Drawing: Tue. &amp; Fri. at 11:00 p.m.</span></label>
					</div>
					
					<div>
						<s:checkbox name="form.jackpotTriplePlay" id="jackpotTriplePlay" cssClass="checkbox" tabindex="14" />
						<label for=form.jackpotTriplePlay><img src="images/png/stayConnectedJTPLogo.png" width="100" height="55" alt="Jackpot Triple Play" /><span><strong>JACKPOT TRIPLE PLAY<sup>&#8482;</sup></strong><br/>Drawing: Tue. &amp; Fri. at 11:15 p.m.</span></label>
					</div>
					<s:if test="%{#attr.fantasy5.isBefore(@org.joda.time.DateTime@now())}">
					<div>
						<s:checkbox name="form.fantasy5" id="fantasy5" cssClass="checkbox" tabindex="15" />
						<label for="form.fantasy5"><img src="images/png/stayConnectedFantasy5MiddayLogo.png" width="105" height="37" alt="Fantasy 5 with EZmatch" /><span><strong>FANTASY 5<sup>&#174;</sup></strong><br />Drawing: Daily at 11:15 p.m.</span></label>
					</div>
					</s:if>
					<s:else>
						<div>
						<s:checkbox name="form.fantasy5" id="fantasy5" cssClass="checkbox" tabindex="15" />
						<label for="form.fantasy5"><img src="images/png/stayConnectedFantasy5Logo.png" width="105" height="37" alt="Fantasy 5 with EZmatch" /><span><strong>FANTASY 5<sup>&#174;</sup></strong><br />Drawing: Daily at 11:15 p.m.</span></label>
					</div>
					</s:else>
					 <div>
						<s:checkbox name="form.cash4life" id="cash4life" cssClass="checkbox" tabindex="16" />
						<label for="form.cash4life"><img src="images/png/c4life_logo.png" width="105" height="37" alt="Cash4Life" /><span><strong>CASH 4 LIFE<sup>&#174;</sup></strong><br />Drawing: Daily at 9:00 p.m.</span></label>
					</div>
					 <div>
						<s:checkbox name="form.cashPopLateNight" id="cashPopLateNight" cssClass="checkbox" tabindex="17" />
						<label for="form.cashPopLateNight"><img src="images/png/stayConnectedCashPop.png" width="105" height="54" alt="CashPop" /><span><strong>CASH POP</strong><br />Drawing:  Daily at 11:45 p.m. </span> </label>
					</div>					
				</div>

				<div id="midDraws">
					<h3>Midday Drawings</h3>
					<p style="margin-bottom: 0;">Daily midday winning numbers and game news for:</p>
					<div>
						<s:checkbox name="form.cashPopMidday" id="cashPopMidday" cssClass="checkbox" tabindex="7" />
						<label for="form.cashPopMidday"> <img src="images/png/stayConnectedCashPop.png" width="105" height="54" alt="CashPop"  /> 
				    	<span><strong>Cash Pop</strong><br />Drawing:  Daily at <br>8:45 a.m. &amp; 11:45 a.m.</span></label>	
					</div>					
					
					<div>
						<s:checkbox name="form.midday" id="midday" cssClass="checkbox" tabindex="3" />
						<label for="form.midday"> <img src="images/png/stayConnectedPickGamesLogo.png" width="105" height="56" alt="PICK Daily Games" /> 
						<span><strong>PICK 5 / PICK 4 / PICK 3 / PICK 2</strong><br />Drawing: Daily at 1:30 p.m.</span></label>
					</div>
					<s:if test="%{#attr.fantasy5.isBefore(@org.joda.time.DateTime@now())}">	
					<div>
						<s:checkbox name="form.fantasy5Midday" id="fantasy5Midday" cssClass="checkbox" tabindex="3" />
						<label for="form.fantasy5Midday"> <img src="images/png/stayConnectedFantasy5MiddayLogo.png" width="105" height="37" alt="Fantasy 5 Midday" /> 
						<span><strong>Fantasy 5 Midday</strong><br />Drawing: Daily at 1:05 p.m.</span></label>
					</div>
					</s:if>
				</div>

				<div id="eveDraws">
					<h3>Evening Drawings</h3>
					<p style="margin-bottom: 0;">Daily evening winning numbers and game news for:</p>
					

					<div>
						<s:checkbox name="form.cashPopEvening" id="cashPopEvening" cssClass="checkbox" tabindex="7" />
						<label for="form.cashPopEvening"> <img src="images/png/stayConnectedCashPop.png" width="105" height="54" alt="CashPop"  /> 
				    	<span><strong>Cash Pop</strong><br />Drawing:  Daily at <br>2:45 p.m. &amp; 6:45 p.m.</span></label>	
					</div>					
					<div>
						<s:checkbox name="form.evening" id="evening" cssClass="checkbox" tabindex="7" />
						<label for="form.evening"> <img src="images/png/stayConnectedPickGamesLogo.png" width="105" height="56" alt="PICK Daily Games" /> 
				    	<span><strong>PICK 5 / PICK 4 / PICK 3 / PICK 2</strong><br />Drawing:  Daily at 9:45 p.m.</span></label>	
					</div>			   
				    
				</div>

				<div id="whatIsNewDiv">		
					<s:checkbox name="form.whatIsNew" id="wn" cssClass="checkbox" tabindex="16" />			
					<label for="form.whatIsNew"><span>I would like to receive email notifications about new game offerings, upcoming promotions, Lottery special events, and announcements<br/> from the Florida Lottery.</span></label>
				</div>

				<div style="text-align: center;">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" tabindex="17" />
				</div>
			</fieldset>
		</s:form>
	</div>
</div>
<script type="text/javascript">
$("#p4m").focus();
$("label img").click(function(event) {
	event.preventDefault();
	$("#" + $(this).parents("label").attr("for")).click();
});
</script>