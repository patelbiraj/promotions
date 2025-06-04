<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="09/25/2023 00:00:01" pattern="M/d/y H:m:s" />
<img src="promotions/2023/images/png/WEB_Raffle$500Promotion_WinnersPage.png" width="960" height="240" alt="Fuel For Life Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a class="Raffle" href="rules_2023-Raffle"><span style="margin-right:140px;">Rules</span></a></li>
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li class="last"><a class="Raffle" href="winners_2023-Raffle"><span style="margin-left:140px;">Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive last"><span style="margin-left:140px;">Winners</span></li>
		</s:else>
	</ul>
</div>
