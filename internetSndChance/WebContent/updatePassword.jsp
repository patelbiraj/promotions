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
		<h1>Update/Change Password</h1>
		<s:property escapeHtml="false" value="messages.message" />

		<section id="register" class="loginPage">
			<s:form action="updatePassword" method="post">
				<div>
					<label for="userName">Email:</label>
					<s:textfield name="form.email" maxlength="50" tabindex="1" id="userName" cssClass="inputText" readonly="true"/>
				</div>
				<div>
					<label for="password">Password:</label>
					<s:password name="form.password" id="password" tabindex="2" maxlength="16" cssErrorClass="errorMessage" onkeyup="verify()"/>
					<s:fielderror fieldName="form.password" />
				</div>
				<div>
					<label for="passwordConfirm">Confirm Password:</label>
					<s:password name="form.passwordConfirm" id="passwordConfirm" tabindex="3" maxlength="16" cssErrorClass="errorMessage"/>
					<s:fielderror fieldName="form.passwordConfirm" />
				</div>
				<p style="margin-top: 10px; margin-bottom:-10px; font-weight: bold; font-size: 12px;">Password Minimum Security Requirements: </p>
							<ol>
								<li id="req1">Between 6 and 16 characters long,</li>
								<li id="req2">Contain at least one uppercase letter, </li>
								<li id="req3">Contain at least one lowercase letter, </li>
								<li id="req4">Contain at least one symbol (#$@!%&), </li>
								<li id="req5">Contain at least one number</li>
							</ol>
				<div class="submit">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" />
				</div>
			</s:form>
		</section>
		
<script type="text/javascript">
var text1 = document.getElementById("req1");
var text2 = document.getElementById("req3");
var text3 = document.getElementById("req2");
var text4 = document.getElementById("req4");
var text5 = document.getElementById("req5");

text1.style.color = "red";
text2.style.color = "red";
text3.style.color = "red";
text4.style.color = "red";
text5.style.color = "red";
var lowerCase = new RegExp("[a-z]");
var upperCase = new RegExp("[A-Z]");
var symbols = new RegExp("[#$@!%&]");
var numerics = new RegExp("[0-9]");

function verify(){
	let textCheck = document.getElementById("password").value;
	if(textCheck.length >= 6){
		text1.style.color = "green";
	}
		
	else{
		text1.style.color = "red";
	}
		
	if(lowerCase.test(textCheck))
		text2.style.color = "green";
	else
		text2.style.color = "red";
	if(upperCase.test(textCheck))
		text3.style.color = "green";
	else
		text3.style.color = "red";
	if(symbols.test(textCheck))
		text4.style.color = "green";
	else
		text4.style.color = "red";
	if(numerics.test(textCheck))
		text5.style.color = "green";
	else
		text5.style.color = "red";
}
</script>	
	</div>
</div>
