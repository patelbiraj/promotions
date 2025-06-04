<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 5;</script>
<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<joda:parseDateTime var="Winners" value="04/11/2024 06:00:01"
	pattern="M/d/y H:m:s" />
<s:if
	test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
	<s:set var="content"
		value="%{'promotions/2023/2023-Xtreme-4_winrpt.html'}" />
</s:if>
<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2023/includes/2023-Xtreme_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap" >
		<div id="mainContent" >
		<h1>WINNERS</h1>
		<s:if test="%{#attr.Winners.isBefore(@org.joda.time.DateTime@now())}">
		<div id="subNav">
			<div id="subNavContent">
				<h3 style="text-align: left;">Select a Drawing</h3>
				<ul>
					<li><a class="toIframe" href="winners_2023-Xtreme?winrpt=promotions/2023/2023-Xtreme-1_winrpt.html">February 8, 2024</a> 
					<a href="promotions/2023/2023-Xtreme-1_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
							height="19" border="0" title="Print Winners" />
					</a></li>
					<li><a class="toIframe" href="winners_2023-Xtreme?winrpt=promotions/2023/2023-Xtreme-2_winrpt.html">February 29, 2024</a> 
					<a href="promotions/2023/2023-Xtreme-2_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
							height="19" border="0" title="Print Winners" />
					</a></li>
					<li><a class="toIframe" href="winners_2023-Xtreme?winrpt=promotions/2023/2023-Xtreme-3_winrpt.html">March 21, 2024</a> 
					<a href="promotions/2023/2023-Xtreme-3_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
							height="19" border="0" title="Print Winners" />
					</a></li>
					<li><a class="toIframe" href="winners_2023-Xtreme?winrpt=promotions/2023/2023-Xtreme-4_winrpt.html">April 11, 2024</a> 
					<a href="promotions/2023/2023-Xtreme-4_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
							height="19" border="0" title="Print Winners" />
					</a></li>
				</ul>
			</div>	
		</div>
		
			<div>
				<h2 style="text-align: left;">The XTREME CASH Bonus Play Winners</h2>
				<iframe id="iframeContent" name="iframeContent" scrolling="no"
			src='<s:property value="%{content}" />' marginwidth="0"
			marginheight="0" frameborder="0"
			title="Raffle Winners"
			style="width: 650px; height: 500px; margin-top: -60px;"></iframe>
			</div>
		</s:if>
		<s:else>
			<p style="font-weight: bold; text-align: center;">Winners list will be posted starting February 8<sup>th</sup>, 2024</p>
		</s:else>	
		</div>
		
		
	</div>
</div>
<script type="text/javascript">
	$("#iframeContent").on('load', function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});
</script>