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



<div id="main" >
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-fantasy5_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                                            
               <p>During the promotional periods, $1 million in cash prize coupons will be awarded plus FANTASY 5 BOGO coupons will be instantly won with qualifying purchases!</p>      
               
 				<table class="dataTbl">
 					<tr>
 						<th>PROMOTION</th>
 						<th>DATE(S)</th>
 						<th>COUPON PRIZE</th>
 					</tr>
 					<tr>
 						<td>$25 INSTANT-WIN COUPONS!</td>
 						<td>March 20 - April 30, 2023</td>
 						<td style="background-color: #FCF1C9;">$25 Cash Coupon</td>
 					</tr>
 					<tr>
 						<td>FANTASY 5 BOGO COUPONS!</td>
 						<td>March 20 - 24, 2023</td>
 						<td style="background-color: #FCF1C9;"><strong>Buy One</strong> FANTASY 5 Ticket, <strong>Get One</strong>
 						$1 FANTASY 5 Quick Pick FREE Coupon</td>
 					</tr>
 				</table>
 				<p>All $25 instant-win cash prizes will be awarded in the form of a coupon redeemable 
 				at any Florida Lottery retailer on or before Thursday, June 29, 2023 at midnight, ET. </p>
 				
 				<p>BOGO coupons must be redeemed by 12:45 p.m., ET on the <i style="font-weight:bold;">same day</i> the coupon was issued.</p>
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