<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script language="javascript" type="text/javascript">
function removeSpaces(string) {
 return string.split(' ').join('');
}
</script>
<style>
.errors li{
	list-style:none;
	margin-left: -25px;
}
</style>
<div id="main">
	<div id="mainContent">
		<h1><s:property value="%{messages.h1Title}" /></h1>
		<s:if test="%{!messages.message.isEmpty()}">
			<p><s:property escapeHtml="false" value="%{messages.message}" /></p>
		</s:if>
		
		<div class="errors" style="font-weight: bold; ">
			<s:if test="hasActionMessages()">			
		       	<s:actionmessage/>
			</s:if>
		</div>
		<p><s:actionerror escape="false" cssErrorClass="errors"/></p>
		<p>Please enter your registered email address and click "Submit" to get Verification Code via email.</p>
		
				
			
		<s:form action="submitEmail" method="post" cssClass="forgotPassword">
			<label for="form.email">Email:</label>
			<s:textfield name="form.email" size="50" maxlength="150" onblur="this.value=removeSpaces(this.value);" tabindex="1"/>
			<div class="submit">
				<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" tabindex="2"/>
				<s:submit name="form.submitFlag" value="Enter Verification Code" cssClass="submitButton translate" tabindex="3"/>
			</div>
			<s:fielderror fieldName="form.email" cssErrorClass="errorMessage" />
			<div id="regInst">
				By clicking "Submit", you will receive a new Verification Code. <br/>If you already have a valid verification code/email, please click "Enter Verification Code" to continue.
				</div>
		</s:form>
	</div>
</div>
