<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.flalottery.secondchance.utility.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda" %>
<%-- <script type="text/javascript" src="js/slides.jquery.1.2.custom.min.js"></script> --%>
<script type="text/javascript" src="js/jquery.slides.min.js"></script>

<style>
	.slide{
		display:none;
		transition: 1s
	}
	.nextLargeSlideShowBanner{
		cursor: pointer;
	}
	.prevLargeSlideShowBanner{
		cursor: pointer;
		user-select: none;
	}
</style>

<!----------------------------------------------------------------- TIMERS START --------------------------------------------------------------------------------------->

	<joda:parseDateTime var="nascar" value="6/30/2024 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="nascarEnd" value="8/1/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="holiday" value="10/28/2024 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="holidayEnd" value="1/12/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="goldRush" value="01/13/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="goldRushEnd" value="04/07/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="dailyCash" value="01/13/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="dailyCashEnd" value="03/23/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="raffle" value="04/07/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="raffleEnd" value="5/18/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="summerFun" value="05/19/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="summerFunEnd" value="6/30/2025 00:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="forLife" value="04/07/2025 06:00:00" pattern="M/d/y H:m:s" />
	<joda:parseDateTime var="forLifeEnd" value="08/10/2025 00:00:00" pattern="M/d/y H:m:s" />

<!------------------------------------------------------------------ TIMERS END ----------------------------------------------------------------------------------------->

<!----------------------------------------------------------------- ALCHEMY PROMOTIONS START--------------------------------------------------------------------------------------->
<%
	String gameUrl = "https://www.alchemy3dev.com/fl-symbols/app/index.html?promotion=10";
	String envType1 = RunTimeEnv.getEnvType();
	if (envType1.equals(RunTimeEnv.PROD)) {
		gameUrl = "https://www.collectwin.com/fl-symbols/app/index.html?promotion=10";
	} 
	if(session.getAttribute("promo-url") != null) {
		gameUrl = gameUrl + session.getAttribute("promo-url");
	}
%>

<%
	String gameUrl2 = "https://www.alchemy3dev.com/fl-symbols/app/index.html?promotion=9";
	String envType2 = RunTimeEnv.getEnvType();
	if (envType2.equals(RunTimeEnv.PROD)) {
		gameUrl2 = "https://www.collectwin.com/fl-symbols/app/index.html?promotion=9";
	} 
	if(session.getAttribute("promo-url") != null) {
		gameUrl2 = gameUrl2 + session.getAttribute("promo-url");
	}
%>
<!----------------------------------------------------------------- ALCHEMY PROMOTIONS END --------------------------------------------------------------------------------------->

