<div id="printCouponDiv" class="printCoupon">
     <button href="#" class="couponSubmit" onclick="printCoupon();return false;">Print Coupons</button>
</div>
<h1 class="printInstructions">Thank you for your loyalty!</h1>
<p class="printInstructions">Print the coupons below from a computer to redeem at one of our <a href="http://www.flalottery.com/whereToPlay.do">participating retailers</a>.</p>
<p class="printInstructions"><em>Please note</em>: Retailers will not be able to accept coupons on smartphones or other electronic devices.</p>
			<c:if test="${not empty request.barcode1 }">	
			<div class="bogoCoupon" style="float:left; margin-right:20px;">
				<img src="images/jpg/bogoCoupon-f5-f5.jpg" width="305" height="325" alt="FANTASY 5 with EZmatch"/>
			<p class="couponTitle" style="margin-top: 15px;">Buy a FANTASY 5<sup>&#174;</sup> with EZmatch<sup>&#8482;</sup> ticket and get a FREE $1 FANTASY 5<sup>&#174;</sup> Quick Pick ticket</p>
				<p>Take this coupon to any Florida Lottery retailer by April 30, 2016, and get a FREE FANTASY 5<sup>&#174;</sup> ticket when you purchase a FANTASY 5<sup>&#174;</sup> with EZmatch<sup>&#8482;</sup> ticket. Not valid towards the purchase of any other Florida Lottery games. Coupon can only be used one time. Must be 18 or older to play. Play responsibly.</p>
				<p><strong>Retailers Instruction:</strong> Clear TOTAL from your screen. Scan coupon via barcode scanner (do not insert in reader channel). Complete the FANTASY 5<sup>&#174;</sup> with EZmatch<sup>&#8482;</sup> sale on the manual screen and the Free FANTASY 5<sup>&#174;</sup> Quick Pick ticket for the next available draw automatically will print. If barcode does not scan, it can be entered manually. Select Settings and Redeem Coupon to enter barcode numbers manually. Omit the first digit "1" on your manual entry. </p>
                <p>The FANTASY 5<sup>&#174;</sup> with EZmatch<sup>&#8482;</sup> ticket cannot be canceled. </p>
				${request.barcode1}
				<p class="couponExp">Coupon expires April 30, 2016<img src="images/jpg/logoCoupon.jpg" width="65" height="65" alt="Florida Lottery"/></p>
			</div>
			</c:if>
			<c:if test="${not empty request.barcode2}">
			<div class="bogoCoupon" style="float:left;">
				<img src="images/jpg/bogoCoupon-lm-lm.jpg" width="305" height="325" alt="LUCKY MONEY"/>
				<p class="couponTitle" style=" margin-left:10px; margin-top:10px;">Buy a LUCKY MONEY<sup>&#8482;</sup> with EZmatch<sup>&#8482;</sup> ticket and get a FREE $1 LUCKY MONEY<sup>&#8482;</sup> Quick Pick ticket</p>
     <p>Take this coupon to any Florida Lottery retailer by April 30, 2016, and get a FREE LUCKY MONEY<sup>&#8482;</sup> ticket when you purchase a LUCKY MONEY<sup>&#8482;</sup> with EZmatch<sup>&#8482;</sup> ticket. Not valid towards the purchase of any other Florida Lottery games. Coupon can only be used one time. Must be 18 or older to play. Play responsibly.</p>
     <p><strong>Retailers Instruction:</strong> Clear TOTAL from your screen. Scan coupon via barcode scanner (do not insert in reader channel). Complete the LUCKY MONEY<sup>&#8482;</sup> with EZmatch<sup>&#8482;</sup> sale on the manual screen and the Free LUCKY MONEY<sup>&#8482;</sup> Quick Pick ticket for the next available draw automatically will print. If barcode does not scan, it can be entered manually. Select Settings and Redeem Coupon to enter barcode numbers manually. Omit the first digit "1" on your manual entry. </p>
     <p>The LUCKY MONEY<sup>&#8482;</sup> with EZmatch<sup>&#8482;</sup> ticket cannot be canceled. </p>
				${request.barcode2}
				<p class="couponExp">Coupon expires April 30, 2016<img src="images/jpg/logoCoupon.jpg" width="65" height="65" alt="Florida Lottery"/></p>
			</div>
			</c:if>		
			<br style="clear: both; " />