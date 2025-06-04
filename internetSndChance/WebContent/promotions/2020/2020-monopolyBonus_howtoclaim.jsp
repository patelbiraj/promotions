<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 6;</script>

<div id="main">
	<div id="topBanner">
		<jsp:include page="../2020/includes/2020-monopolyBonus_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
	  <div id="mainContent">
		<h1><s:property value="messages.h1Title" /></h1>
		  <p>If you're a winner in the  MONOPOLY&trade; Bonus Promotion, congratulations!</p>
          <p>The Florida Lottery's Claims Processing Office will attempt to notify the prize winners no later than one business day after the prizewinners are posted on the Florida Lottery's website. If you have not yet been contacted and would like to claim your prize, please call (850) 487-7707.</p>
			<p>To claim any prize, the winner must submit to the Florida Lottery the following documentation:</p>	
				
			<ol>
				<li>The original valid non-winning, <strong>MONOPOLY BONUS SPECTACULAR</strong> Scratch-Off ticket bearing the entry number selected in the drawing. Without such ticket, the winner will forfeit his or her right to claim a prize.  </li>
								
				<li>Completed and signed <a href="http://www.flalottery.com/exptkt/claimForm_en.pdf" target="_blank">Winner Claim Form</a>.</li>
				
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
            <p>The required documentation may either be delivered to one of the <a href="http://www.flalottery.com/lotteryOffices">Lottery Offices</a> or mailed to:</p>
               <blockquote>
					Florida Lottery<br/>
					   <strong>Attention: Director of Claims Processing</strong><br/>
					250 Marriott Drive<br/>
					Tallahassee, FL 32399-4027
               </blockquote>
		  
			<p>U.S. Postal Service regulations include various restrictions on mailing Lottery tickets. The risk of mailing tickets remains with the player and will not be assumed by the Lottery.</p>

		  	<p><span class = "u">The required documentation must be received by the Florida Lottery no later than <strong>fourteen</strong> calendar days after being notified by the Florida Lottery that you are a winner.</span></p>
			   
			<p><strong>Failure to submit all required documentation within the required time frame will result in forfeiture of the prize.</strong></p>
			   
			               
			<p>For additional information about claiming prizes and alternate winners, please read the Official <a href="rules_2020-monopolyBonus">MONOPOLY BONUS Promotion Rule </a>.</p>
     		<img src="promotions/2018/images/jpg/MonopolyJackpot_Icon.jpg" alt="Monopoly Jackpot Icon" width="31" height="34" align="left"><p style="padding-left: 25px; margin-left: 25px; font-size: 10px;"> The MONOPOLY name and logo, the distinctive design of the game board, the four corner squares, the MR. MONOPOLY name and character, as well as each of the distinctive elements of the board and playing pieces are trademarks of Hasbro for its property trading game and game equipment. &copy;  1935, 2019 Hasbro. All Rights Reserved. Licensed by Hasbro.</p>         
	
		</div>
	</div>
</div>