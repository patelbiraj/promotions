<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<div id="main">
	<div id="mainContent" class="couponConfirmation">
		<h1>Your Buy One, Get One Coupons are now printing</h1>
		<c:if test="${empty requestScope.preferenceUpdated}">
			<div id="whatIsNewCouponDiv">		
				<s:form action="whatIsNewPrefAction">
					<label for="form.whatIsNew"><s:checkbox name="form.whatIsNew" id="wn" cssClass="checkbox" checked="checked" fieldValue="true" value="true" /> I would like to continue receiving promotional emails from the Florida Lottery.</label>
					<s:submit name="submit" value="Submit" cssClass="couponSubmit"/>
				</s:form>
			</div>
		</c:if>
		<c:if test="${requestScope.preferenceUpdated == 'true'}">
			<div id="whatIsNewCouponDiv">
					<p>Thank you. Your email notifications have been updated.</p>
			</div>		
		</c:if>
		<c:if test="${requestScope.preferenceUpdated == 'false'}">
				<div id="whatIsNewCouponDiv">
					<p>Thank you. Your email notifications have been updated. You will not receive these notifications from the Florida Lottery.</p>
				</div>
		</c:if>		
		<div class="nextPromo">
			<a href="http://www.floridalottery.com/"><img src="images/gif/transparent.gif" alt="FANTASY 5 with EZmatch and LUCKY MONEY with EZmatch Tickets" width="350" height="450" class="tickets" /></a>
			<img src="images/gif/transparent.gif" alt="Play Now & Win More!" width="525" height="150" />
			<img src="images/gif/transparent.gif" alt="EZmatch Spring Days - April 27 to June 7, 2015" width="525" height="150" />
			<p class="couponSubmit"><a href="http://www.floridalottery.com/EZmatch.do">Learn More</a></p>
		</div>
	</div>
</div>