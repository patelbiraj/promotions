<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>


<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 2;</script>
<joda:parseDateTime var="messageRemoveDateTime" value="08/08/2018 23:59:59" pattern="M/d/y H:m:s" />
<style type="text/css">

<!--
#main.holiday table.dataTbl { width: 70%; }
#main.holiday table.dataTbl thead tr th, #main.holiday table.dataTbl tbody tr td { text-align: center; }
#main.holiday table.dataTbl tbody tr td p, #main.holiday table.dataTbl tbody tr td ul li { text-align: left; }
-->
</style>



<div id="main" class="Super Grouper prizes">
	<div id="topBanner">
		<jsp:include page="../2018/includes/2018-superGrouper_navigation.jsp"></jsp:include>
	</div>
	
     <div id="mainContentWrap">
          <div id="mainContent">
               <h1><s:property value="messages.h1Title" /></h1>
			   <p class="" style="text-align: center;margin-bottom:-25px;font-size: 15px; color:#d4482f; margin-top: 25px;"><strong>$400,000 Super GROUPER<sup>&reg;</sup> Promotion</strong></p>
			  <br>
               <table class="dataTbl">
                    <thead>
                         <tr>
                              <th class="txtc">Prizes</th>
                              <th class="txtc">Winners Per Draw</th>
							 <th class="txtc">Total Winners</th>
                         </tr>
                    </thead>
                    <tbody>
                         <tr>
                              <td class="txtc"><strong>Top Prize:</strong> $20,000</td>
							 <td class="txtc">4</td>
							 <td class="txtc">16</td>
							 
                         </tr>
                         <tr>
                              <td class="txtc"><strong>Second Prize:</strong> $1,000</td>
                              <td class="txtc">20</td>
							  <td class="txtc">80</td>
                         </tr>  
                         <tr>
							 <td class="txtc"><strong>TOTAL</strong> </td>
							 <td class="txtc"><strong>24</strong></td>
							 <td class="txtc"><strong>96</strong></td>
							 
                         </tr>                            
                    </tbody>
               </table>
               
            

             
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