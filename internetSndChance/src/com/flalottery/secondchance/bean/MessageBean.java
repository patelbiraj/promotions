package com.flalottery.secondchance.bean;

public class MessageBean {

	private String pageTitle = "Florida Lottery Bonus Play Drawings &amp; Promotions";
	private String h1Title = "";
	private String message = "";

	public String getPageTitle() {
		return pageTitle;
	}

	public void setPageTitle(final String pageTitle) {
		this.pageTitle = pageTitle;
	}

	public String getH1Title() {
		return h1Title;
	}

	public void setH1Title(final String h1Title) {
		this.h1Title = h1Title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(final String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("MessageBean [getPageTitle()=");
		builder.append(getPageTitle());
		builder.append(", getH1Title()=");
		builder.append(getH1Title());
		builder.append(", getMessage()=");
		builder.append(getMessage());
		builder.append("]");
		return builder.toString();
	}

}
