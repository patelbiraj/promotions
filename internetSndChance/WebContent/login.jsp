<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">
<div id="main">
	<div id="mainContent">
		<h1>Log In</h1>
		<s:property escapeHtml="false" value="messages.message" />
		<div class="notRegistered">
			<p>Not registered yet?-<br /> <a href="registerFull">Register now!</a></p>
			<p class="forgotPwd"><a href="forgotPassword">Forgot Password?</a></p>
		</div>
		<s:fielderror />

		<section id="register" class="loginPage">
			<s:form action="login" method="post" autocomplete="off">
				<div>
					<label for="myUserName">Email:</label>
					<s:textfield name="form.email" maxlength="50" tabindex="1" id="myUserName" cssClass="inputText" autocomplete="off" />
				</div>
				<div>
					<label for="myPassWd">Password:</label>
					<s:password name="form.password" maxlength="16" tabindex="2" id="myPassWd" cssClass="inputText password" autocomplete="off"/>
				</div>
				<div class="submit">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" autocomplete="off"/>
				</div>
			</s:form>
		</section>
	</div>
</div>