<div id="main">

	<!-------------------------------------------------------------------------- BANNERS START -------------------------------------------------------------------------->	
	<div id="largeSlideShow">
		<div class="whtFade"></div>
		<div class="slides_container">
			
			<s:if test="%{#attr.forLife.isBefore(@org.joda.time.DateTime@now()) && #attr.forLifeEnd.isAfter(@org.joda.time.DateTime@now())}">
				<div class="slide noScriptBanner">
					<div class="largeBanner" style="background: transparent url(promotions/2025/images/png/forlife-headerbanner.png) no-repeat center top; ">
						<div class="contentAreaMain">
							<a href="howToPlay_2025-forLife" class="contentAreaMain"><img src="images/gif/transparent.gif" width="1" height="1" alt="2025 Pick Raffle Play Promotion" /></a>
						</div>
						<div class="homepageRotationBanner"></div>
					</div>
				</div>
			</s:if>
			
			<s:if test="%{#attr.nascar.isBefore(@org.joda.time.DateTime@now()) && #attr.nascarEnd.isAfter(@org.joda.time.DateTime@now())}">
				<div class="slide noScriptBanner">
					<div class="largeBanner" style="background: transparent url(promotions/2025/images/png/nascar-2025-web-banner.png) no-repeat center top; ">
						<div class="contentAreaMain">
							<a href="howToPlay_2025-nascar" class="contentAreaMain"><img src="images/gif/transparent.gif" width="1" height="1" alt="2025 Nascar Bonus Play Promotion" /></a>
						</div>
						<div class="homepageRotationBanner"></div>
					</div>
				</div>
			</s:if>
				
			<s:if test="%{#attr.summerFun.isBefore(@org.joda.time.DateTime@now()) && #attr.summerFunEnd.isAfter(@org.joda.time.DateTime@now())}">
				<div class="slide noScriptBanner">
					<div class="largeBanner" style="background: transparent url(promotions/2025/images/png/itsgoodsummerfun-headerbanner.png) no-repeat center top; ">
						<div class="contentAreaMain">
							<a href="<%=gameUrl %>" class="contentAreaMain"><img src="images/gif/transparent.gif" width="1" height="1" alt="2025 Pick Raffle Play Promotion" /></a>
						</div>
						<div class="homepageRotationBanner"></div>
					</div>
				</div>
			</s:if>		
			
			<s:if test="%{#attr.raffle.isBefore(@org.joda.time.DateTime@now()) && #attr.raffleEnd.isAfter(@org.joda.time.DateTime@now())}">
				<div class="slide noScriptBanner">
					<div class="largeBanner" style="background: transparent url(promotions/2025/images/png/pickraffle-headerbanner.png) no-repeat center top; ">
						<div class="contentAreaMain">
							<a href="howToPlay_2025-Raffle" class="contentAreaMain"><img src="images/gif/transparent.gif" width="1" height="1" alt="2025 Pick Raffle Play Promotion" /></a>
						</div>
						<div class="homepageRotationBanner"></div>
					</div>
				</div>
			</s:if>
			
			
							
			<a  class="prevLargeSlideShowBanner noScript" onClick="plusSlides(-1)"></a>
			<a class="nextLargeSlideShowBanner noScript" onClick="plusSlides(1)"></a>
			
			<s:else>
				<div class="slide noScriptBanner">
					<img class="largeBanner" src="images/jpg/Formatted_SocialPromo_BonusPlayPage_Banner_2024.jpg" alt="Check Back Soon" usemap="#socials"/>
					<map name="socials">
						<area shape="circle" coords="310,162,14" alt="Facebook" href="https://www.facebook.com/FloridaLottery/">
						<area shape="circle" coords="346,162,14" alt="X" href="https://www.X.com/FloridaLottery/">
						<area shape="circle" coords="382,162,14" alt="Instagram" href="https://www.instagram.com/FloridaLottery/">
						<area shape="circle" coords="418,162,14" alt="Youtube" href="https://www.youtube.com/FloridaLottery/">
						<area shape="rect" coords="0,0,960,240" alt="Flamingo Follower" href="https://bonusplay.floridalottery.com/secondchance/registerEmail">
					</map>
				</div>
			</s:else>	
							
		</div>
	</div>
	<!---------------------------------------------------------------------------- BANNERS END ----------------------------------------------------------------------------->		
			
			
	<div id="mainContent" style="padding-bottom: 0; ">
		<div id="homePage">	
	        <!----------------------------------------------------------------- THUMBNAIL START --------------------------------------------------------------------------------------->
			<div id="rightHome">
				<s:if test="%{#attr.forLife.isBefore(@org.joda.time.DateTime@now()) && #attr.forLifeEnd.isAfter(@org.joda.time.DateTime@now())}">
					<a href="howToPlay_2025-forLife"><img src="promotions/2025/images/png/forlife-thumbnail.png" width="96" height="96" alt="For Life Bonus Play Promotion"/></a>
				</s:if> 
				<s:if test="%{#attr.nascar.isBefore(@org.joda.time.DateTime@now()) && #attr.nascarEnd.isAfter(@org.joda.time.DateTime@now())}">
					<a href="howToPlay_2025-nascar"><img src="promotions/2025/images/png/nascar-2025-thumbnail.png" width="96" height="96" alt="Nascar Bonus Play Promotion"/></a>
				</s:if>
				<s:if test="%{#attr.raffle.isBefore(@org.joda.time.DateTime@now()) && #attr.raffleEnd.isAfter(@org.joda.time.DateTime@now())}">
					<a href="howToPlay_2025-Raffle"><img src="promotions/2025/images/png/pickraffle-thumbnail.png" width="96" height="96" alt="Holiday Bonus Play Promotion"/></a>
				</s:if>
				<s:if test="%{#attr.summerFun.isBefore(@org.joda.time.DateTime@now()) && #attr.summerFunEnd.isAfter(@org.joda.time.DateTime@now())}">
					<a href= <%=gameUrl%>><img src="promotions/2025/images/png/itsgoodsummerfun-thumbnail.png" width="96" height="96" alt="Daily Cash Promotion"/></a>
				</s:if>
		  	</div>
		  	<!------------------------------------------------------------------ THUMBNAIL END ----------------------------------------------------------------------------------------->
		  	
		  	
		  	<!------------------------------------------------------------- LEFT-SIDE SECTION START ------------------------------------------------------------------------------------>
			<h1>More Ways to Play and Win!</h1>
			<p>
				Become a Flamingo Follower by <a href="registerFull">signing up</a> today to receive emails for special offers and upcoming promotions! 
			</p>
			<p>
				Florida Lottery Promotions offer you new ways to play and more ways to win cash or other great prizes! From winning an instant cash prize when you purchase to entering 
				tickets for extra chances to win in promotional drawings.
			</p>
			<!-------------------------------------------------------------- LEFT-SIDE SECTION END ------------------------------------------------------------------------------------->
		</div>
	</div>  
	
	
	<!------------------------------------------------------------- YOUTUBE SECTION START ------------------------------------------------------------------------------------>
	<div>
		<div style="margin-left:50px; margin-right:50px;">
			<hr>
		</div>
		<div id="mainContent" style="padding-bottom: 0; ">
			<div id="homePage">	
				<div id="leftHome">
					<h1>What is Bonus Play?</h1>
					<p>For more information about Bonus Play, please visit our <a href="FAQs">Frequently Asked Questions</a> page.</p>
				</div>
			</div>
		</div>
		<div style="height:315px; width:710px; padding-bottom: 75px; padding-top: 30px;">
		 	<iframe width="700" height="330" src="https://www.youtube-nocookie.com/embed/cEb6t_g8iHU?rel=0&amp;autoplay=0&amp;wmode=transparent" 
		 		style="padding-bottom: 75px;padding-left:150px;" marginwidth="" marginheight="0" scrolling="No" frameborder="0"  allowfullscreen>
		 	</iframe>	 
		</div>
	</div>
	<!------------------------------------------------------------- YOUTUBE SECTION START ------------------------------------------------------------------------------------>
	
