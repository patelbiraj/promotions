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
<joda:parseDateTime var="Winners" value="8/5/2024 08:00:00" pattern="M/d/y H:m:s" />



<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<s:if test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
		<s:set var="content" value="%{'promotions/2025/2025-nascar_winrpt-1.html'}" />
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 5;
	var baseurl = 'winners_2025-nascar?winrpt=';
	function visit1(){
		var query = "promotions/2025/2025-nascar_winrpt-1.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}

/* 	function visit2(){
		var query = "promotions/2025/2025-nascar_winrpt-2.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	} */
</script> 

<div id="main" class="cashCastle">
	
	<div id="topBanner">
		<jsp:include page="../2025/includes/2025-nascar_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			<s:property value="messages.h1Title" />
		</h1>
		<s:if test="%{#attr.Winners.isBefore(@org.joda.time.DateTime@now())}">
			<div id="subNav">
			<div id="subNavContent">
			<h3 style="text-align: left;">Select a Drawing</h3>
			<ul>
				<li>
					<a onClick="visit1()" class="toIframe" href="#">August 1, 2025</a> 
					<a href="promotions/2025/2025-nascar_winrpt-1.html">
						<img src="images/png/printer.png" alt="Print Winners" width="34"
						height="19" border="0" title="Print Winners" />
					</a>
				</li>
				<!-- <li>
					<a onClick="visit2()" class="toIframe" href="#">October 3, 2025</a> 
					<a href="promotions/2025/2025-nascar_winrpt-2.html">
						<img src="images/png/printer.png" alt="Print Winners" width="34"
						height="19" border="0" title="Print Winners" />
					</a>
				</li> -->
			</ul> 
			</div>	
			</div>
			<iframe id="iframeContent" name="iframeContent" 
					src='<s:property value="%{content}"/>'
					scrolling="no"
					marginwidth="0"
					marginheight="0" 
					frameborder="0"
					title="Fuel for Life Winners"
					style="width: 650px; height: 500px;"
			>
			</iframe>
		</s:if>
		<s:else>
			<p style="font-weight: bold; text-align: center;">
				Winners list will be posted starting August 5, 2025 8:00 AM EST
			</p>
		</s:else>
		<p>
			Please note that every effort has been made to ensure the enclosed information is accurate; however, in the event of an error, 
			the winning ticket entries and prize amounts in the official record of the Florida Lottery shall be controlled.
		</p>
	</div>
</div>
			
<script type="text/javascript">
	$("#iframeContent").on('load', function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});
</script>