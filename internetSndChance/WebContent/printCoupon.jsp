<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script type="text/javascript">
	document.getElementsByTagName("BODY")[0].onafterprint = function(){goToLanding()};	
	function printCoupon() {
      window.print();  
      goToLanding();
    }
    function goToLanding(){
      document.getElementById("viewCouponDiv").style.display = "none";
      document.getElementById("thankYouDiv").style.display = "block";
    }
    function backToCoupons(){
      document.getElementById("viewCouponDiv").style.display = "block";
      document.getElementById("thankYouDiv").style.display = "none";
    }
</script>
<style type="text/css">
@media print {
	img#siteLogo, #lotteryLogo, #thankYouDiv { display: none; }
}
</style>

<div id="main">
	<div id="mainContent">
		<div id="viewCouponDiv">
			<jsp:include page="coupons/${request.couponInclude}"></jsp:include>				
		</div>		
		<div id="thankYouDiv">
			<jsp:include page="coupons/${request.thankYouInclude}"></jsp:include>
		</div>
	</div>
</div>
