<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<s:set var="content" value="%{(#parameters.winrpt)[0]}"/>
<s:if test="%{@org.apache.commons.lang3.StringUtils@isBlank(#attr.content)}">
	<s:set var="content" value="%{'promotions/2018/2018-holidayBonus-3_winrpt.html'}"/>
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 5;</script>

<link rel='stylesheet' type='text/css' href='promotions/2018/style/2018-HolidayBonus_styles.css' />

<div id="main" class="holidayBonusFamily">
	<div id="topBanner">
		<jsp:include page="includes/2018-holidayBonusFamily_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1><s:property value="messages.h1Title" /></h1>
		<div id="subNav">
			<div id="subNavContent">
				<h3>Select a Drawing</h3>
				<ul>
	
        
          <li style="color: #d4482f">
           <a class="toIframe" href="winners_2018-holidayBonusFamily?winrpt=promotions/2018/2018-holidayBonus-1_winrpt.html">November 21, 2018</a>
            <a href="promotions/2018/2018-holidayBonus-1_winrpt.html">
           <img src="images/png/printer.png" alt="Print Winners" width="34" height="19" border="0" title="Print Winners" /></a>          
          </li>
		 <li style="color: #d4482f">
          <a class="toIframe" href="winners_2018-holidayBonusFamily?winrpt=promotions/2018/2018-holidayBonus-2_winrpt.html">December 12, 2018</a>
            <a href="promotions/2018/2018-holidayBonus-2_winrpt.html">
            <img  src="images/png/printer.png" alt="Print Winners" width="34" height="19" border="0" title="Print Winners" /></a>
          </li>
           <li style="color: #d4482f">
          <a class="toIframe" href="winners_2018-holidayBonusFamily?winrpt=promotions/2018/2018-holidayBonus-3_winrpt.html">January 2, 2019</a>
            <a href="promotions/2018/2018-holidayBonus-3_winrpt.html">
            <img src="images/png/printer.png" alt="Print Winners" width="34" height="19" border="0" title="Print Winners" /></a>
          </li>
           
				</ul>
			</div>
        </div>
		<iframe id="iframeContent" name="iframeContent" scrolling="no" src='<s:property value="%{content}" />' marginwidth="0" marginheight="0" frameborder="0" title="Holiday Bonus Family" style="width: 650px; height: 500px; "></iframe>
	</div>
</div>

<script type="text/javascript">
$("#iframeContent").on('load', function(){
	var documentHeight = $(this).contents().height() + 10;
	$(this).css("height", documentHeight);
});
</script>