package com.flalottery.secondchance.form;

import org.apache.commons.lang3.StringUtils;

import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.TextMessagingProvider;

/**
 * The form bean for player text messaging preferences.
 * 
 */
public final class TextPrefsForm implements Submittable, Deletable {

	private String submitFlag = "";
	private String phone = "";
	private String phoneConfirm = "";
	private String domain = "-1";
	private String other = "";
	private Boolean evening = Constants.OFF;
	private Boolean midday = Constants.OFF;
	private Boolean night = Constants.OFF;
	private Boolean whatIsNew = Constants.OFF;
	private Boolean recordExists = Constants.OFF;

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(final String phone) {
		this.phone = phone;
	}

	@Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}

	@Override
	public Boolean isDeleted() {
		return StringUtils.isBlank(this.getPhone())
				|| (Constants.OFF.equals(this.getMidday()) && Constants.OFF.equals(this.getEvening()) && Constants.OFF.equals(this.getNight()) && Constants.OFF.equals(this
						.getWhatIsNew()));
	}

	public void setSubmitFlag(final String submitFlag) {
		this.submitFlag = submitFlag;
	}

	public Boolean getNight() {
		return night;
	}

	public void setNight(final Boolean night) {
		this.night = night;
	}

	public void setEvening(final Boolean evening) {
		this.evening = evening;
	}

	public void setMidday(final Boolean midday) {
		this.midday = midday;
	}

	public void setWhatIsNew(final Boolean whatIsNew) {
		this.whatIsNew = whatIsNew;
	}

	public Boolean getEvening() {
		return evening;
	}

	public Boolean getMidday() {
		return midday;
	}

	public Boolean getWhatIsNew() {
		return whatIsNew;
	}

	public String getPhoneConfirm() {
		return phoneConfirm;
	}

	public void setPhoneConfirm(final String phoneConfirm) {
		this.phoneConfirm = phoneConfirm;
	}

	public Boolean getRecordExists() {
		return recordExists;
	}

	public void setRecordExists(Boolean recordExists) {
		this.recordExists = recordExists;
	}

	public String getDomain() {
		if (!TextMessagingProvider.getTextMessagingProviders().containsValue(domain)) {
			return "";
		}
		return domain;
	}

	public void setDomain(final String domain) {
		this.domain = domain;
	}

	public String getOther() {
		return other;
	}

	public void setOther(final String other) {
		this.other = other;
		if (!other.isEmpty()) {
			this.domain = other;
		}
	}

	public String getRealDomain() {
		if (domain.isEmpty()) {
			return other;
		}
		return domain;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("TextPrefsForm [getPhone()=");
		builder.append(getPhone());
		builder.append(", isSubmitted()=");
		builder.append(isSubmitted());
		builder.append(", isDeleted()=");
		builder.append(isDeleted());
		builder.append(", getNight()=");
		builder.append(getNight());
		builder.append(", getEvening()=");
		builder.append(getEvening());
		builder.append(", getMidday()=");
		builder.append(getMidday());
		builder.append(", getWhatIsNew()=");
		builder.append(getWhatIsNew());
		builder.append(", getPhoneConfirm()=");
		builder.append(getPhoneConfirm());
		builder.append(", getDomain()=");
		builder.append(getDomain());
		builder.append(", getOther()=");
		builder.append(getOther());
		builder.append(", getRealDomain()=");
		builder.append(getRealDomain());
		builder.append("]");
		return builder.toString();
	}

}
