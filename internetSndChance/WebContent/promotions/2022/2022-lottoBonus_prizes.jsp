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
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

</style>



<div id="main">
	<div id="topBanner">
		<jsp:include page="../2022/includes/2022-lottoBonus_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>		  
			  <p class="text-bold">This promotion is packed with a 'LOTTO' prizes! </p>
			  <p>In each Lotto Bonus Play drawing, 
			  one grand prize winner will receive $25,000, 
			  two second prize winners will each receive $10,000, 
			  five third prize winners will each receive $5,000, 
			  74 fourth prize winners will each receive $1,000 in gift cards 
			  from The Home Depot<sup>&reg;</sup>, 
			  121 fifth prize winners will each receive $1,000 in Bass Pro Shop<sup>&reg;</sup> gift cards, 
			  and 79 sixth prize winners will receive $500 in Fandango<sup>&reg;</sup>/Vudu<sup>&reg;</sup> gift cards!</p>
		
               <table class="dataTbl">
                    <thead>
                         <tr>
                         	  <th class="txtc">Prize Level</th>
                              <th class="txtc">Prize</th>
                              <th class="txtc">Winners Per Draw</th>
							 <th class="txtc" style="background: #EC1B50; color: #fff;">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc">Grand Prize</td>
                              <td class="txtc">$25,000</td>
							 <td class="txtc">1</td>
							 <td class="txtc" style="background: #FF86C0; color: #fff;">2</td>
							 
                         </tr>
                          <tr>
                              <td class="txtc">Second Prize</td>
                              <td class="txtc">$10,000</td>
							 <td class="txtc">2</td>
							 <td class="txtc" style="background: #EC1B50; color: #fff;">4</td>							 
                         </tr>
						 <tr>
                              <td class="txtc">Third Prize</td>
                              <td class="txtc">$5,000</td>
							 <td class="txtc">5</td>
							 <td class="txtc" style="background: #FF86C0; color: #fff;">10</td>
                         </tr>
						 <tr>
                              <td class="txtc">Fourth Prize</td>
                              <td class="txtc">$1,000 The Home Depot Gift Cards</td>
                              <!--<td class="txtc">$1,000 <br> In gift cards from the Home Depot</td>-->							
							 <td class="txtc">74</td>
							 <td class="txtc" style="background: #EC1B50; color: #fff;">148</td>
                         </tr>
						 <tr>
                              <td class="txtc">Fifth Prize</td>
                              <td class="txtc">$1,000 Bass Pro Shop Gift Cards</td>
							 <!-- <td class="txtc">$1,000 <br>In gift cards from Bass Pro Shop</td>-->
							 <td class="txtc">121</td>
							 <td class="txtc" style="background: #FF86C0; color: #fff;">242</td>
                         </tr>
						 <tr>
                              <td class="txtc">Sixth Prize</td>
                              <td class="txtc">$500 Fandango/Vudu Gift Cards</td>
							<!--<td class="txtc">$500 <br>In gift cards from Fandango/Vudu</td> -->
							 <td class="txtc">79</td>
							 <td class="txtc" style="background: #EC1B50; color: #fff;">158</td>
                         </tr>                                                                             
                    </tbody>
               </table>
           <!--  <p class="prizes-disclaimer">The Home Depot<sup>&reg;</sup>, 
				Bass Pro Shop<sup>&reg;</sup>, 
				Fandango<sup>&reg;</sup>/Vudu<sup>&reg;</sup>
				are not affiliated with this promotion.</p> -->
				<div style="margin-top: -14px; ">
				<p class="prizes-disclaimer">The Home Depot, 
				Bass Pro Shop, Fandango/Vudu
				are not affiliated with this promotion.</p>
				<p class="prizes-disclaimer">Winners will be posted on May 5 and May 26 for each of the Lotto Bonus Play drawings, 
				or as soon as possible thereafter.</p>
               </div>
			<p class="boldNote">
				TICKETS CAN ONLY BE ENTERED BETWEEN THE HOURS OF 6:00 A.M. AND 11:59 P.M., ET. <br> ENTRIES WILL BE LIMITED TO 200 PER PLAYER, PER
				DAY.
			</p>
             
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