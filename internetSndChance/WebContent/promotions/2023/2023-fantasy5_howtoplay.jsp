<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-fantasy5_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1 ><s:property value="messages.h1Title" /></h1>
               <p style="margin-top: 25px; font-style: italic;">No manual entry for a drawing through the mobile app or website is required. All prizes are instant-win coupons.</p>
               
               <h2 >$25 INSTANT-WIN COUPONS!</h2>               
               <p style="font-weight:bold; margin-top: 20px;">Promotional Period: March 20 to April 30, 2023<span style="padding-left:280px;">Promotional Hours: 6:00 a.m. to 12:45 p.m., ET</span></p>               
               <p style="margin-top: 25px;">FANTASY 5<sup>&reg;</sup> players who purchase a $1 or more ticket will have a chance to instantly win a $25
               cash coupon every day during promotional hours listed below. The $25 instant-win cash prizes will be 
               randomly awarded as coupons and printed automatically if won.</p>
               
               <p>All $25 instant-win cash prizes will be redeemable at any Florida Lottery retailer on or before Thursday, June 29, 2023 at midnight, ET. </p>
               
               <table class="dataTbl">
               		<tr>
               			<th>QUALIFYING PURCHASE</th>
               			<th>PROMOTION PERIOD</th>
               			<th>PROMOTIONAL HOURS</th>
               			<th>PRIZE</th>
               		</tr>
               		<tr>
               			<td>$1 or more FANTASY 5 ticket</td>
               			<td>March 20 - April 30, 2023</td>
               			<td>6:00 a.m. to 12:45 p.m., ET</td>
               			<td>$25 Cash Coupon</td>
               		</tr>
               </table>
               <p style="font-weight:bold; text-align:center;">HOLD ON TO YOUR COUPON, YOU WILL NEED IT TO CLAIM YOUR $25 CASH PRIZE!*</p>
               <h2 style="text-align:left; margin-top: 30px;">FANTASY 5 BOGO COUPONS!</h2>
               
               <p style="font-weight:bold; margin-top: 20px;">Promotional Period: March 20 to March 24, 2023<span style="padding-left:270px;">Promotional Hours: 6:00 a.m. to 12:30 p.m., ET</span></p>
          		
          	   <p style="margin-top: 45px;">Players who purchase a CASH POP<sup>&#8482;</sup> or PICK Daily Games<sup>&#8482;</sup> ticket on the 
          	   specific correlating day listed below will instantly 
          	   win a coupon for a 'Buy One FANTASY 5 Ticket, Get One $1 FANTASY 5 Quick Pick ticket for FREE'.</p>
          	   
          	   <p>BOGO coupons must be redeemed by 12:45 p.m., ET on the <span style="font-weight:bold; font-style: italic;">same day</span> the coupon was issued. </p>
          	   
          	   <table class="dataTbl">
          	   		<tr>
          	   			<th style="width:200px; ">QUALIFYING PURCHASE</th>
          	   			<th style="width:200px">DAY</th>
          	   			<th>COUPON PRIZE</th>
          	   		</tr>
          	   		<tr>
          	   			<td>CASH POP<sup>&trade;</sup> ticket</td>
          	   			<td>Monday, March 20, 2023</td>
          	   			<td rowspan="5"><br><br><br><br><strong>Buy One</strong> FANTASY 5 Ticket, <strong>Get One</strong> $1
          	   			FANTASY 5 Quick Pick FREE Coupon</td>
          	   		</tr>
          	   		<tr>
          	   			<td>PICK 2<sup>&#8482;</sup> ticket</td>
          	   			<td>Tuesday, March 21, 2023</td>
          	   		</tr>
          	   		<tr>
          	   			<td>PICK 3<sup>&#8482;</sup> ticket</td>
          	   			<td>Wednesday, March 22, 2023</td>
          	   			
          	   		</tr>
          	   		<tr>
          	   			<td>PICK 4<sup>&#8482;</sup> ticket</td>
          	   			<td>Thursday, March 23, 2023</td>
          	   		</tr>
          	   		<tr>
          	   			<td>PICK 5<sup>&#8482;</sup> ticket</td>
          	   			<td>Friday, March 24, 2023</td>
          	   		</tr>
          	   </table>
          	   <p style="font-weight:bold; text-align:center;">HOLD ON TO YOUR COUPON, YOU WILL NEED IT TO CLAIM YOUR FREE TICKET!**</p>
          </div>
     </div>
</div>