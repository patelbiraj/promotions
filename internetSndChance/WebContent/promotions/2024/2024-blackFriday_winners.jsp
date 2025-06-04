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

<!-- TIMER START -->
<joda:parseDateTime var="Winners" value="12/05/2024 08:00:00" pattern="M/d/y H:m:s" />
<!-- TIMER END -->


<!-- Default Winner Page Start -->
<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<s:if test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
	<s:set var="content" value="%{'promotions/2024/2024-blackFriday_winrpt-1.html'}" />
</s:if>
<!-- Default Winner Page End -->


<script type="text/javascript" src="js/secondChance.js"></script>

<!-- URL Encryption Start -->
<script type="text/javascript">
	var page = 5;
	var baseurl = 'winners_2024-blackFriday?winrpt=';
	function visit1(){
		var query = "promotions/2024/2024-blackFriday_winrpt-1.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
</script> 
<!-- URL Encryption End -->


<div id="main">
	<div id="topBanner">
		<jsp:include page="../2024/includes/2024-blackFriday_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			Winners
		</h1>
		<s:if test="%{#attr.Winners.isBefore(@org.joda.time.DateTime@now())}">
			<div id="subNav">
				<div id="subNavContent">
					<h3 style="text-align: left;">Select a Drawing</h3>
					 <ul>
						<li>
							<a onClick="visit1()" class="toIframe" href="#">December 3, 2024</a> 
							<a href="promotions/2024/2024-blackFriday_winrpt-1.html">
								<img src="images/png/printer.png" alt="Print Winners" width="34" height="19" border="0" title="Print Winners" />
							</a>
						</li>
					</ul>
				</div>	
			</div>
			<iframe id="iframeContent" name="iframeContent" scrolling="no" src='<s:property value="%{content}" />' marginwidth="0"marginheight="0" frameborder="0"style="width: 650px; height: 500px;">
			</iframe>
		</s:if>
		<s:else>
			<p style="font-weight: bold; text-align: center; margin-top: 10px; margin-bottom: 100px;">Winners list will be posted starting December 05, 2024 8:00 AM EST</p>
		</s:else>
		<p style="text-align: left; margin-top: -70px; margin-right: 253px;">
			Please note that every effort has been made to ensure the enclosed information is accurate; however, in the event of an error, the winning ticket entries and prize amounts in the official record of the Florida Lottery shall prevail.
		</p>
	</div>
</div>

<script type="text/javascript">
	$("#iframeContent").on('load', function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});	
</script>