<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="printCouponDiv" class="printCoupon">
				<button href="#" class="couponSubmit" onclick="printCoupon();return false;">Print Coupons</button>
				<p id="printResult"></p>
				
			</div>
			<h1 class="printInstructions">Thank you for your loyalty!</h1>
			<p class="printInstructions">Print the coupons below from a computer to redeem at one of our <a href="http://www.flalottery.com/whereToPlay.do">participating retailers</a>.</p>
			<p class="printInstructions"><em>Please note</em>: Retailers will not be able to accept coupons on smartphones or other electronic devices.</p>
			<c:if test="${not empty request.barcode2 }">	
			<div class="bogoCoupon bogo1">
				<img src="images/jpg/bogoCouponF5.jpg" width="305" height="325" alt="FANTASY 5 with EZmatch"/>
				<p class="couponTitle">Buy a FANTASY 5<sup>&#174;</sup> with EZmatch&#8482; ticket and Get a FREE LUCKY MONEY&#8482; ticket</p>
				<p>Take this coupon to any Florida Lottery retailer by May 31, 2015, and <strong>get a FREE LUCKY MONEY&#8482;</strong> ticket when you purchase a FANTASY 5<sup>&#174;</sup> with EZmatch&#8482; ticket. Not valid towards the purchase of any other Florida Lottery games. Coupon can only be used one time. Must be 18 or older to play. Play responsibly.</p>
				<p>Retailers: Clear TOTAL from your screen. Scan coupon via barcode scanner (do not insert in reader channel). Complete the FANTASY 5<sup>&#174;</sup> with EZmatch&#8482; sale on the manual screen and the Free LUCKY MONEY&#8482; Quick Pick ticket for the next available draw automatically will print. If barcode does not scan, it can be entered manually. Select Settings and Redeem Coupon to enter barcode numbers manually. Omit the first digit "1" on your manual entry. The FANTASY 5<sup>&#174;</sup> with EZmatch&#8482; ticket cannot be canceled.</p>
				${request.barcode2}
				<p class="couponExp">Coupon expires May 31, 2015<img src="images/jpg/logoCoupon.jpg" width="65" height="65" alt="Florida Lottery"/></p>
			</div>
			</c:if>
			<c:if test="${not empty request.barcode1}">
			<div class="bogoCoupon">
				<img src="images/jpg/bogoCouponLM.jpg" width="305" height="325" alt="LUCKY MONEY"/>
				<p class="couponTitle">Buy a LUCKY MONEY&#8482; with EZmatch&#8482; ticket and Get a FREE FANTASY 5<sup>&#174;</sup> ticket</p>
				<p>Take this coupon to any Florida Lottery retailer by May 31, 2015, and <strong>get a FREE FANTASY 5<sup>&#174;</sup></strong> ticket when you purchase a LUCKY MONEY&#8482; with EZmatch&#8482; ticket. Not valid towards the purchase of any other Florida Lottery games. Coupon can only be used one time. Must be 18 or older to play. Play responsibly.</p>
				<p>Retailers: Clear TOTAL from your screen. Scan coupon via barcode scanner (do not insert in reader channel). Complete the LUCKY MONEY&#8482; with EZmatch&#8482; sale on the manual screen and the Free FANTASY 5<sup>&#174;</sup> Quick Pick ticket for the next available draw automatically will print. If barcode does not scan, it can be entered manually. Select Settings and Redeem Coupon to enter barcode numbers manually. Omit the first digit "1" on your manual entry. The LUCKY MONEY&#8482; with EZmatch&#8482; ticket cannot be canceled.</p>
				${request.barcode1}
				<p class="couponExp">Coupon expires May 31, 2015<img src="images/jpg/logoCoupon.jpg" width="65" height="65" alt="Florida Lottery"/></p>
			</div>
			</c:if>		
			<br style="clear: both; " />