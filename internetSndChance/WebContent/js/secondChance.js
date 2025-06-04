//This javascript is dependant on jquery

//declare gameNameFromURL if not previously declared on jsp page.
if(window.page === undefined){
	var page = -1;
}

function convertWinnersTableToList(element) {
	var list = $("<ul class='convertedToList' />");
	$(element).find("tr").each(function() {
		var p = $(this).children().map(function(index) {
			if(index == 1){
				return "<p>" + $(this).html() + ", " + $(this).next().html() + "</p>";
			}
			else if(index == 2){
				return;
			}
			else{
				return "<p>" + $(this).html() + "</p>";
			}
		});
		list.append("<li>" + $.makeArray(p).join("") + "</li>");
	});
	
	$(element).replaceWith(list);
	$("ul.convertedToList li").first().css('display', 'none');
}

function convertToList(element) {

	  var list = $("<ul class='convertedToList' />");

  $(element).find("tr").each(function() {
      var p = $(this).children().map(function() {
          return "<p>" + $(this).html() + "</p>";
      });

      list.append("<li>" + $.makeArray(p).join("") + "</li>");
  });

  $(element).replaceWith(list);
  $("ul.convertedToList li").first().css('display', 'none');
}

$(document).ready(function(){
	if(page != -1){
		$("#gameNav ul li").eq(page-1).addClass("active");
	}
	$('#ticketEntryList tbody tr:odd').addClass('alt'); 
	$('#ticketEntryList tr').mouseover(function() {$(this).addClass('over');}).mouseout(function() {$(this).removeClass('over');});
	

    $(this).find('input').keypress(function(e){
      // If the key pressed was enter
      if (e.which == '13') {
    	  e.preventDefault();
        $(this).closest('form')
        .find('button[type=submit],input[type=submit]')
        .filter(':first').click();
      }
    });
	
});