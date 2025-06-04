<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 1;
</script>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2022/includes/2022-lottoBonus_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<h1>
				<s:property value="messages.h1Title" />
			</h1>
			<p class="text-bold">Enter the Lotto Bonus Play Promotion for the chance to win a 'LOTTO' dough!</p>
			<!--  <p>Get the chance to win a 'LOTTO' dough when you enter the Lotto
				Bonus Play Promotion!</p> --> 
			<p>
				Enter any FLORIDA LOTTO<sup>&reg;</sup> ticket purchased between
				April 11 and May 22, 2022, into the Lotto Bonus Play Promotion to earn
			    entries for the chance to win amazing cash 
				and gift cards prizes! Entries are weighted based on the dollar 
				value of the FLORIDA LOTTO ticket entered ($2 FLORIDA LOTTO ticket = two entries).
			</p>
			<p>Two Bonus Play drawings will be held from tickets entered by
				midnight, ET on the last day of the entry period. A
				total of 564 prizes will be awarded. For more information, click on
				the "Prizes" tab above.</p>


			<table class="dataTbl">
				<thead>
					<tr>
						<th width="71" class="txtc">Draw</th>
						<th width="168" class="txtc">Entry Period Starts</th>
						<th width="168" class="txtc">Entry Period Ends</th>
						<th width="168" class="txtc">Draw Date</th>
						<th width="218" class="txtc" style="background: #EC1B50; color: #fff;">Winner's Announced</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="txtc">1</td>
						<td class="txtc" >April 11</td>
						<td class="txtc odd" >May 1</td>
						<td class="txtc" >May 3</td>
						<td class="txtc" style="background: #FF86C0; color: #fff;">May 5</td>
					</tr>
					<tr>
						<td class="txtc">2</td>
						<td class="txtc" >May 2</td>
						<td class="txtc odd" >May 22</td>
						<td class="txtc">May 24</td>
						<td class="txtc" style="background: #EC1B50; color: #fff;">May 26</td>
					</tr>
				</tbody>
			</table>
			<p>Players can also earn additional entries by entering a promo
				code at the time a valid ticket is entered. In order to enable the
				promo code entry feature, a player must enter the promo code at the
				same time as any FLORIDA LOTTO ticket purchased during the promotion
				period.</p>
			<p>Promo codes will be available via multiple outlets including,
				but not limited to, Florida Lottery advertisements and promotional
				emails. Each promo code is only valid for the entry period for which
				it is designated and can only be entered once during each entry
				period.</p>
<!-- 			<p class="text-bold">Winners will be posted on May 5 and May 26 for each of the Lotto Bonus Play Drawing, or as soon as possible thereafter.</p>
 -->			<p class="boldNote">
				TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59
				P.M., ET. <br> ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER
				DAY.
			</p>
		</div>
	</div>
</div>