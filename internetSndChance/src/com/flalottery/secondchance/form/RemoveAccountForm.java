package com.flalottery.secondchance.form;

import org.apache.commons.lang3.StringUtils;

import com.flalottery.secondchance.domain.Constants;

/**
 * The form bean for player remove Account preferences.
 * 
 */
public class RemoveAccountForm implements Submittable, Deletable {

	
	/* submitFlag is a control variable that affects the action logic. */
	private String submitFlag = "";
    private String emailAddress;
    private String emailAddressConfirm;
    private boolean agreeCheckBox;
	
    
    
    
 
    
    public String getSubmitFlag() {
		return submitFlag;
	}


	public void setSubmitFlag(String submitFlag) {
		this.submitFlag = submitFlag;
	}


	public String getEmailAddress() {
		return emailAddress;
	}


	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}


	public String getEmailAddressConfirm() {
		return emailAddressConfirm;
	}


	public void setEmailAddressConfirm(String emailAddressConfirm) {
		this.emailAddressConfirm = emailAddressConfirm;
	}


	public boolean isAgreeCheckBox() {
		return agreeCheckBox;
	}


	public void setAgreeCheckBox(boolean agreeCheckBox) {
		this.agreeCheckBox = agreeCheckBox;
	}


	@Override
	public Boolean isDeleted() {
    	return Constants.OFF.equals(this.getEmailAddress()) && Constants.OFF.equals(this.getEmailAddressConfirm()) && Constants.OFF.equals(this.getSubmitFlag());
	}

    
    @Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}
    
	
	@Override
	public String toString() {
		return "RemoveAccountForm [submitFlag=" + submitFlag
				+ ", emailAddress=" + emailAddress + ", emailAddressConfirm="
				+ emailAddressConfirm + ", agreeCheckBox=" + agreeCheckBox
				+ "]";
	}
    
	
	
	
}
