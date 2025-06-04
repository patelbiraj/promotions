<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<%
	response.setHeader("X-Frame-Options", "deny");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>
<!DOCTYPE html>
<footer id="footer">
	<div class="footerCopy">
		<p>&copy; 
		<s:set var="now" value="@org.joda.time.DateTime@now()" /> 
		<%-- <joda:format value="<s:property value='#now' />" pattern="YYYY" /> --%>
		<joda:format value="${now}" pattern="YYYY" /> 
		Florida Lottery, All Rights Reserved. Must be 18 or older to play. Play responsibly.</p>
		<img style="margin-top: -5px" src="images/png/PlayResponsibly_logo_2024.png" alt="" width="180" height="32" />
	</div>
	<nav class="footerNav">
		<p style="position: relative; right: 15px;"><a href="http://www.floridalottery.com">floridalottery.com</a></p>
		<a style="position: relative;" href="https://www.facebook.com/FloridaLottery"><img src="images/png/social_icon_facebook_2024.png" width="30" height="30"/></a>
		<a style="position: relative;" href="https://x.com/FloridaLottery"><img src="images/png/social_icon_X_2024.png" width="30" height="30"/></a>
		<a style="position: relative;" href="http://www.youtube.com/FloridaLottery"><img src="images/png/social_icon_youtube_2024_2.png" width="30" height="30"/></a>
		<a style="position: relative;" href="http://www.instagram.com/FloridaLottery"><img src="images/png/social_icon_instagram_2024.png" width="30" height="30"/></a>
		<a style="position: relative;" href="https://www.linkedin.com/company/floridalottery">
			<img alt="Link to Florida Lottery Likedin Page" src="images/png/social_icon_linkedin_2024.png" width="30" height="30"/>
		</a>
	</nav>
</footer>