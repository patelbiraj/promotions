<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

</style>



<div id="main">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-comeOnDown_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>	
                  
              <div id="mainContent">
			<p style="font-weight:bold;">4 DAY/3 NIGHT TRIP PRIZE</p>    
			<ul style="line-height:25px;">
				<li>Roundtrip coach airfare for Prizewinner and one (1) guest to Las Vegas to occur on or about fall of 2023;</li>
				<li>Ground transportation between Harry Reid International Airport and the destination hotel, and if necessary, between Scientific Games (SG) 
				hosted events;</li>
				<li>One (1) double occupancy room accommodation (room and room tax only) at a 3-star or better hotel on the strip in Las Vegas, Nevada for 
				three (3) nights and $400.00 in meal vouchers to be used at the hotel;</li>
				<li>$4,000 spending money for the Prizewinner;</li>
				<li>Two (2) tickets to a Las Vegas show (winners will be given a choice of options based on availability);</li>
				<li>Admission to the COME ON DOWN Challenge (the "Challenge") theater/venue for the Prizewinner and guest, and the Prizewinner, shall have one (1)
				chance to participate in the Challenge for a chance to win a Prize from $1,000 to $50 Million as further described in the 
				<a href="https://www.floridalottery.com/exptkt/masterComeOnDownChallenge.pdf">Official Challenge Details</a>. The Prizewinner's guest may sit with the Prizewinner but will not be eligible to be a 
				participant unless the guest has been appointed as the Prizewinner's proxy.</li>			
			</ul>
            <p>The Challenge is being administered by SG. Any questions regarding the Challenge, including questions regarding the assignment of proxies, prize payments,
            and tax liability or withholding for Prizes, should be directed to SG at 1-800-201-0108. Participation in the Challenge may be subject to other local, state, and federal laws, 
            including the laws of the State of Nevada.</p>
			</div>	                                  
                     
               
 
		</div>
		<div style="clear: both;">
     <s:if test="%{#attr.messageRemoveDateTime.isAfter(@org.joda.time.DateTime@now())}">
          <jsp:include page="../../includes/alertNotice.jsp"/>
     </s:if>
</div>
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>