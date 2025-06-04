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
               <h1>PLAYING THE INTERACTIVE GAMES</h1>
               
               <p style="margin-left: 150px; font-size: 20px; margin-top: 25px;"><strong>PLINKO<sup>&reg;</sup></strong></p>
               <div>
               		<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_InteractiveGames_Plinko.jpg" style="float: left;"/>
               		<p>Each PLINKO<sup>&reg;</sup> chip will move right and left across the top of the board.</p>
               		<p style="margin-top: 70px;">Clicking or tapping on the game board will cause the chip to drop and fall into one of the nine spaces.</p>
               		<p style="margin-top: 70px;">You win the total number of entries associated with the spaces in which all three chips landed.</p>
               </div>
               <p style="margin-top:150px; margin-left: 150px; font-size: 20px;"><strong>PUNCH A BUNCH<sup>&#8482;</sup></strong></p>
               <div >
               		<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_InteractiveGames_Punch_a_Bunch.jpg" style="float: left;">
               		<p>In PUNCH A BUNCH<sup>&#8482;</sup> you are shown twenty-five available prize holes to select from.</p>
               		<p style="margin-top: 70px;">Select a prize hole by clicking or tapping on one.</p>
               		<p style="margin-top: 90px;">You win the total entries from all three punched holes.</p>
               </div>
               <p style="margin-top:150px; margin-left: 150px; font-size: 20px;"><strong>SHELL GAME<sup>&#8482;</sup></strong></p>
 				<div >
               		<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_InteractiveGames_Pick_a_Cup.jpg" style="float: left;">
               		<p>To start, a cup with a ball underneath will be shown.</p>
               		<p style="margin-top: 80px;">Follow the ball as the cups get shuffled and select a cup where you believe the ball is.</p>
               		<p style="margin-top: 70px;">If the ball is underneath the selected cup, you will win drawing entries for your selections.</p>
               </div>
               
               <p style="margin-top:125px; margin-left: 150px; font-size: 20px;"><strong>SECRET "X"<sup>&#8482;</sup></strong></p>
 				<div >
               		<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_InteractiveGames_Secret_X.jpg" style="float: left;">
               		<p>Place your three X's on the right or left side of the board, in an available, highlighted space.</p>
               		<p style="margin-top: 70px;">After all three X's have been placed, the middle row will rotate to reveal where the hidden X is.</p>
               		<p style="margin-top: 70px;">If you matched three X's in a row, diagonally, or horizontally, you win the total number of entries 
               		associated with the matched X's.</p>
               </div>
               
               <p style="margin-top:125px; margin-left: 0px; font-size:20px; ">If you experience technical difficulties while playing or attempting to play a game, or if you
               choose not to play a game, the points* that would have been revealed in the course of playing a game will be credited to your entry account.</p>
		</div>
		</div>
		
		
          <div class="field"></div>
          <br style="clear: both;">
	</div>
</div>