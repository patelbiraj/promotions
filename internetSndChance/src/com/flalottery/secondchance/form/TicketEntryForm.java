package com.flalottery.secondchance.form;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * The form bean for ticket and voucher entry.
 * 
 */
public class TicketEntryForm implements Submittable {

	private static final Logger logger = LoggerFactory.getLogger(TicketEntryForm.class.getName());

	private String ticketNumber = "";
	private String scannedTicketNumber = "";
	private String ticketNumberPin;
	private String fbPromoCode = "";
	private String submitFlag = "";
	private String instPromoCode = "";
	private String appEntry = "";
	private Boolean isScanned = false;

	public String getTicketNumber() {
		return this.ticketNumber;
	}
	
	public void setTicketNumber(final String ticketNumber) {
		this.ticketNumber = ticketNumber;
	}


	public String getTicketNumberPin() {
		return ticketNumberPin;
	}

	public void setTicketNumberPin(String ticketNumberPin) {
		this.ticketNumberPin = ticketNumberPin;
	}

	public void setSubmitFlag(final String submitFlag) {
		this.submitFlag = submitFlag;
	}

	public String getFbPromoCode() {
		return fbPromoCode;
	}

	public void setFbPromoCode(String fbPromoCode) {
		this.fbPromoCode = fbPromoCode;
	}

	public String getInstPromoCode() {
		return instPromoCode;
	}

	public void setInstPromoCode(String instPromoCode) {
		this.instPromoCode = instPromoCode;
	}

	public String getAppEntry() {
		return appEntry;
	}

	public void setAppEntry(String appEntry) {
		this.appEntry = appEntry;
	}	
	
	public String getScannedTicketNumber() {
		return scannedTicketNumber;
	}

	public void setScannedTicketNumber(String scannedTicketNumber) {
		this.scannedTicketNumber = scannedTicketNumber;
	}

	public Boolean getIsScanned() {
		return isScanned;
	}

	public void setIsScanned(Boolean isScanned) {
		this.isScanned = isScanned;
	}

	@Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("TicketEntryForm [getTicketNumber()=");
		builder.append(getTicketNumber());		
		builder.append(", isSubmitted()=");
		builder.append(isSubmitted());
		builder.append("]");
		return builder.toString();
	}






}
