<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<meta http-equiv="Content-Security-Policy" content="default-src 'self'; frame-ancestors 'self'; img-src *;">

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 6;</script>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2021/includes/2021-guyharvey_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
	  <div id="mainContent">
		<h1><s:property value="messages.h1Title" /></h1>
		  <p>If you're a winner in the  <b>Trucks, Bucks and Trips Promotion</b>, congratulations!</p>
          <p>The Florida Lottery's Claims Processing Office will attempt to notify the prize winners no later than one business day after the prizewinners are posted on the Florida Lottery's website. If you have not yet been contacted and would like to claim your prize, please call (850) 487-7707.</p>
			<p>To claim any prize, the winner must submit to the Florida Lottery the following documentation:</p>	
				
			<ol>
				
				<li>Completed and signed Winner Claim Form: <a href="http://www.floridalottery.com/exptkt/englishWinnerClaim.pdf" target="_blank">English</a>  <a href="http://www.floridalottery.com/exptkt/spanishWinnerClaim.pdf" target="_blank">Spanish</a>.</li>
				<li>The Florida Lottery original valid non-winning Guy Harvey $500,000 FLORIDA CASH Scratch-Off lottery ticket bearing the ticket number selected in the drawing.   Without such ticket, the prizewinner will forfeit his or her right to claim a prize.</li>
				
				<li>Copy of acceptable identification that is current or was issued within the past five years and bears a serial number or other identifying number.</li>
            </ol>  
			
					
		<p><strong>Acceptable forms of identification include: </strong></p>		         		
			<ul>
				<li>An identification card or driver's license issued by a public agency authorized to issue driver's licenses in Florida, a state other than Florida, a territory of the U.S., Canada, or Mexico.</li>
				<li>A passport issued by the U.S. Department of State.</li>
				<li>A passport issued by a foreign government.</li>
				<li>An identification card issued by any branch of the U.S. Armed Forces.</li>
				<li>An identification card issued by the United States Bureau of Citizenship and Immigration Services.</li>
            </ul> 
		  <p>Additional claim documentation for the <strong><u>grand prize</u></strong> winner:</p>
		  <ol>
		  <li>A completed Winner Release, Acknowledgement and Authorization form <a href="http://www.floridalottery.com/exptkt/DOL-474-GH-W-Truck-WinnerReleaseForm.pdf" target="_blank">DOL-474-GH-W-Truck</a>, effective 5/21.</li>
		  </ol>
		  <p>Additional claim documentation for the <strong><u>second prize</u></strong> winner:</p>
		  <ol>
		  <li>A completed Winner Release, Acknowledgement and Authorization form <a href="http://www.floridalottery.com/exptkt/DOL-474-GH-W-Trip-WinnerReleaseForm.pdf" target="_blank">DOL-474-GH-W-Trip</a>, effective 5/21.</li>
		  <li>Guest Release, Acknowledgement and Authorization form <a href="http://www.floridalottery.com/exptkt/DOL-474-GH-G-GuestReleaseForm.pdf" target="_blank">DOL-474-GH-G-Trip</a>, effective 5/21.</li>
		  </ol>
            <p>The required documentation may either be delivered to one of the <a href="http://www.floridalottery.com/lotteryOffices">Lottery Offices</a> or mailed to:</p>
               <blockquote>
					Florida Lottery<br/>
						<strong>Trucks, Bucks and Trips Promotion</strong><br/>
					   <strong>Attention: Director of Claims Processing</strong><br/>
					250 Marriott Drive<br/>
					Tallahassee, FL 32399-4027
               </blockquote>
		  
			<p>U.S. Postal Service regulations include various restrictions on mailing Lottery tickets. The risk of mailing tickets remains with the player and will not be assumed by the Florida Lottery.</p>

		  	<p>The required documentation must be received by the Florida Lottery no later than fourteen <strong>calendar</strong> days after being notified by the Florida Lottery that you are a winner.</p>
			   
			<p><strong>Failure to submit all required documentation within the required time frame will result in forfeiture of the prize.</strong></p>
			   
			               
			<p>For additional information about claiming prizes and alternate winners, please read the Official <a href="rules_2021-guyharvey">Trucks, Bucks and Trips Promotion Rule</a>.</p>
     		         
	
		</div>
	</div>
</div>