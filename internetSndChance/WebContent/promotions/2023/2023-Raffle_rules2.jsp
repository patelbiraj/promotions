<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.flalottery.secondchance.dataobject.*, java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>

<style>
table.couponTable {
	width: 700px;
	height: auto;
}

div.popUp {
	position: fixed;
	left: 30vw;
	top: 30vh;
	width: 600px;
	background-color: #fff;
	visibility: hidden;
	border: 2px solid; 
}

.close {

	position: relative;
	float: right;
	width: 55px;
	font-size: 20px;
	background-color: rgb(213, 86, 84);
	color: #fff;
	border-radius: 8px;
	border: 0;

}

close:hover {
	background-color: rgb(224, 133, 131);
}
.couponTable {
	border: 0;
	-moz-box-shadow: none;
    box-shadow: none;
    -webkit-box-shadow: none;
}

.couponTable th {
	height: 30px;
	padding-top: 10px;
	margin-bottom: -3px;
	background: rgb(241,102,103);
	background: linear-gradient(0deg, rgba(241,102,103,1) 23%, rgba(255,255,255,1) 100%);
	color: #fff;
}

.couponTable td {
	height: 25px;
	padding-top: 10px;
}
</style>

<script type="text/javascript" src="js/secondChance.js"></script>
<script type="text/javascript">var page = 3;</script>

<div id="main" class="bonusPlayGetaway howtoplay">
	<div id="topBanner">
		<jsp:include page="../2023/includes/2023-Raffle_navigation.jsp"></jsp:include>
	</div>
	
	<div id="mainContentWrap">
		<div id="mainContent">
		<h1>Coupon Redemption</h1>
		<table class="couponTable">
				<tr>
					<th>Coupon Status</th>
					<th>Coupon Number</th>
					<th>Coupon Redeem</th>
				</tr>
			<tbody>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
				<tr>
					<td>Not Redeemed</td>
					<td>1234567890</td>
					<td><button onclick="popUpBut()">Redeem Coupon</button></td>
				</tr>
			</tbody>
		</table>

	</div>
</div>


<script text="text/javascript">
	const vari = false
	const popUpBut = () => {
		console.log('Button Pressed')
		document.getElementById('window').style.visibility = "visible"
		
	}
	
	const popUpClose = () => {
		console.log('close window')
		document.getElementById('window').style.visibility = "hidden"
	}
</script>