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
<style>


</style>

<div id="main" onmousemove="firstnameerror()">
	<div id="mainContent">
		<h1><s:property value="%{messages.h1Title}" /></h1>
		<s:if test='%{action.equals(@com.flalottery.secondchance.domain.Constants@REGISTER)}'>
			<p class="alreadyReg">Already registered? <a href="login">Log in now</a></p>
			<p>Please complete the form below to become a Flamingo Follower where you can enter a bonus play drawing or promotion and sign up to receive email or text messages from the Florida Lottery once you are registered.  Complete all required fields as your information is necessary for prize fulfillment.</p>
		</s:if>
		<s:else>
			<p>If any contact information has changed, please update the information below.</p>
		</s:else>
		<p><span class="reqField" style="margin: 0 0 0 1px;">*</span> <span style="font-style: italic; font-size: 85%; ">indicates a required field</span></p>
		<section id="register">
			<s:form action="%{action}" method="post">
				<s:actionerror/>
				<fieldset class="loginInfo">
					<legend>Login Information</legend>
					<s:if test="(null != #session.loginDO)">
					<label for="emailAddr"><span class="reqField">*</span>Email:</label>
					<s:textfield name="form.email" id="emailAddr" tabindex="3" maxlength="150" cssErrorClass="errorMessage" requiredLabel="true" onblur="this.value=removeWhiteSpace(this.value)" readonly="true" visiblity="hidden" style="opacity:0.5;"/>
					<s:fielderror fieldName="form.email" />
					
					<label for="emailAddrC"><span class="reqField">*</span>Confirm Email:</label>
					<s:textfield name="form.emailConfirm" id="emailAddrC" tabindex="4" maxlength="150" cssErrorClass="errorMessage" onblur="this.value=removeWhiteSpace(this.value)" readonly="true" visiblity="hidden" style="opacity:0.5;"/>
					<s:fielderror fieldName="form.emailConfirm" />
					
					</s:if>
					<s:else>
					<label for="emailAddr"><span class="reqField">*</span>Email:</label>
					<s:textfield name="form.email" id="emailAddr" tabindex="3" maxlength="150" cssErrorClass="errorMessage" requiredLabel="true" onblur="this.value=removeWhiteSpace(this.value)" readonly="true" visiblity="hidden" style="opacity:0.5;"/>
					<s:fielderror fieldName="form.email" />

					<label for="emailAddrC"><span class="reqField">*</span>Confirm Email:</label>
					<s:textfield name="form.emailConfirm" id="emailAddrC" tabindex="4" maxlength="150" cssErrorClass="errorMessage" onblur="this.value=removeWhiteSpace(this.value)" readonly="true" visiblity="hidden" style="opacity:0.5;"/>
					<s:fielderror fieldName="form.emailConfirm" />
					</s:else>
					<label for="password"><span class="reqField">*</span>Password:</label>
					<s:if test="%{form.isSubmitted()}">
					<s:password name="form.password" id="password" tabindex="5" maxlength="16" cssErrorClass="errorMessage" showPassword="true" onkeyup="verify()" ></s:password>
					</s:if>
					<s:else>
					<s:password name="form.password" id="password" tabindex="5" maxlength="16" cssErrorClass="errorMessage" onkeyup="verify()" ></s:password>
					</s:else>
					<s:fielderror fieldName="form.password" />

					<label for="passwordC"><span class="reqField">*</span>Confirm Password:</label>
					<s:if test="%{form.isSubmitted()}">
					<s:password name="form.passwordConfirm" id="passwordC" tabindex="6" maxlength="16" cssErrorClass="errorMessage" showPassword="true"></s:password>
					</s:if>
					<s:else>
					<s:password name="form.passwordConfirm" id="passwordC" tabindex="6" maxlength="16" cssErrorClass="errorMessage"></s:password>
					</s:else>
					<s:fielderror fieldName="form.passwordConfirm" />
					<p class="registerNotes">Passwords are case sensitive, so remember exactly how you enter it.</p>
					<p style="margin-top: 10px; margin-bottom:-10px; font-weight: bold; font-size: 12px;">Password Minimum Security Requirements: </p>
							<ol>
								<li id="req1">Between 6 and 16 characters long,</li>
								<li id="req2">Contain at least one uppercase letter, </li>
								<li id="req3">Contain at least one lowercase letter, </li>
								<li id="req4">Contain at least one symbol (#$@!%&), </li>
								<li id="req5">Contain at least one number</li>
							</ol>					
					
					<p class="registerNotes registerNotes2"><em>Please note</em>: Under Florida law, most correspondence with the Florida Lottery is considered a public record. Therefore, any information submitted on this website, including your contact information (e.g. email address, street address and telephone number) may be subject to public disclosure in response to a public records request.</p>
					
				</fieldset>

				<fieldset>
					<legend>Contact Information</legend>
						
						<div class="firstName" id="fname" >
							<label for="firstName"><span class="reqField">*</span>First Name:</label>
							<s:textfield name="form.name.first" id="firstName" tabindex="7" cssErrorClass="errorMessage" maxlength="50" />
							<s:fielderror fieldName="form.name.first" id="fnameerror"/>
						</div>
	
						<div class="lastName" id="lname">
							<label for="lastName"><span class="reqField">*</span>Last Name:</label>
							<s:textfield name="form.name.last" id="lastName" tabindex="8" cssErrorClass="errorMessage" maxlength="50" />
							<s:fielderror fieldName="form.name.last" />
						</div>
					
					<label for="streetAddr" class="streetAddr"><span class="reqField">*</span>Street Address:</label>
					<s:textfield name="form.street1" id="streetAddr" tabindex="9" cssErrorClass="errorMessage" maxlength="50" />
					<s:fielderror fieldName="form.street1" />

					<label for="streetAddr2">Street Address 2:</label>
					<s:textfield name="form.street2" id="streetAddr2" tabindex="10" cssErrorClass="errorMessage" maxlength="50" />
					<s:fielderror fieldName="form.street2" />

					<label for="country"><span class="reqField">*</span>Country:</label>
					<s:select list="countries" name="form.country" tabindex="11" cssErrorClass="errorMessage" />
					<s:fielderror fieldName="form.country" />

					<label for="city"><span class="reqField">*</span>City:</label>
					<s:textfield name="form.city" id="city" tabindex="12" cssErrorClass="errorMessage" maxlength="18" />
					<s:fielderror fieldName="form.city" />

					<div class="state">
						<label for="state"><span class="reqField">*</span>State/Province/Territory:</label>
						<s:select id="state" list="emptyMap" name="form.state" tabindex="13" cssErrorClass="errorMessage" >
							<s:optgroup label="States" list="usStates"></s:optgroup>
							<s:optgroup label="US Territories" list="usTerritories" ></s:optgroup>
							<s:optgroup label="Canadian Provinces" list="canadianProvinces"></s:optgroup>
							<s:optgroup label="Canadian Territories" list="canadianTerritories"></s:optgroup>
						</s:select>
						<s:fielderror fieldName="form.state" />
					</div>

					<div class="zip">
						<label for="zipcode"><span class="reqField">*</span>Postal Code:</label>
						<s:textfield name="form.postalCode" id="zipcode" tabindex="14" cssErrorClass="errorMessage" maxlength="10" />
						<s:fielderror fieldName="form.postalCode" />
					</div>
					

					<div class="phone">
						<label for="daytimePhone"><span class="reqField">*</span>Daytime Phone:</label>
						<s:textfield name="form.dayPhone" id="daytimePhone" tabindex="15" cssErrorClass="errorMessage" maxlength="12" />
						<s:fielderror fieldName="form.dayPhone" />
					</div>
					
					<div class="phone2">
						<label for="eveningPhone"><span class="reqField">*</span>Evening Phone:</label>
						<s:textfield name="form.eveningPhone" id="eveningPhone" tabindex="16" cssErrorClass="errorMessage" maxlength="12" />
						<s:fielderror fieldName="form.eveningPhone" />
					</div>
					<p class="registerNotes">United States numbers only. Please use format: 555-555-5555</p>
				</fieldset>
                    
				<div id="whatIsNewDiv" style="clear: both; text-align: center; ">		
					<s:checkbox name="form.accountWhatIsNew" id="wn" cssClass="checkbox" tabindex="17" />			
					<label for="form.accountWhatIsNew"><span>I would like to receive promotions and coupon offers from the Florida Lottery.</span></label>
				</div>
                    
				<div class="submit clear">
					<s:submit name="form.submitFlag" value="Submit" cssClass="submitButton translate" tabindex="18"  />
				</div>
				
			</s:form>
<script type="text/javascript">
var text1 = document.getElementById("req1");
var text2 = document.getElementById("req3");
var text3 = document.getElementById("req2");
var text4 = document.getElementById("req4");
var text5 = document.getElementById("req5");
var fnamediv = document.getElementById("fname");
var lnamediv = document.getElementById("lname");
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

function firstnameerror(){
	let textcheck = document.getElementById("fnameerror").value;
	if(textcheck.length > 0){
		fnamediv.style.height = "85px";
		lnamediv.style.height = "85px";
	}
	else{
		fnamediv.style.height = "auto";
		lnamediv.style.height = "auto";
	}
}
</script>		
		
		
		</section>
	</div>
</div>