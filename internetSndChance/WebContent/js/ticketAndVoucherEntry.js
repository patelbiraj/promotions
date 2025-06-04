// JavaScript Document

$(document).ready(function(){
	//$("#ticketNumber").val('');
	var value = $.trim($(".content_red").text());
	if(value === ""){
		$("#messageOverlay").show();
		$("#continueButton").focus();
		$("#continueButton").click(function(event) {
			event.preventDefault();
			$('#messageOverlay').hide('fast', function() {
				$("#ticketNumber").focus();
			});
		});
		$(window).keydown(function (e) {
		    if ( e.which === 13 ) {
		        $("#continueButton").click();
			}
		});
	}
 });

function validateTicketEntryForm(validLength)
{
	var sText = document.ticketEntryForm.ticketNumber.value;
	var validChars = "0123456789";
	var isNumber=true;
	var Char;
	
	for (var i = 0; i < sText.length && isNumber == true; i++){ 
		Char = sText.charAt(i); 
		if (validChars.indexOf(Char) == -1){
			isNumber = false;
			alert("Please enter numbers only.");
			document.ticketEntryForm.ticketNumber.focus();
			return isNumber;
		}
	}
	
	if(sText.length == 0) {
		alert("Please enter your ticket number.");
		document.ticketEntryForm.ticketNumber.focus();
		return false;
	}
	
	else if(sText.length < validLength) {
		alert("You have entered too few digits. Please enter " + validLength + " digits.");
		document.ticketEntryForm.ticketNumber.focus();
		return false;
	}
	
	//for grouped promotions
	else if(document.ticketEntryForm.gameNumber.value == 0000) {
		alert("Please select a game.");
		document.ticketEntryForm.gameNumber.focus();
		return false;
	}

	return isNumber;
}