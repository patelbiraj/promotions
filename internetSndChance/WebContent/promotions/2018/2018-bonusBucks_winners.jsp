<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<s:set var="content" value="%{(#parameters.winrpt)[0]}"/>
<s:if test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
	<s:set var="content" value="%{'promotions/2018/2018-bonusBucks-1_winrpt.html'}"/>
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 5;</script>

<div id="main" class="cashSupply">
	<div id="topBanner">
		<jsp:include page="../2018/includes/2018-bonusBucks_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1><s:property value="messages.h1Title" /></h1>
		<div id="subNav">
			<div id="subNavContent">
				<h3>Select a Drawing</h3>
				<ul>
	
        
          <li style="color: #7e020a">
           <a class="toIframe" href="winners_2018-bonusBucks?winrpt=promotions/2018/2018-bonusBucks-1_winrpt.html">March 2, 2018</a>
            <a href="promotions/2018/2018-bonusBucks-1_winrpt.html">
           <img src="images/png/printer.png" alt="Print Winners" width="34" height="19" border="0" title="Print Winners" /></a>
                       
          </li>

				</ul>
			</div>
        </div>
		<iframe id="iframeContent" name="iframeContent" scrolling="no" src='<s:property value="%{content}" />' marginwidth="0" marginheight="0" frameborder="0" title="Gold Rush Doubler Winners" style="width: 650px; height: 500px; "></iframe>
	</div>
</div>

<script type="text/javascript">
$("#iframeContent").on('load', function(){
	var documentHeight = $(this).contents().height() + 10;
	$(this).css("height", documentHeight);
});
</script>