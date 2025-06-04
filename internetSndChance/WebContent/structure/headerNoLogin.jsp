<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.flalottery.secondchance.domain.Name, java.text.*, java.util.*"%>
<%
	response.setHeader("X-Frame-Options", "deny");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>
<header id="siteHeader">
	<a href="http://www.floridalottery.com"><img src="images/png/LotteryLogo.png" alt="Florida Lottery" width="120" height="120" id="lotteryLogo" /></a>
	<a href="home"><img src="images/png/secondChance_en.png" alt="Florida Lottery Second Chance Drawings and Promotions" width="423" height="89" id="siteLogo" /></a>
</header>