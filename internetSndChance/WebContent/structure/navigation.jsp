<%@taglib uri="/struts-tags" prefix="s"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.text.*,java.util.*,com.flalottery.secondchance.utility.*"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda" %>

<!----------------------------------------------------------------- TIMERS START --------------------------------------------------------------------------------------->

	<joda:parseDateTime var="nascar" value="6/30/2024 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="nascarEnd" value="8/1/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="holiday" value="10/28/2024 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="holidayEnd" value="1/12/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="goldRush" value="01/13/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="goldRushEnd" value="04/07/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="dailyCash" value="01/13/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="dailyCashEnd" value="03/23/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="raffle" value="04/07/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="raffleEnd" value="05/18/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="summerFun" value="05/19/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="summerFunEnd" value="06/30/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="forLife" value="04/07/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="forLifeEnd" value="08/10/2025 00:00:00" pattern="M/d/y H:m:s" />
<!------------------------------------------------------------------ TIMERS END ----------------------------------------------------------------------------------------->


<!----------------------------------------------------------------- ALCHEMY PROMOTIONS START--------------------------------------------------------------------------------------->
<%
	String gameUrl = "https://www.alchemy3dev.com/fl-symbols/app/index.html?promotion=10";
	String envType1 = RunTimeEnv.getEnvType();
	if (envType1.equals(RunTimeEnv.PROD)) {
		gameUrl = "https://www.collectwin.com/fl-symbols/app/index.html?promotion=10";
	} 
	if(session.getAttribute("promo-url") != null) {
		gameUrl = gameUrl + session.getAttribute("promo-url");
	}
%>

<%
	String gameUrl2 = "https://www.alchemy3dev.com/fl-symbols/app/index.html?promotion=9";
	String envType2 = RunTimeEnv.getEnvType();
	if (envType2.equals(RunTimeEnv.PROD)) {
		gameUrl2 = "https://www.collectwin.com/fl-symbols/app/index.html?promotion=9";
	} 
	if(session.getAttribute("promo-url") != null) {
		gameUrl2 = gameUrl2 + session.getAttribute("promo-url");
	}
%>
<!----------------------------------------------------------------- ALCHEMY PROMOTIONS END --------------------------------------------------------------------------------------->


<nav id="mainNav">
	<ul>
		<li class="promoMenu"><a href="home.do">Current Promotions</a>
			<div class="allPromotions">
		
			<!----------------------------------------------------------------------- ACTIVE PROMOTIONS START ------------------------------------------------------------------------->
				<ul>
				<s:if test="%{#attr.forLife.isBefore(@org.joda.time.DateTime@now()) && #attr.forLifeEnd.isAfter(@org.joda.time.DateTime@now())}">
					<li><a href="howToPlay_2025-forLife">For Life Bonus Play</a></li>
				</s:if> 
				<s:if test="%{#attr.nascar.isBefore(@org.joda.time.DateTime@now()) &&
								#attr.nascarEnd.isAfter(@org.joda.time.DateTime@now())}">
					<li><a href="howToPlay_2025-nascar">Nascar Promotion</a></li>
				</s:if>		
				<s:if test="%{#attr.summerFun.isBefore(@org.joda.time.DateTime@now()) && #attr.summerFunEnd.isAfter(@org.joda.time.DateTime@now())}">	
					<li class="lastPromo"><a href=<%=gameUrl %>>It's Good Summer Fun Bonus Play</a></li>
				</s:if>
				<s:if test="%{#attr.raffle.isBefore(@org.joda.time.DateTime@now()) && #attr.raffleEnd.isAfter(@org.joda.time.DateTime@now())}">
					<li class="lastPromo"><a href="howToPlay_2025-Raffle">Pick Daily Games</a></li>
				</s:if> 
				</ul>
			<!------------------------------------------------------------------------- ACTIVE PROMOTIONS END --------------------------------------------------------------------------->
				
				
					
			<!------------------------------------------------------------------------ CLOSED PROMOTIONS START -------------------------------------------------------------------------->						
				<p class="closedTitle translate">Closed Promotions</p>
				
				<s:if test="%{#attr.goldRushEnd.isBefore(@org.joda.time.DateTime@now())}">
					<ul>
						<li><a href="winners_2025-Raffle">Pick Daily Games</a></li>
						<li><a href="winners_2025-goldRush">Gold Rush Multiplier Bonus Play</a></li>
						<li><a href= <%=gameUrl2%>>Daily Cash Promotion</a></li>
						<li><a href="winners_2024-holidayBlowout">Holiday Blowout Bonus Play</a></li>
						<li><a href="winners_2024-blackFriday">Black Friday Promotion</a></li>
						<li class="lastPromo"><a href="winners_2024-Raffle">Limited Time Raffle</a></li>
					</ul>
				</s:if>
				
				<s:if test="%{#attr.dailyCashEnd.isBefore(@org.joda.time.DateTime@now()) &&
								#attr.goldRushEnd.isAfter(@org.joda.time.DateTime@now())}">
					<ul>
						<li><a href= <%=gameUrl2%>>Daily Cash Promotion</a></li>
						<li class="lastPromo"><a href="winners_2024-holidayBlowout">Holiday Blowout Bonus Play</a></li>
					</ul>
				</s:if>
				
			<!------------------------------------------------------------------------- CLOSED PROMOTIONS END --------------------------------------------------------------------------->	
					
      		</div>
    	</li>
	</ul>
</nav>