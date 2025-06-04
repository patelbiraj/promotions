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
<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<s:if
	test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
	<s:set var="content"
		value="%{'promotions/2021/2021-bonusPlayGetaway-2_winrpt.html'}" />
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 5;
		var baseurl = 'winners_2021-bonusPlayGetaway?winrpt=';
	function visit1(){
		var query = "promotions/2021/2021-bonusPlayGetaway-1_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	function visit2(){
		var query = "promotions/2021/2021-bonusPlayGetaway-2_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}	
</script>

<div id="main" class="bonusPlayGetaway">
	<div id="topBanner">
		<jsp:include page="../2021/includes/2021-bonusPlayGetaway_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			<s:property value="messages.h1Title" />
		</h1>
		<div id="subNav">
			<div id="subNavContent">
				<h3>Select a Drawing</h3>
				<ul>


					<li>
						<a onClick="visit1()"class="toIframe" href="#">
							December 2, 2021
						</a> 
						<a href="promotions/2021/2021-bonusPlayGetaway-1_winrpt.html">
								<img src="images/png/printer.png" alt="Print Winners" width="34"
									height="19" border="0" title="Print Winners" />
						</a>
					</li>
					<li>
						<a onClick="visit2()" class="toIframe" href="#">
							January 6, 2022
						</a> 
						<a  href="promotions/2021/2021-bonusPlayGetaway-2_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
								height="19" border="0" title="Print Winners" />
						</a>
					</li>

				</ul>
			</div>
		</div>
		<iframe id="iframeContent" name="iframeContent" scrolling="no"
			src='<s:property value="%{content}" />' marginwidth="0"
			marginheight="0" frameborder="0"
			title="Guy Harvey Second Chance Winners"
			style="width: 650px; height: 500px;"></iframe>
	</div>
</div>

<script type="text/javascript">
	$("#iframeContent").on('load', function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});

	
</script>