<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<html lang="en">
<head>
  <title>MONOPOLY MILLIONAIRES' CLUB</title>
	<meta http-equiv="content-type" content="text/html; charset=windows-1252">
	<meta name="viewport" content="width=device-width">

	<link rel="stylesheet" href="assets/css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="assets/css/globalstyles.css" type="text/css" media="all">
	<link rel="stylesheet" href="assets/css/styles.css" type="text/css" media="all">
	<link rel="stylesheet" href="assets/css/checkboxes.css" type="text/css" media="all">
	<link rel="icon" href="assets/i/favicon.ico">
</head>
<body>
  <div id="header">
    <div class="wrapper">
      <a id="lotteryLogo" href="https://fl.playmmc.com/promo/mmc">
        <!-- TODO: The lotteries are responsible for adding their own logo -->
        <img width="144" alt="Lottery Logo" src="assets/i/lottery_logo.png">
      </a>
      <div class="outerLogo">
        <img id="smallMonopolyLogo" alt="Monopoly Logo" src="assets/i/small_logo.png">
      </div>
      <div id="accountHolder">
        <!-- TODO: The lotteries are responsible for adding login and create account links -->
        <a class="btn" href="login_mmc_App?PtaUrl=https%3A%2F%2Ffl.playmmc.com%2Faccount%2Fptalogin&Redirect=%2F">Account Login</a>
        <a href="register_mmc_App" class="btn small grey" id="createAccountBtn">Create Account</a>
      </div>
    </div>
  </div>
  <div id="content">
    <div class="wrapper">
      <div class="registrationWrapper">
        <h1>Registration</h1>
        <p>Required fields are in bold.</p>
    
        <div class="registrationwrap">
          <!-- TODO: The form action will need to be changed -->
          <s:form method="post" action="register_mmc_App" id="register" name="register" novalidate="novalidate">
            <h2 class="First">Personal Information</h2>
            <div class="Input">
              <label for="FirstName" class="required">First Name:</label>
			  <s:textfield name="form.name.first" id="firstName" tabindex="7" cssErrorClass="errorMessage" maxlength="50" />
			  <s:fielderror fieldName="form.name.first" />
            </div>
            <div class="Input">
              <label for="LastName" class="required">Last Name:</label>
			  <s:textfield name="form.name.last" id="lastName" tabindex="8" cssErrorClass="errorMessage" maxlength="50" />
			  <s:fielderror fieldName="form.name.last" />
            </div>
            <div class="Input">
              <label for="Address1" class="required">Street Address:</label>
			 <s:textfield name="form.street1" id="streetAddr" tabindex="9" cssErrorClass="errorMessage" maxlength="50" />
			 <s:fielderror fieldName="form.street1" />
            </div>
            <div class="Input">
              <label for="Address2">Street Address 2:</label>
			  <s:textfield name="form.street2" id="streetAddr2" tabindex="10" cssErrorClass="errorMessage" maxlength="50" />
			  <s:fielderror fieldName="form.street2" />
            </div>
            <div class="Input">
			  <s:textfield name="form.country" tabindex="11" value= "USA" cssErrorClass="errorMessage" type="hidden"/>
           </div>
            
            <div class="Input">
              <label for="PostalCode" class="required">Zip Code:</label>
			  <s:textfield name="form.postalCode" id="zipcode" tabindex="14" cssErrorClass="errorMessage" maxlength="10" />			  
			  <s:fielderror fieldName="form.postalCode" />
            </div>
             <p class="ExtraZipInfo">&nbsp;Enter your zip code above, then verify the correct city and state.</p>
            <div class="Input">
              <label for="City" class="required">City:</label>
			  <s:textfield name="form.city" id="city" tabindex="12" cssErrorClass="errorMessage" maxlength="18" />
			  <s:fielderror fieldName="form.city" />
            </div>

            <div class="Input">
              <label id="StateLabel" for="State" class="required">State:</label>
 						<s:select id="state" list="emptyMap" name="form.state" tabindex="13" cssErrorClass="errorMessage" >
							<s:optgroup label="States" list="usStates"></s:optgroup>
							<s:optgroup label="US Territories" list="usTerritories" ></s:optgroup>
						</s:select>
						<s:fielderror fieldName="form.state" />
	            </div>

            
            <div class="Input">
              <label for="eveningPhone" class="required">Evening Phone:</label>
			  <s:textfield name="form.eveningPhone" id="eveningPhone" tabindex="16" cssErrorClass="errorMessage" maxlength="12" />
			  <s:fielderror fieldName="form.eveningPhone" />
           </div>

            <div class="Input">
              <label for="daytimePhone" class="required">Daytime Phone:</label>
			  <s:textfield name="form.dayPhone" id="daytimePhone" tabindex="15" cssErrorClass="errorMessage" maxlength="12" />
			  <s:fielderror fieldName="form.dayPhone" />
            </div>
            <p class="registerNotes">United States numbers only. Please use format: 555-555-5555</p>

            <h2>Account Set Up</h2>
            <p>Your email address will be used as your Sign In credentials. Each member must have a unique email address, so each email address may only be used once to set up an account.</p>
            <div class="Input">
              <label for="Email" class="required">Email:</label>
			  <s:textfield name="form.email" id="emailAddr" tabindex="3" maxlength="150" cssErrorClass="errorMessage" requiredLabel="true" />
			  <span>username@domain.com</span>
			  <s:fielderror fieldName="form.email" />
            </div>

            <div class="Input">
              <label for="ConfirmEmail" class="required">Confirm Email:</label>
			  <s:textfield name="form.emailConfirm" id="emailAddrC" tabindex="4" maxlength="150" cssErrorClass="errorMessage" />
			  <span>username@domain.com</span>
			  <s:fielderror fieldName="form.emailConfirm" />

            </div>

            <div class="Input">
              <label for="Password" class="required">Password:</label>
					<s:if test="%{form.isSubmitted()}">
					<s:password name="form.password" id="password" tabindex="5" maxlength="16" cssErrorClass="errorMessage" showPassword="true" ></s:password>
					</s:if>
					<s:else>
					<s:password name="form.password" id="password" tabindex="5" maxlength="16" cssErrorClass="errorMessage"></s:password>
					</s:else>
					<s:fielderror fieldName="form.password" />
            </div>

            <div class="Input">
              <label for="PasswordConfirm" class="required">Confirm Password:</label>
					<s:if test="%{form.isSubmitted()}">
					<s:password name="form.passwordConfirm" id="passwordC" tabindex="6" maxlength="16" cssErrorClass="errorMessage" showPassword="true"></s:password>
					</s:if>
					<s:else>
					<s:password name="form.passwordConfirm" id="passwordC" tabindex="6" maxlength="16" cssErrorClass="errorMessage"></s:password>
					</s:else>
					<span>Please retype your password</span>
					<s:fielderror fieldName="form.passwordConfirm" />
					<p class="registerNotes">Passwords can be up to 16 characters. Passwords are case sensitive, so remember exactly how you enter it.</p>
					<p class="registerNotes registerNotes2"><em>Please note</em>: Under Florida law, most correspondence with the Florida Lottery is considered a public record. Therefore, any information submitted on this website, including your contact information (e.g. email address, street address and telephone number) may be subject to public disclosure in response to a public records request.</p>
              
            </div>
            <s:submit name="form.submitFlag" id="register_form_submitFlag" value="REGISTER NOW" cssClass="submitButton" tabindex="17"  />
          </s:form>
        </div>
      </div>
    </div>
  </div>

  <div id="footer">
    <div class="footerWrapper">
      <!-- TODO: The lotteries are responsible for adding links -->
      <ul>
        <li><a href="https://fl.playmmc.com/promo/mmc/faq">FAQ's</a></li>
        <li><a href="https://fl.playmmc.com/promo/mmc/rules">Rules</a></li>
        <li><a href="https://fl.playmmc.com/promo/mmc/privacypolicy">Privacy Policy</a></li>
        <li><a href="https://fl.playmmc.com/promo/mmc/tos">Terms &amp; Conditions</a></li>
        <li><a href="https://fl.playmmc.com/promo/mmc/helpform">Feedback</a></li>
      </ul>
      <p>
        The MONOPOLY name and logo, MONOPOLY MILLIONAIRES&#39; CLUB, the distinctive design of
        the game board, the four corner squares, the MR. MONOPOLY name and character, as well as
        each of the distinctive elements of the board and playing pieces are trademarks of Hasbro
        for its property trading game and game equipment. &copy; 1935, 2014 Hasbro. All Rights Reserved.
        Licensed by Hasbro.
      </p>
      <img alt="Monopoly Millionaires Club" src="assets/i/MONOPOLY-OLP_color.png">
    </div>
  </div>
  

</body>
</html>