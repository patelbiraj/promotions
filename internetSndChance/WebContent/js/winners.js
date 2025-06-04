// JavaScript Document

function alternate(){ 
if(document.getElementsByTagName){
  var rows = document.getElementsByTagName("tr"); 
  for(i = 0; i < rows.length; i++){ 
//manipulate rows
    if(i % 2 == 0){  
      rows[i].className = "alt"; 
  }
} 
}
}

alternate();