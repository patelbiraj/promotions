<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<%
	response.setHeader("X-Frame-Options", "sameorigin");
	response.setHeader("X-Content-Type-Options", "nosniff");
	response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
%>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 1;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-comeOnDown_navigation.jsp"></jsp:include>
	</div>
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1 style="color:#962120"><s:property value="messages.h1Title" /></h1>
               <p style="line-height: 20px;">Beginning February 27 through March 26, 2023, you can use the Florida Lottery app or website to enter non-winning THE PRICE IS RIGHT<sup>&#8482;</sup> Scratch-Off tickets into the COME ON DOWN Challenge Bonus Play Promotion for  a chance to win one of 20 trips to Las Vegas! Winners will have an opportunity to play for a prize of up to $50 million!</p>
               <p style="line-height: 20px;">One drawing will be held from tickets entered on the Florida Lottery app or website by midnight, ET on March 26. The drawing will be held on March 28 and winners will be announced on March 30, 2023.</p>
			   
			   

               <!-- <h3 class="tableCaption"></h3> -->
               <table style="margin: 0 auto; width:700px; text-align:center; font-size:15px; ">
					<tr style=" color:#fff; background-color:#000; height: 50px;" >
						<th style="width:100px; vertical-align:middle; ">Draw</th>
						<th style="vertical-align: middle">Entry Period</th>
						<th style="vertical-align: middle">Draw Date</th>
						<th style="vertical-align: middle">Total Winners</th>
						<th style="background-color:#EAA441; color:#000; vertical-align:middle;">Winners Announced</th>
					</tr>
					<tr style="text-align: center; height: 50px;">
						<td style="background-color:#fff; color: #000; vertical-align:middle">1</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">February 27 - March 26, 2023</td>
						<td style="background-color:#fff; color: #000; vertical-align:middle">March 28, 2023</td>
						<td style="background-color: #F1F1F1; color: #000; vertical-align:middle">20</td>
						<td style="background-color: #C9863F; vertical-align:middle;">March 30, 2023</td>
					</tr>
				</table>
				<p style="text-align:center; margin-top: 15px;"><i>*Entries must be submitted before midnight, ET on the final day of the entry period.</i></p>
				<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_HowToPlay_button.jpg" usemap="#button1">
				<p>Click on the "Enter Tickets Here" button above to enter the Bonus Play Promotion one of two ways:</p>
				<ol style="line-height: 20px;">
					<li>Enter your ticket number to play one of four THE PRICE IS RIGHT<sup>&#8482;</sup> interactive games and 
					collect points*. The more points* you collect, the more entries you will have in the drawing.
					<br><span style="margin-left: 400px;"><strong>- OR -</strong></span></li>
					<li>Enter the Bonus Play drawing directly by submitting your non-winning ticket number to reveal the points* assigned to your ticket.</li>
				</ol>
				
				<p style="font-weight:bold; line-height: 20px; text-align:center; font-size: 15px;">Please Note: THE PRICE IS RIGHT<sup>&#8482;</sup> interactive game is only accessible immediately after 
				submitting an eligible non-winning ticket. If you choose not to access THE PRICE IS RIGHT<sup>&#8482;</sup> interactive games when invited to do so, 
				you forfeit that opportunity.</p>
				
				<p style="text-align: center; font-size:17px; color: #981D24; font-weight: bold;">PLAY THE PRICE IS RIGHT<sup>&#8482;</sup> interactive game 
				to see if your ticket is awarded 5, 10, 15, 20, or 25 entries!</p>
          		<img src="promotions/2023/images/jpg/WEB_TPIR_BonusPlayPage_HowToPlay_igt.jpg" usemap="#button2">
          		<map name="button1">
          			<area shape="rect" href="entry_2023-comeOnDown" coords="318, 8, 577, 62">
          		</map>
          		<map name="button2">
          			<area shape="rect" href="games_2023-comeOnDown" coords="256, 11, 619, 69">
          		</map>
          </div>
     </div>
</div>