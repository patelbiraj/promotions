package com.flalottery.secondchance.form;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;

/**
 * The form bean for the forgot password page.
 * 
 */
public class ForgotPasswordForm implements Submittable {

	private String email = "";
	private String submitFlag = "";
	private String otp = "";
	private Date otpExpires;

	public void setSubmitFlag(final String submitFlag) {
		this.submitFlag = submitFlag;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(final String email) {
		this.email = email;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public Date getOtpExpires() {
		return otpExpires;
	}

	public void setOtpExpires(Date otpExpires) {
		this.otpExpires = otpExpires;
	}

	public String getSubmitFlag() {
		return submitFlag;
	}

	@Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("ForgotPasswordForm [getEmail()=");
		builder.append(getEmail());
		builder.append(", isSubmitted()=");
		builder.append(isSubmitted());
		builder.append("]");
		return builder.toString();
	}

}
