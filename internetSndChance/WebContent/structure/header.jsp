<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%
	response.setHeader("X-Frame-Options", "deny");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>
<!DOCTYPE html>
<header id="siteHeader">
	
	<a href="http://www.floridalottery.com"><img src="images/png/LotteryLogo.png" alt="Florida Lottery" width="120" height="120" id="lotteryLogo" /></a>
   
	<a id="siteLogo" href="home">BONUS PLAY<br>DRAWINGS & PROMOTIONS</a>
	
	
	<s:if test="(null != #session.loginDO)">
		<nav class="accountNav">
			<ul>
				<li class="promoMenu"><a href="home">
					<span class="name_block loggedIn"><!-- mp_trans_disable_start --><s:property value="%{#session.loginDO.getName().getFullName()}" /><!-- mp_trans_disable_end --></span>
					<span class="acctNavName"></span></a>
					<div class="allPromotions">
						<ul>
							
							<li><a href="logout">Log Out</a></li>
							<li><a href="account">My Account</a></li>
							<li><a href="textMessageNotificationPrefs">Text Messaging</a></li>
							<li><a href="emailNotificationPrefs">Email Notifications</a></li>
							<li class="lastPromo"><a href="removeAccountPrefs">Remove Account</a></li>
							
						</ul>
					</div>
				</li>
			</ul>
		</nav>
		</s:if>
	<s:else>
       	
<div class="loginForm">
	<s:form action="login" method="post">
		<p>
			<s:textfield placeholder="Email" name="form.email" maxlength="50" tabindex="1" id="myUserName" cssClass="inputText" onkeyup="verify()"/>
		<p>
			<s:password placeholder="Password" name="form.password" maxlength="16" tabindex="2" id="myPassWd" cssClass="inputText password" />
		<p>
			<s:submit name="form.submitFlag" value=" " cssClass="submitButtonHeader translate" id="submitButton" />
		</p>
	</s:form>
	<p class="register">Not signed up? <a href="registerFull">Register now</a></p>
	
	
</div>
</s:else>
	
</header>
<script type="text/javascript">

var button = document.getElementById("submitButton");
button.disabled = true;

function verify(){
	let emailCheck = document.querySelector("#myUserName").value;
		if(emailCheck.trim() === "")
			button.disabled = true;
		else
			button.disabled = false;
}

</script>

<!--<div style="margin:auto; width:960px;"><p class="playerAlert"><strong>Please be advised that our website will be undergoing maintenance overnight on Thursday, July 18th. This downtime may extend into the early morning hours of Friday, July 19th. As such, in addition to the website being down, players will be unable to enter the second chance promotion during this time. <br><br>
					We apologize for any inconvenience this may cause.</strong>
				</p></div>-->