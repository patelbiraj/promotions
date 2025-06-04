<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<script type="text/javascript" src="js/ticketAndVoucherEntry.js"></script>
<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 4;</script>
<script type="text/javascript">
	window.addEventListener("message", function(params) {
		if (params && params.data.message === 'scanResults') {
			if (params.data.ticket) {
				document.ticketEntryForm.ticketNumber.value = params.data.ticket;
			} else if (params.data.error) {
				//TODO populate error message in microsite.
			}
		}
	}, false);

	function isMobile() {
		return navigator.userAgentData.mobile;
	}
	
	function setMobileEntry() {
		document.getElementById("isScanned").value=true;
		window.parent.postMessage({message: 'scanTicket'},'*');
	}

</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#ticketEntryForm').submit(function() {
/*             if (!validateTicketEntryForm(19)) {
                return false;
            }
 */
            dataLayer.push({
                event: 'ticket-entry-submit',
                ticketNumber: document.ticketEntryForm.ticketNumber.value,
				ticketNumberPin: document.ticketEntryForm.ticketNumberPin.value,
                fbPromoCode: document.ticketEntryForm.fbPromoCode.value
            });
        });
    });
</script>
<div id="main">
	<div id="topBanner">
		<jsp:include
			page="../2023/includes/2023-Xtreme_navigation.jsp"></jsp:include>
	</div>
	<div id="mainContentWrap">
		<div id="mainContent">
			<div class="content_red">
				<s:property escapeHtml="false" value="messages.message" />
				<s:fielderror fieldName="form.ticketNumber" escape="false" />
			</div> 
			<h1><s:property value="messages.h1Title"/></h1>
			<p style = "text-decoration:underline;">The prize must be claimed no later than <span style = "color: red;">ten calendar</span> days after being notified (by phone or email) by the Florida Lottery that you are a winner.</p>
			
			<p style = "text-decoration:underline; font-weight: bold;"><br>Failure to submit all required documentation and claim the prize within the required time frame will result in forfeiture of the prize.</p>
			<table class = "dataTbl">
			  <tr>
			  
			    <th>Drawing</tH>
			    <th>Drawing Date</th>
			    <th>Entry Period</th>
			  </tr>
			  <tr>
			    <td>1</td>
			    <td>February 6, 2024</td>
			    <td>January 15 - February 4, 2024</td>
			  </tr>
			 <tr>
			    <td>2</td>
			    <td>February 27, 2024</td>
			    <td>February 5 - February 25, 2024</td>
			  </tr>
			  <tr>
			    <td>3</td>
			    <td>March 19, 2024</td>
			    <td>February 26 - March 17, 2024</td>
			  </tr>
			  <tr>
			    <td>4</td>
			    <td>April 9, 2024</td>
			    <td>March 18 - April 7, 2024</td>
			  </tr>
			</table>
			<p>To claim a prize won in the Promotion drawing, the prizewinner must submit to any Florida Lottery District Office the following documentation:</p>
			<ol>
			  <li>Completed and signed <a style= "color: red;text-decoration:underline" href= "https://floridalottery.com/exptkt/claimForm_en.pdf"> Winner Claim Form</a></li>
			  <li>Copy of acceptable identification that is current or was issued within the past five years and bears a serial number or other identifying number. Acceptable forms of identification include:</li>
				<ul>
				  <li>An identification card or driver's license issued by a public agency authorized to issue driver's licenses in Florida, a state other than Florida, a territory of the U.S., Canada, or Mexico.</li>
				  <li>A passport issued by the U.S. Department of State.</li>
				  <li>A passport issued by a foreign government.</li>
				  <li>An identification card issued by any branch of the U.S. armed forces.</li>
				  <li>An identification card issued by the United States Bureau of Citizenship and Immigration Services</li>
				</ul>
			</ol>

			<p>The required documentation may either be delivered to one of the <a style= "color: red;text-decoration:underline" href= "https://www.floridalottery.com/lotteryOffices">Lottery Offices</a> or mailed to:</p>
			<p>
				<span style = "font-weight: bold;">
				Florida Lottery
				</span><br>
				<span style = "font-weight: bold; color: red;" >
					XTREME CASH BONUS PLAY PROMOTION
				</span>
				<span style = "font-weight: bold;">
					<br>Attention: Director of Claims Processing
				</span>
				<br>250 Marriott Drive
				<br>Tallahassee, FL 32399-4027
			</p>
			
			<p>U.S. Postal Service regulations include various restrictions on mailing Lottery tickets. The risk of mailing tickets remains with the player and will not be assumed by the Lottery.</p>
			<p>For additional information about claiming prizes and alternate winners, please read the Official <a style= "color: red;text-decoration:underline" href= "https://floridalottery.com/secondchance/rules_2023-Xtreme">XTREME CASH BONUS PLAY PROMOTION</a>.</p>
		</div>
	</div>
</div>