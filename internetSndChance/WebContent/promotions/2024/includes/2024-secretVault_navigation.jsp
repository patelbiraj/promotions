<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="7/25/2024 06:00:00" pattern="M/d/y H:m:s" />
<img src="promotions/2024/images/png/CashVault_Header.png" width="960" height="240" alt="Secret Vault Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a href="howToPlay_2024-secretVault"><span>How to Play</span></a></li>
		<li><a href="prizes_2024-secretVault"><span>Prizes</span></a></li>
		<li><a href="rules_2024-secretVault"><span>Rules</span></a></li>
		<li><a href="entry_2024-secretVault"><span>Ticket Entry</span></a></li>		
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li><a href="winners_2024-secretVault"><span>Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive"><span>Winners</span></li>
		</s:else>		
		<li class="last"><a href="howToClaim_2024-secretVault"><span>How to Claim</span></a></li>
	</ul>
</div>
