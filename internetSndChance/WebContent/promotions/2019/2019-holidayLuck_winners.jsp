<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<s:set var="content" value="%{(#parameters.winrpt)[0]}" />
<s:if
	test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
	<s:set var="content"
		value="%{'promotions/2019/2019-holidayLuck-3_winrpt.html'}" />
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 5;
</script>

<div id="main" class="holidayLuck">
	<div id="topBanner">
		<jsp:include page="includes/2019-holidayLuck_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			<s:property value="messages.h1Title" />
		</h1>
		<div id="subNav">
			<div id="subNavContent">
				<h3>Select a Drawing</h3>
				<ul>


					<li><a class="toIframe"
						href="winners_2019-holidayLuck?winrpt=promotions/2019/2019-holidayLuck-1_winrpt.html">November 20, 2019</a> <a href="promotions/2019/2019-holidayLuck-1_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
							height="19" border="0" title="Print Winners" />
					</a></li>
					<li><a class="toIframe"
						href="winners_2019-holidayLuck?winrpt=promotions/2019/2019-holidayLuck-2_winrpt.html">December 11, 2019</a> <a href="promotions/2019/2019-holidayLuck-2_winrpt.html">
							<img src="images/png/printer.png" alt="Print Winners" width="34"
							height="19" border="0" title="Print Winners" />
					</a></li>
					<li>
						<a class="toIframe" href="winners_2019-holidayLuck?winrpt=promotions/2019/2019-holidayLuck-3_winrpt.html">January 10, 2020</a><a href="promotions/2019/2019-holidayLuck-3_winrpt.html"> 
						  <img src="images/png/printer.png" alt="Print Winners" width="34" height="19" border="0" title="Print Winners" /></a>
					</li>
				</ul>
			</div>
		</div>
		<iframe id="iframeContent" name="iframeContent" scrolling="no"
			src='<s:property value="%{content}" />' marginwidth="0"
			marginheight="0" frameborder="0"
			title="Cash Payday Second Chance Winners"
			style="width: 650px; height: 500px;"></iframe>
	</div>
</div>

<script type="text/javascript">
	$("#iframeContent").on('load' , function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});

	
</script>