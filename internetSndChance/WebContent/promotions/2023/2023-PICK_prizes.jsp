<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

</style>



<div id="main" class="PICK">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-PICK_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1>PRIZES</h1>	
                                            
               <p>On Fridays during the promotional period, every purchase of a single-play PICK plus FIREBALL ticket will receive a 50% discount. Plus on Mondays, Free PICK 3 ticket coupons will be instantly won with the purchase of a $1 or more PICK game Straight play!</p>      
               
 				<table class="dataTbl">
 					<tr>
 						<th>PROMOTION</th>
 						<th style="width: 250px;">DATES</th>
 						<th>PRIZE</th>
 					</tr>
 					<tr class="bogo">
 						<td style="color: #F9AF6D; vertical-align: middle;">BOGO MONDAYS!</td>
 						<td>Every Monday starting July 3 through July 31, 2023</td>
 						<td>Free PICK 3 $1 STRAIGHT Quick Pick Ticket *</td>
 					</tr>
 					<tr class="fireball">
 						<td style="color: #FE6D5A; vertical-align: middle;">FIREBALL FRIDAYS! </td>
 						<td>Every Friday starting July 7 through July 28, 2023</td>
 						<td style="width: 250px;">50% Discount on a PICK plus FIREBALL play</td>
 					</tr>
 				</table>
 				<p style="margin-left: 150px; margin-right: 150px; text-transform: uppercase;"><strong>Hold on to your coupon, you will need it to claim your free PICK 3 ticket.</strong></p>
 				<p>*All Free PICK 3 ticket prizes will be awarded, with qualifying purchases, in the form of a coupon redeemable at any Florida Lottery retailer on or before Friday, September 29, 2023, at midnight, ET.</p>
		</div>
		<div style="clear: both;">
     <s:if test="%{#attr.messageRemoveDateTime.isAfter(@org.joda.time.DateTime@now())}">
          <jsp:include page="../../includes/alertNotice.jsp"/>
     </s:if>
</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>