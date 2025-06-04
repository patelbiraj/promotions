<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">
<joda:parseDateTime var="Winners1" value="04/14/2025 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners2" value="04/21/2025 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners3" value="04/28/2025 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners4" value="05/05/2025 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners5" value="05/12/2025 8:00:00" pattern="M/d/y H:m:s" />
<joda:parseDateTime var="Winners6" value="05/19/2025 8:00:00" pattern="M/d/y H:m:s" />

<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<s:if
	test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content) && #attr.Winners1.isBefore(@org.joda.time.DateTime@now())}">
	<s:set var="content"
		value="%{'promotions/2025/2025-Raffle-6_winrpt.html'}" />
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 5;
	var baseurl = 'winners_2025-Raffle?winrpt=';
	function visit(option){
		var value = option.value; 
		if (value == 0) {
			var query = "promotions/2025/2025-Raffle-6_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 1) {
			var query = "promotions/2025/2025-Raffle-1_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 2) {
			var query = "promotions/2025/2025-Raffle-2_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 3) {
			var query = "promotions/2025/2025-Raffle-3_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
			
		}
		if (value == 4) {
			var query = "promotions/2025/2025-Raffle-4_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
		}
		if (value == 5) {
			var query = "promotions/2025/2025-Raffle-5_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
			
		}
		if (value == 6) {
			var query = "promotions/2025/2025-Raffle-6_winrpt.html";
			var url = baseurl + encodeURIComponent(query);
			location.href = url;
			
		}		
		
	}
	
</script> 


<script type="module">
		
		var baseurl = 'winners_2025-Raffle?winrpt=';

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
		if (currentUrl.includes("Raffle-6_winrpt.html")) {
	
			document.getElementById("draw6").selected = true;
		}		

</script>


<div id="main">
	
		<div id="topBanner">
		<jsp:include page="../2025/includes/2025-Raffle_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			Winners 
			<select class = "drawSelect" name="draws" id= draws onChange="visit(this);" style = "background: none; font-size: 16px; margin: 0px 0px 10px 550px;" >
				<option value=0 id = currentDraw>SELECT A DRAW</option>
  				<s:if test="%{#attr.Winners1.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=1 id = draw1>April 14, 2025</option>
  				</s:if>
  				<s:if test="%{#attr.Winners2.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=2 id = draw2>April 21, 2025</option>
  				</s:if>
  				<s:if test="%{#attr.Winners3.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=3 id = draw3>April 28, 2025</option>
  				</s:if>
  				<s:if test="%{#attr.Winners4.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=4 id = draw4>May 05, 2025</option>
  				</s:if>
  				<s:if test="%{#attr.Winners5.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=5 id = draw5>May 12, 2025</option>
  				</s:if>
  				<s:if test="%{#attr.Winners6.isBefore(@org.joda.time.DateTime@now())}">
  				<option value=6 id = draw5>May 19, 2025</option>
  				</s:if>
			</select>
		</h1>
	
	</div>
	<s:if test="%{#attr.Winners1.isAfter(@org.joda.time.DateTime@now())}">
		<p style="font-weight: bold; text-align: center;font-size: 20px;">Winners list will be posted starting April 14<sup>th</sup>, 2025</p>
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