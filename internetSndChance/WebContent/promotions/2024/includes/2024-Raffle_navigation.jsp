<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="9/30/2024 08:00:00" pattern="M/d/y H:m:s" />

<img src="promotions/2024/images/png/$500Raffle_BonusPlay_HeaderBanner.png" width="960" height="240" alt="Raffle Promotion"/>

<div id="gameNav">
	<ul>
		<li class = "first"><a href="rules_2024-Raffle"><span style = "margin: 0px 75px 0px 75px;">Rules</span></a></li>
		<li><a href = "howToClaim_2024-Raffle"><span style = "margin: 0px 75px 0px 75px;">How to Claim</span></a></li>
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li class = "last"><a href="winners_2024-Raffle"><span style = "margin: 0px 75px 0px 75px;">Winners</span></a></li>
		</s:if>
		<s:if test="%{#attr.Winner.isAfter(@org.joda.time.DateTime@now())}">
			<li class="inactive last"><span style = "margin: 0px 75px 0px 75px;">Winners</span></li>
		</s:if>		
	
	</ul>
</div>
