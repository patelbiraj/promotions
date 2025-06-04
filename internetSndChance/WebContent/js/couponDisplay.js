const popUpBut = (val, filename, status, id) => {
		console.log('Button Pressed')
		document.getElementById('window').style.visibility = "visible"
		document.getElementById('popUpTitle').innerText = '$' + val + ' coupon'
		document.getElementById('couponImg').src = 'images/gif/coupon/' + filename
		console.log('\n\n' + id + '\n\n')
		document.getElementById('link').href = 'coupon_2023-Xtreme?id=' + id
		console.log(filename)
		if (status === 'Redeemed')
			document.getElementById('popUpStat').innerText = 'This coupon has already been redeemed'
		else
			document.getElementById('popUpStat').innerText = ''
	}
	
const popUpClose = () => {
		console.log('close window')
		document.getElementById('window').style.visibility = "hidden"
		document.getElementById('popUpTitle').innerText = ''
		document.getElementById('popUpStat').innerText = ''
		document.getElementById('link').href = ''
	}

const changeCouponDimension = (size) => {
	let width = 732
	let height = 278
	
	if(size === 'Big'){
		document.getElementById('couponImg').width = width
		document.getElementById('couponImg').height = height
		
	} else if(size === 'Medium') {
		document.getElementById('couponImg').width = (width * 0.5)
		document.getElementById('couponImg').height = (height * 0.5)
		
	} else {
		document.getElementById('couponImg').width = (width * 0.30)
		document.getElementById('couponImg').height = (height * 0.30)
		
	}
	
}