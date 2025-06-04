<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		value="%{'promotions/2022/2022-jackpotRaffle-5_winrpt.html'}" />
</s:if>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">
	var page = 5;
	
 	var baseurl = 'winners_2022-jackpotRaffle?winrpt='; 
	function visit1(){
		var query = "promotions/2022/2022-jackpotRaffle-1_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	function visit2(){
		var query = "promotions/2022/2022-jackpotRaffle-2_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	function visit3(){
		var query = "promotions/2022/2022-jackpotRaffle-3_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	function visit4(){
		var query = "promotions/2022/2022-jackpotRaffle-4_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	function visit5(){
		var query = "promotions/2022/2022-jackpotRaffle-5_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	
/* 	function visit(){
	
	if(document.getElementById("1").id == "1"){
		query = "promotions/2022/2022-jackpotRaffle-1_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	else if(document.getElementById("2").id == "2"){
		query = "promotions/2022/2022-jackpotRaffle-2_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	else if(document.getElementById("3").id == "3"){
		query = "promotions/2022/2022-jackpotRaffle-3_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	else if(document.getElementById("4").id == "4"){
		query = "promotions/2022/2022-jackpotRaffle-4_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	else if(document.getElementById("5").id == "5"){
		query = "promotions/2022/2022-jackpotRaffle-5_winrpt.html";
		var url = baseurl + encodeURIComponent(query);
		location.href =  url;
	}
	} */
	
</script>

<div id="main" class="lottoCash">
	<div id="topBanner">
		<jsp:include page="../2022/includes/2022-jackpotRaffle_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContent">
		<h1>
			<s:property value="messages.h1Title" />
		</h1>
		<div id="subNav">
			<div id="subNavContent">
				<h3>Select a Drawing</h3>
				<ul>
					 <li><a id="1" onClick="visit1()" class="toIframe" href="#">October 6, 2022</a></li>
					 <li><a id="2" onClick="visit2()" class="toIframe" href="#">October 13, 2022</a></li>
					 <li><a id="3" onClick="visit3()" class="toIframe" href="#">October 20, 2022</a></li>
					 <li><a id="4" onClick="visit4()" class="toIframe" href="#">October 27, 2022</a></li>
					 <li><a id="5" onClick="visit5()" class="toIframe" href="#">November 1, 2022</a></li>
				</ul>
			</div>
		</div>
		<iframe id="iframeContent" name="iframeContent" scrolling="no" src='<s:property value="%{content}" />' marginwidth="0" marginheight="0" frameborder="0" title="Jackpot Raffle Winners" style="width: 650px; height: 500px;"></iframe>
	</div>
</div>

<script type="text/javascript">
	$("#iframeContent").on('load', function() {
		var documentHeight = $(this).contents().height() + 10;
		$(this).css("height", documentHeight);
	});

	
</script>