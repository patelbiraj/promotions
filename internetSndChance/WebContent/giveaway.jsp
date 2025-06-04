<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda" %>


<joda:parseDateTime var="Xtreme2Start" value="3/11/2024 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="Xtreme2End" value="3/24/2024 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="Xtreme1Start" value="3/11/2024 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="Xtreme1End" value="3/24/2024 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="GuessTheTicket" value="12/19/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="GuessTheTicketEnd" value="2/9/2024 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="NewYearDay" value="12/19/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="NewYearDayEnd" value="1/13/2024 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="Evergreen" value="10/16/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="EvergreenEnd" value="11/03/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="TrickOrTreat" value="10/23/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="TrickOrTreatEnd" value="11/10/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="LeafPile" value="10/30/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="LeafPileEnd" value="11/16/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="HolidayCampaign" value="11/28/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="HolidayCampaignEnd" value="12/5/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="HolidayCampaign_2" value="12/5/2023 00:00:00" pattern="M/d/y H:m:s"/>
<joda:parseDateTime var="HolidayCampaignEnd_2" value="12/21/2023 00:00:00" pattern="M/d/y H:m:s"/>

<div id="main">
	<div id="mainContent">
		<h1>Social Media Giveaways</h1>
		<hr></hr>
		
		<!-- Begin Giveaways -->
			
		<s:if test="%{#attr.Xtreme1Start.isBefore(@org.joda.time.DateTime@now()) && #attr.Xtreme1End.isAfter(@org.joda.time.DateTime@now())}">
			<h2 style="font-family: 'open_sans'; font-weight: bold; color: #DB1F44;">Guess the Ticket Giveaway</h2>
			<h3 style="font-family: 'open_sans'; font-weight: normal; color: #DB1F44;"><span style="font-size: 100%; margin-bottom: 10px;">Entry Period: January 27<sup>th</sup> - February 3<sup>rd</sup></span></h3>
			<div style="margin-top: 10px; font-family: 'open_sans'; font-weight: normal;">
				<p>3 winners will each receive $50 in Home Improvement Gift Cards! The winners will be chosen on Facebook.</p>
				<p><strong>To Enter:</strong> 
				<ul>
					<li>Comment on the Facebook giveaway post the correct guess for the mystery ticket  for a chance to win!</li>
					<li>Enter by 2/4 at 11:59 PM EST</li>
					<li>Must be following our page to win</li>
					<li>Must be 18 or older &amp; live in the state of Florida to enter</li>
				</ul>
				<p>Winners will be selected by February 4th and contacted by the Lottery's social team via direct message and provided instructions on how to claim.</p>
			</div>
		</s:if>			
				
		
		
		
		<s:if test="%{#attr.GuessTheTicket.isBefore(@org.joda.time.DateTime@now()) && #attr.GuessTheTicketEnd.isAfter(@org.joda.time.DateTime@now())}">
			<h2 style="font-family: 'open_sans'; font-weight: bold; color: #DB1F44;">Guess the Ticket Giveaway</h2>
			<h3 style="font-family: 'open_sans'; font-weight: normal; color: #DB1F44;"><span style="font-size: 100%; margin-bottom: 10px;">Entry Period: January 27<sup>th</sup> - February 3<sup>rd</sup></span></h3>
			<div style="margin-top: 10px; font-family: 'open_sans'; font-weight: normal;">
				<p>3 winners will each receive $50 in Home Improvement Gift Cards! The winners will be chosen on Facebook.</p>
				<p><strong>To Enter:</strong> 
				<ul>
					<li>Comment on the Facebook giveaway post the correct guess for the mystery ticket  for a chance to win!</li>
					<li>Enter by 2/4 at 11:59 PM EST</li>
					<li>Must be following our page to win</li>
					<li>Must be 18 or older &amp; live in the state of Florida to enter</li>
				</ul>
				<p>Winners will be selected by February 4th and contacted by the Lottery's social team via direct message and provided instructions on how to claim.</p>
			</div>
		</s:if>
		


		<!-- End Giveaways -->
		
		<!-- Beware of Spam Footer -->
		<div style="margin-top: 10px; font-family: 'open_sans'; font-weight: normal;">
			<h2 style="font-family: 'open_sans'; font-weight: bold; color: #DB1F44;">Beware of Spam!</h2>
			<p>Avoid clicking links in comments.<br>Always double-check that you are engaging with the verified Florida Lottery Account.</p>
		</div>
	</div>
</div>