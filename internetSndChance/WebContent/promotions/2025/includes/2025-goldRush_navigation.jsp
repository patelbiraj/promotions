<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<!-- Winner Navigation Tab Timer Start -->
<joda:parseDateTime var="Winner" value="02/13/2025 06:00:00" pattern="M/d/y H:m:s" />
<!-- Winner Navigation Tab Timer End -->

<img src="promotions/2025/images/png/GoldRushBonusPlay_BonusPlay_headerbanner.png" width="960" height="241" alt="Gold Rush Bonus Play Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a href="howToPlay_2025-goldRush"><span>How to Play</span></a></li>
		<li><a href="prizes_2025-goldRush"><span>Prizes</span></a></li>  
		<li><a href="rules_2025-goldRush"><span>Rules</span></a></li>
		<li><a href="entry_2025-goldRush"><span>Ticket Entry</span></a></li>		
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li><a href="winners_2025-goldRush"><span>Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive"><span>Winners</span></li>
		</s:else>
		<li class="last"><a href="howToClaim_2025-goldRush"><span>How to Claim</span></a></li>
	</ul>
</div>
