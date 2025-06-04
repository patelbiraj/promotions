<%@taglib uri="/struts-tags" prefix="s"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.text.*,java.util.*"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda" %>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<joda:parseDateTime var="PickDrawTimeChangeNow" value="07/01/2018 00:00:01" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="PickDrawTimeChangeNowEnd" value="08/05/2018 00:00:01" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="PickDrawTimeChangeNew" value="08/05/2018 00:00:02" pattern="M/d/y H:m:s" />
	
	
<div id="main">
	<div id="mainContent">
		<h1><s:property value="%{messages.h1Title}" /></h1>
		<p>To remove account, simply enter the email address that was used for the registration and submit.</p>
		<section id="register" class="loginPage">		
		<s:form action="removeAccountPrefs">
			
				<div>
					<label for="myUserName">Email:</label>
					<s:textfield name="form.emailAddress" id="myUserName" maxlength="50" tabindex="1" cssClass="inputText" readonly="true"/>
					<s:fielderror fieldName="form.emailAddress" />
				</div>
				
				<div>
					<label for="myUserNameConfirm">Confirm Email:</label>
					<s:textfield name="form.emailAddressConfirm" id="myUserNameConfirm" maxlength="50" tabindex="2" cssClass="inputText" />
					<s:fielderror fieldName="form.emailAddressConfirm" />
				</div>
			
				<div style="margin-bottom: 1;">		
					<s:checkbox name="form.agreeCheckBox" id="wn" cssClass="checkbox" tabindex="3" />			
					<label for="form.agreeCheckBox"><span>Please check the box to confirm that you would like to delete <br>the Florida Lottery account associated with this email address.</span></label>
					<s:fielderror fieldName="form.agreeCheckBox" />
				</div>
				
				<div class="submit">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" />
				</div>
		</s:form>
		</section>
	</div>
</div>
<script type="text/javascript">
$("#p4m").focus();
$("label img").click(function(event) {
	event.preventDefault();
	$("#" + $(this).parents("label").attr("for")).click();
});
</script>