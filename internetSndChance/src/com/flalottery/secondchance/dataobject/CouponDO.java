package com.flalottery.secondchance.dataobject;

import java.util.Date;

public class CouponDO {
	
	private String couponId;
	private String couponDesc;
	private Date couponStartDate;
	private Date couponEndDate;
	private String couponContent;
	private Integer memberId;
	private String couponBarCode;
	private Date initDateRequest;
	private Integer noOfRequest;

	public String getCouponId() {
		return couponId;
	}
	public void setCouponId(String couponId) {
		this.couponId = couponId;
	}
	public String getCouponDesc() {
		return couponDesc;
	}
	public void setCouponDesc(String couponDesc) {
		this.couponDesc = couponDesc;
	}
	public Date getCouponStartDate() {
		return couponStartDate;
	}
	public void setCouponStartDate(Date couponStartDate) {
		this.couponStartDate = couponStartDate;
	}
	public Date getCouponEndDate() {
		return couponEndDate;
	}
	public void setCouponEndDate(Date couponEndDate) {
		this.couponEndDate = couponEndDate;
	}
	public String getCouponContent() {
		return couponContent;
	}
	public void setCouponContent(String couponContent) {
		this.couponContent = couponContent;
	}
	public Integer getMemberId() {
		return memberId;
	}
	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	public String getCouponBarCode() {
		return couponBarCode;
	}
	public void setCouponBarCode(String couponBarCode) {
		this.couponBarCode = couponBarCode;
	}
	public Date getInitDateRequest() {
		return initDateRequest;
	}
	public void setInitDateRequest(Date initDateRequest) {
		this.initDateRequest = initDateRequest;
	}
	public Integer getNoOfRequest() {
		return noOfRequest;
	}
	public void setNoOfRequest(Integer noOfRequest) {
		this.noOfRequest = noOfRequest;
	}
	
	
}
