package com.flalottery.secondchance.dataobject;


import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormatter;

import com.flalottery.secondchance.utility.SecondChanceDates;

public class CouponPromoDO implements Comparable<CouponPromoDO>{
	
	private Integer couponID;
	private String filename;
	private String couponNum;
	private Integer gameID;
	private String couponVal;
	private String couponStatus;
	private DateTime dateAwarded;
	private String filepath;	
	private String couponDateDisplay;
	private DateTime expireDate;
	private String expireDateDisplay;
	
	
	public CouponPromoDO(final Integer p_couponID, final String p_filename, final String p_couponNum, final Integer p_gameID, final String p_couponVal, final Integer p_couponStatus, final String p_filepath, final DateTime p_date, final DateTime p_expireDate) {
		this.couponID = p_couponID;
		this.filename = p_filename;
		this.couponNum = p_couponNum;
		this.gameID = p_gameID;
		this.couponVal = p_couponVal;
		this.setCouponStatus(p_couponStatus);
		this.filepath = p_filepath;	
		this.dateAwarded = p_date;
		this.couponDateDisplay = SecondChanceDates.formatDate(dateAwarded, SecondChanceDates.SHORT_DATE);
		this.expireDate = p_expireDate;
		this.expireDateDisplay = SecondChanceDates.formatDate(expireDate, SecondChanceDates.SHORT_DATE);
		}
	
	public String getCouponDateDisplay() {
		return couponDateDisplay;
	}
	public String getExpireDateDisplay() {
		return expireDateDisplay;
	}	
	public Integer getCouponID() {
		return couponID;
	}
	
	public void setCouponID(Integer p_couponID) {
		this.couponID = p_couponID;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String p_filename) {
		this.filename = p_filename;
	}

	public String getFilepath() {
		return filepath;
	}
	
	public void setFilepath(String p_filepath) {
		this.filepath = p_filepath;
	}		
	
	public String getCouponNum() {
		return couponNum;
	}
	
	public void setCouponNum(String p_couponNum) {
		this.couponNum = p_couponNum;
	}
	
	public Integer getGameID() {
		return gameID;
	}
	
	public void setGameID(Integer p_gameID) {
		this.gameID = p_gameID;
	}
	
	public String getCouponVal() {
		return couponVal;
	}
	
	public void setCouponVal(String p_couponVal) {
		this.couponVal = p_couponVal;
	}
	
	public String getCouponStatus() {
		return couponStatus;
	}
	
	public void setCouponStatus(Integer p_couponStatus) {
		couponStatus = (p_couponStatus == 1) ? "Redeemed" : "Not Redeemed";
	}
	
	public DateTime getDateAwarded() {
		return dateAwarded;
	}
	
	public void setDateAwarded(DateTime p_dateAwarded) {
		this.dateAwarded = p_dateAwarded;
	}
	
	public DateTime getExpireDate() {
		return expireDate;
	}
	
	public void setExpireDate(DateTime p_expireDate) {
		this.expireDate = p_expireDate;
	}	
	
	@Override
	public int compareTo(final CouponPromoDO o) {
		return this.getCouponID().compareTo(o.getCouponID());
	}
	
	@Override
	public String toString() {
		
		return "Status " + getCouponStatus() + 
				"\nNumber " + getCouponNum() ;
	}

}