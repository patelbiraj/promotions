package com.flalottery.secondchance.dataobject;

public class CouponBarcodeDO {

	private final String BARCODEURL_FORMAT = "/genbc?type=2of5&msg=%s&fmt=image/x-png&height=16";
	private final String IMG_TAG_FORMAT = "<img class='barcode' src='%s' width='213' height='80' alt='%s' />";
	private final String barcodeString, couponIncludeFile,thankYouIncludeFile;

	public CouponBarcodeDO(final String barcodeString) {
		this.barcodeString = barcodeString;
		this.couponIncludeFile = "";
		this.thankYouIncludeFile = "";
	}
	public CouponBarcodeDO(final String barcodeString, final String couponIncludeFile, final String thankYouIncludeFile){
		this.barcodeString = barcodeString;
		this.couponIncludeFile = couponIncludeFile;
		this.thankYouIncludeFile = thankYouIncludeFile;
	}

	public String formatURL(final String serverUrl) {
		return String.format(serverUrl + BARCODEURL_FORMAT, barcodeString);
	}

	public String formatIMG(final String serverUrl) {
		return String.format(IMG_TAG_FORMAT, formatURL(serverUrl), barcodeString);
	}

	public String getCouponIncludeFile() {
		return couponIncludeFile;
	}

	public String getThankYouIncludeFile() {
		return thankYouIncludeFile;
	}
	
	public String getBarcodeString() {
		return barcodeString;
	}

}
