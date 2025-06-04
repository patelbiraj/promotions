package com.flalottery.secondchance.form;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;

import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.Name;

/**
 * The form bean for player accounts.
 * 
 */
public class AccountFormMobile implements Submittable {

	private String city = "";
	private String country = "USA";
	private String dayPhone = "";
	private String email = "";
	private String emailConfirm = "";
	private String eveningPhone = "";
	private Name name = new Name();
	private String state = "FL";
	private String street1 = "";
	private String street2 = "";
	private String postalCode = "";
	private Boolean accountWhatIsNew = Constants.ON;
	private String submitFlag = "";
	private String quickCreateConfirm = "N"; //for quick creation
	private String quickCreate = "N"; //for quick creation
	private String regComplete = "Y"; //for quick creation
	private String otp = "";
	private Date otpExpires;
	
	//Constructor
	public AccountFormMobile(
			String city, 
			String country, 
			String dayPhone, 
			String email, 
			String emailConfirm, 
			String eveningPhone, 
			Name name,
			String state, 
			String street1, 
			String street2, 
			String postalCode, 
			Boolean accountWhatIsNew,
			String submitFlag,
			String quickCreateConfirm,
			String quickCreate,
			String regComplete,
			String otp,
			Date otpExpires)
		{
			this.city = city;
			this.country = country;
			this.dayPhone = dayPhone;
			this.email = email;
			this.emailConfirm = emailConfirm;
			this.eveningPhone = eveningPhone;
			this.name = name;
			this.state = state;
			this.street1 = street1;
			this.street2 = street2;
			this.postalCode = postalCode;
			this.accountWhatIsNew = accountWhatIsNew;
			this.submitFlag = submitFlag;
			this.quickCreateConfirm = quickCreateConfirm;
			this.quickCreate = quickCreate;
			this.regComplete = regComplete;
			this.otp = otp;
			this.otpExpires = otpExpires;
		}
	

	public String getCity() {
		return this.city;
	}

	public String getCountry() {
		return this.country;
	}

	public String getDayPhone() {
		return this.dayPhone;
	}

	public String getEmail() {
		return this.email.trim();
	}

	public String getEmailConfirm() {
		return emailConfirm.trim();
	}

	public String getEveningPhone() {
		return this.eveningPhone;
	}

	public Name getName() {
		return this.name;
	}


	public String getState() {
		return this.state;
	}

	public String getStreet1() {
		return this.street1;
	}

	public String getStreet2() {
		return this.street2;
	}

	public void setCity(final String city) {
		this.city = city.trim();
	}

	public void setCountry(final String country) {
		this.country = country;
	}

	public void setDayPhone(final String dayPhone) {
		this.dayPhone = dayPhone;
	}

	public void setEmail(final String email) {
		this.email = email.trim();
	}

	public void setEmailConfirm(final String emailConfirm) {
		this.emailConfirm = emailConfirm.trim();
	}

	public void setEveningPhone(final String eveningPhone) {
		this.eveningPhone = eveningPhone;
	}

	public void setName(final Name name) {
		
		this.name = name;
	}

	public void setState(final String state) {
		this.state = state;
	}

	public void setStreet1(final String street1) {
		this.street1 = street1.trim();
	}

	public void setStreet2(final String street2) {
		this.street2 = street2.trim();
	}

	public void setSubmitFlag(final String submitFlag) {
		this.submitFlag = submitFlag;
	}

	public String getSubmitFlag() {
		return submitFlag;
	}

	@Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}

	public String getPostalCode() {
		return postalCode.trim();
	}

	public void setPostalCode(final String postalCode) {
		this.postalCode = postalCode;
	}

	public LoginDO toLoginDO(final Integer playerId) {
		return new LoginDO(playerId, getName(), getStreet1(), getStreet2(), getCity(), getState(), getPostalCode(), getEmail(), getCountry(), getDayPhone(), getEveningPhone());
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("AccountForm [getCity()=");
		builder.append(getCity());
		builder.append(", getCountry()=");
		builder.append(getCountry());
		builder.append(", getDayPhone()=");
		builder.append(getDayPhone());
		builder.append(", getEmail()=");
		builder.append(getEmail());
		builder.append(", getEmailConfirm()=");
		builder.append(getEmailConfirm());
		builder.append(", getEveningPhone()=");
		builder.append(getEveningPhone());
		builder.append(", getName()=");
		builder.append(getName());
		builder.append(", getState()=");
		builder.append(getState());
		builder.append(", getStreet1()=");
		builder.append(getStreet1());
		builder.append(", getStreet2()=");
		builder.append(getStreet2());
		builder.append(", isSubmitted()=");
		builder.append(isSubmitted());
		builder.append(", getPostalCode()=");
		builder.append(getPostalCode());
		builder.append(", getWhatIsNew()=");
		builder.append(getAccountWhatIsNew());
		builder.append(", getQuickCreate()=");
		builder.append(getQuickCreate());
		builder.append(", getQuickCreateConfirm()=");
		builder.append(getQuickCreateConfirm());
		builder.append(", getRegComplete()=");
		builder.append(getRegComplete());	
		builder.append(", getOtp()=");
		builder.append(getOtp());
		builder.append(", getOtpExpires()=");
		builder.append(getOtpExpires());
		builder.append("]");
		return builder.toString();
	}

	public Boolean getAccountWhatIsNew() {
		return accountWhatIsNew;
	}

	public void setAccountWhatIsNew(Boolean whatIsNew) {
		this.accountWhatIsNew = whatIsNew;
	}

	public String getQuickCreateConfirm() {
		return quickCreateConfirm;
	}

	public void setQuickCreateConfirm(String quickCreateConfirm) {
		this.quickCreateConfirm = quickCreateConfirm;
	}

	public String getQuickCreate() {
		return quickCreate;
	}

	public void setQuickCreate(String quickCreate) {
		this.quickCreate = quickCreate;
	}

	public String getRegComplete() {
		return regComplete;
	}

	public void setRegComplete(String regComplete) {
		this.regComplete = regComplete;
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

	
	
}
