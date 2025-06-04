<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="04/14/2025 14:00:01" pattern="M/d/y H:m:s" />
<img src="promotions/2025/images/png/pickraffle-headerbanner.png" width="960" height="240" alt="2025 Raffle Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a class="Raffle" href="howToPlay_2025-Raffle"><span style="">How To Play</span></a></li>
		<li><a class="Raffle" href="prizes_2025-Raffle"><span style="">Prizes</span></a></li>
		
		<li><a class="Raffle" href="rules_2025-Raffle"><span style="">Rules</span></a></li>
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li><a class="Raffle" href="winners_2025-Raffle"><span style="">Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive"><span style="">Winners</span></li>
		</s:else>
		<li class="last"><a class="Raffle" href="howToClaim_2025-Raffle"><span style="">How To Claim</span></a></li>
	</ul>
</div>
