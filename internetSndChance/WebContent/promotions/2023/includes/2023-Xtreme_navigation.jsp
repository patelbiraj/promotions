<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="02/08/2024 06:00:01" pattern="M/d/y H:m:s" />
<img src="promotions/2023/images/png/XTREMECASHBonusPlay_BonusPlayPages_Header_2.png" width="960" height="240" alt="Xtreme Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a href="howToPlay_2023-Xtreme"><span>How to Play</span></a></li>
		<li><a href="prizes_2023-Xtreme"><span>Prizes</span></a></li>
		<li><a href="rules_2023-Xtreme"><span>Rules</span></a></li>
		<li><a href="entry_2023-Xtreme"><span>Ticket Entry</span></a></li>
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li><a href="winners_2023-Xtreme"><span>Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive"><span>Winners</span></li>
		</s:else>
		<li class="last"><a href="howToClaim_2023-Xtreme"><span>How to Claim</span></a></li>
	</ul>
</div>
