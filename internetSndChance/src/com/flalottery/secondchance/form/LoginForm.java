package com.flalottery.secondchance.form;

import org.apache.commons.lang3.StringUtils;

import com.flalottery.secondchance.dao.DatabaseStatusFlag;

/**
 * The form bean for logging into the application.
 * 
 */
public class LoginForm implements Submittable {

	private String email = "";
	private String password = "";
	private String submitFlag = "";
	private DatabaseStatusFlag status = DatabaseStatusFlag.NOT_SET;

	public String getEmail() {
		return this.email;
	}

	public void setEmail(final String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(final String password) {
		this.password = password;
	}

	public void setSubmitFlag(final String submitFlag) {
		this.submitFlag = submitFlag;
	}

	/**
	 * Returns true if the form is submitted. This is determined by the
	 * submitFlag. If the submitFlag is not empty("") or null, true is returned.
	 * In some cases the submitFlag may contain only whitespace to indicate that
	 * the form was submitted.
	 * 
	 * @return
	 */
	@Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}

	public DatabaseStatusFlag getStatus() {
		return this.status;
	}

	public void setStatus(final DatabaseStatusFlag status) {
		this.status = status;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("LoginForm [getEmail()=");
		builder.append(getEmail());
		builder.append(", getPassword()=");
		builder.append(getPassword());
		builder.append(", isSubmitted()=");
		builder.append(isSubmitted());
		builder.append(", getStatus()=");
		builder.append(getStatus());
		builder.append("]");
		return builder.toString();
	}

}
