package com.flalottery.secondchance.utility;

import org.apache.commons.lang3.StringUtils;

public enum SecondChanceURL {

	INSTANCE;

	/**
	 * 
	 * @return the relative url minus the '.' extension or any parameters.
	 * 
	 */
	public static String getRelativeUrl(final String url) {
		final String s = StringUtils.substringAfterLast(StringUtils.substringBefore(url, "?"), "/");
		return s.contains(".") ? StringUtils.substringBefore(s, ".") : s;
	}

}
