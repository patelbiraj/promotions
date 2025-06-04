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
		<h1>Verification Code Confirmation</h1>
          <p><s:property escapeHtml="false" value="messages.message" /></p>
          <br/>
		<section id="register">
			<s:form action="submitOTP" method="post" validate="true">
				<s:actionerror/>
				<fieldset class="loginInfo"> 
					<legend>Email Address</legend>
					<label for="emailAddr">Email:</label>
					<s:textfield name="form.email" id="emailAddr" tabindex="1" maxlength="150" cssErrorClass="errorMessage" requiredLabel="true" onblur="this.value=removeWhiteSpace(this.value)" readonly="true"/>
					<s:fielderror fieldName="form.email" />
                 </fieldset> 
				<fieldset class="loginInfo"> 
					<legend>Verification Code</legend>
					<label for="otp">Code:</label>
					<s:textfield name="form.otp" id="otp" tabindex="2" maxlength="6" cssErrorClass="errorMessage" requiredLabel="true" onblur="this.value=removeWhiteSpace(this.value)"/>
					<s:fielderror fieldName="form.otp" />
                 </fieldset>   
				<div class="submit clear">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" tabindex="3"/>
				</div>
			</s:form>
		</section>
	</div>
</div>