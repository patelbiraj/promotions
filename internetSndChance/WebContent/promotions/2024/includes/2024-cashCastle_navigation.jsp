<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="04/17/2024 08:00:01" pattern="M/d/y H:m:s" />
<img src="promotions/2024/images/png/CashCastle_BonusPlayPages_Header.png" width="960" height="240" alt="Cash Castle Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a href="howToPlay_2024-cashCastle"><span>How to Play</span></a></li>
		<li><a href="prizes_2024-cashCastle"><span>Prizes</span></a></li>
		<li><a href="rules_2024-cashCastle"><span>Rules</span></a></li>
		<li><a href="entry_2024-cashCastle"><span>Ticket Entry</span></a></li>		
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li><a href="winners_2024-cashCastle"><span>Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive"><span>Winners</span></li>
		</s:else>		
		<li class="last"><a href="howToClaim_2024-cashCastle"><span>How to Claim</span></a></li>
	</ul>
</div>
