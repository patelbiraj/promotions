<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">
<joda:parseDateTime var="Winners1" value="09/30/2024 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners2" value="10/07/2024 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners3" value="10/14/2024 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners4" value="10/21/2024 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners5" value="10/28/2024 8:00:00" pattern="M/d/y H:m:s" />

<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<s:if
	test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content) && #attr.Winners1.isBefore(@org.joda.time.DateTime@now())}">
	<s:set var="content"
		value="%{'promotions/2024/2024-Raffle-5_winrpt.html'}" />
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 5;
	var baseurl = 'winners_2024-Raffle?winrpt=';
	function visit(option){
		var value = option.value; 
		if (value == 0) {
			var query = "promotions/2024/2024-Raffle-1_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 1) {
			var query = "promotions/2024/2024-Raffle-1_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 2) {
			var query = "promotions/2024/2024-Raffle-2_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 3) {
			var query = "promotions/2024/2024-Raffle-3_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
			
		}
		if (value == 4) {
			var query = "promotions/2024/2024-Raffle-4_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 5) {
			var query = "promotions/2024/2024-Raffle-5_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
			
		}
		
	}
	
</script> 


<script type="module">
		
		var baseurl = 'winners_2024-Raffle?winrpt=';

		const currentUrl = window.location.href;
		console.log(currentUrl)
		if (currentUrl.includes("Raffle-1_winrpt.html")) {
			document.getElementById("draw1").selected = true;
		}
		if (currentUrl.includes("Raffle-2_winrpt.html")) {
			document.getElementById("draw2").selected = true;
		}

		if (currentUrl.includes("Raffle-3_winrpt.html")) {
	
			document.getElementById("draw3").selected = true;
		}
		if (currentUrl.includes("Raffle-4_winrpt.html")) {
			document.getElementById("draw4").selected = true;
		}
		
		if (currentUrl.includes("Raffle-5_winrpt.html")) {
	
			document.getElementById("draw5").selected = true;
		}

</script>


<div id="main">
	
		<div id="topBanner">
		<jsp:include page="../2024/includes/2024-Raffle_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			Winners 
			<select class = "drawSelect" name="draws" id= draws onChange="visit(this);" style = "background: none; font-size: 16px; margin: 0px 0px 10px 550px;" >
				<option value=0 id = currentDraw>SELECT A DRAW</option>
  				<s:if test="%{#attr.Winners1.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=1 id = draw1>September 30, 2024</option>
  				</s:if>
  				<s:if test="%{#attr.Winners2.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=2 id = draw2>October 7, 2024</option>
  				</s:if>
  				<s:if test="%{#attr.Winners3.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=3 id = draw3>October 14, 2024</option>
  				</s:if>
  				<s:if test="%{#attr.Winners4.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=4 id = draw4>October 21, 2024</option>
  				</s:if>
  				<s:if test="%{#attr.Winners5.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=5 id = draw5>October 28, 2024</option>
  				</s:if>
			</select>
		</h1>
	
	</div>
	<s:if test="%{#attr.Winners1.isAfter(@org.joda.time.DateTime@now())}">
		<p style="font-weight: bold; text-align: center;font-size: 20px;">Winners list will be posted starting September 30<sup>th</sup>, 2024</p>
</s:if>	
		<iframe id="iframeContent" name="iframeContent" scrolling="no"
			src='<s:property value="%{content}" />' marginwidth="0"
			marginheight="0" frameborder="0"
			style="width: 900px; height: 500px;"></iframe>
		

	<p style = "margin: 10px 50px 0px 50px">
Please note that every effort has been made to ensure the enclosed information is accurate; however, in the event of an error, 
the winning ticket entries and prize amounts in the official record of the Florida Lottery shall prevail.
<br><br><br>
</p>
	<s:else>
	
	
		
	</s:else>
	
	</div>
	
	
</div>
		
	
	
<script type="text/javascript">
	$("#iframeContent").on('load', function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});

	
</script>