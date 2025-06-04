<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
  		<div id="LoginArea">
  			<h1>Login</h1> 
  						
  			<p></p>
  			<p class="Error ErrorText"><s:fielderror /></p>
  			
        
        <!-- TODO: The form action will need to be changed -->       
  			<s:form id="Login" name="Login" action="login_mmc_App" method="post" novalidate="novalidate">
  				<p>Please enter your information below to login</p>
 				<div class="Input">
					<label for="Email">Email:</label>
					<s:textfield name="form.email" maxlength="50" tabindex="1" id="Email" class="email required" />
					<span>username@domain.com</span>
				</div>
				<div class="Input">
					<label for="Password">Password:</label>
					<s:password name="form.password" maxlength="16" tabindex="2" id="Password" class="ValidatePassword required" />
				</div>
					<s:submit name="form.submitFlag" id="login_form_submitFlag" value="Login Now" cssClass="btn" />
 			</s:form>
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

	<script type="text/javascript" src="assets/js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="assets/js/jquery.validate-1.11.1.min.js"></script>
  <script type="text/javascript">
    $( document ).ready( function() {
      $( "#Login" ).validate( {
        errorPlacement: function() { },
        invalidHandler: function( e, validator )
        { $( ".ErrorText" ).html( "Please double check the highlighted fields." ); },
        errorClass: 'Error',
        highlight: function( element, errorClass )
        { $( element ).parent().addClass( errorClass ); },
        unhighlight: function( element, errorClass )
        { $( element ).parent().removeClass( errorClass ); } } );
        $( "#Email" ).focus();
    } );
  </script>
</body>
</html>