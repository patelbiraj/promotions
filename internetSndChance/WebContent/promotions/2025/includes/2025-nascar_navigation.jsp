<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<joda:parseDateTime var="Winner" value="8/5/2024 6:00:00" pattern="M/d/y H:m:s" />
<img src="promotions/2025/images/png/nascar-2025-web-banner.png" width="960" height="240" alt="Nascar Promotion"/>

<div id="gameNav">
	<ul>
		<li class="first"><a href="howToPlay_2025-nascar"><span>How to Play</span></a></li>
		
		<li><a href="prizes_2025-nascar"><span>Prizes</span></a></li>
		
		<li class="inactive"><span>Rules</span></li>
		<%-- <li><a href="rules_2025-nascar"><span>Rules</span></a></li> --%>
		
		<li><a href="entry_2025-nascar"><span>Ticket Entry</span></a></li>
				
		<s:if test="%{#attr.Winner.isBefore(@org.joda.time.DateTime@now())}">
			<li><a href="winners_2025-nascar"><span>Winners</span></a></li>
		</s:if>
		<s:else>
			<li class="inactive"><span>Winners</span></li>
		</s:else>
			
		<li class = "last inactive"><span>How to Claim</span></li>	
		<%-- <li class = "last"><a href = "howToClaim_2025-nascar"><span>How to Claim</span></a></li> --%>
		
	</ul>
</div>
