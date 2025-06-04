<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script>
function removeWhiteSpace(str){
	return str.replace(/^\s+|\s+$/gm,'');
}
</script>
<div id="main">
	<div id="mainContent">
		<h1>Become a Flamingo Follower</h1>
		<s:property escapeHtml="false" value="messages.message" />
          <p>Please enter your email address below to become a Flamingo Follower and receive email messages from the Florida Lottery. An email will be sent to this address to confirm.</p>
		<section id="register">
			<s:form action="registerEmailConfirm" method="post" validate="true">
				<s:actionerror/>
				<fieldset class="loginInfo"> 
					<legend>Email Address</legend>
					<label for="emailAddr">Email:</label>
					<s:textfield name="form.email" id="emailAddr" tabindex="1" maxlength="150" cssErrorClass="errorMessage" requiredLabel="true" onblur="this.value=removeWhiteSpace(this.value)"/>
					<s:fielderror fieldName="form.email" />
                 </fieldset>   
				<div class="submit clear">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" tabindex="2"/><s:submit name="form.submitFlag" value="Enter Verification Code" cssClass="submitButton translate" tabindex="3"/>
				</div>
				<div id="regInst">
				By clicking "Submit", you will receive a new Verification Code. <br/>If you already have a valid verification code/email, please click "Enter Verification Code" to continue registration process.
				</div>
			</s:form>
		</section>
	</div>
</div>