</div>

<script type="text/javascript">
	var slideIndex = 0;
	showSlides(slideIndex);
	$(document).ready(function(){
		$('.noScript, .noScriptBanner').removeClass('noScript');
		var defaultColor = "#EEE";
		var j = defaultColor;
		if(undefined != $('#largeSlideShow').find('.slide:first').data("secondaryNavColor")){
			j = $('#largeSlideShow').find('.slide:first').data("secondaryNavColor");
		}
		$('#navSecondary ul li a').animate({ color: j }, 'slow');
	});
	$(function(){
		$('#largeSlideShow').slides({
			effect: 'fade',
			crossfade: true,
			play: 5000,
			pause: 3500,
			hoverPause: true,
			fadeSpeed: 500,
			next: 'nextLargeSlideShowBanner',
			prev: 'prevLargeSlideShowBanner'
		});
	});
	function showSlides(n){
	
		let i;
		let slides = document.getElementsByClassName("slide");
		for (i = 0; i < slides.length; i++)
			slides[i].style.display = "none";
		if (n > slides.length - 1)
			slideIndex = 0;
		else if(n < 0)
			slideIndex = slides.length - 1;
		else
			slideIndex = n;					
		slides[slideIndex].style.display = "block";
	}
	function plusSlides(n){
		
		showSlides(n + slideIndex);
	}
</script>

<!-- Start of DoubleClick Floodlight Tag: Please do not remove
Activity name of this tag: IP134393 Second Chance Page_~IP134393
URL of the webpage where the tag is expected to be placed: https://secondchance.floridalottery.com/secondchance/
This tag must be placed between the <body> and </body> tags, as close as possible to the opening tag.
Creation Date: 08/28/2013 -->
<script type="text/javascript">
var axel = Math.random() + "";
var a = axel * 10000000000000;
document.write('<iframe src="https://4207669.fls.doubleclick.net/activityi;src=4207669;type=ip134559;cat=ip134040;ord=' + a + '?" width="1" height="1" frameborder="0" style="display:none;"></iframe>');
</script>
<noscript>
<iframe src="https://4207669.fls.doubleclick.net/activityi;src=4207669;type=ip134559;cat=ip134040;ord=1?" width="1" height="1" frameborder="0" style="display:none;"></iframe>
</noscript>
<!-- End of DoubleClick Floodlight Tag: Please do not remove -->

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '679268802253162'); 
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=679268802253162&ev=PageView&noscript=1"
/></noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->



<script type="text/javascript"> 
var ftRandom = Math.random()*1000000; 
document.write('<iframe style="position:absolute; visibility:hidden; width:1px; height:1px;" src="https://servedby.flashtalking.com/container/1752;21041;2571;iframe/?spotName=Second_Chance_Page&cachebuster='+ftRandom+'"></iframe>');
</script>