package com.flalottery.secondchance.domain;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public enum PromotionType {

	SCRATCH, VOUCHER, MIXED, INVALID, NOT_SET;

	private static final Logger logger = LoggerFactory.getLogger(PromotionType.class);

	public static final PromotionType convertToPromotionType(final String type) {
		final String t = StringUtils.defaultString(type, "NOT_SET").toUpperCase();
		try {
			return PromotionType.valueOf(t);
		} catch (final Exception e) {
			logger.warn("Could not convert \"" + t + "\". Returning null.");
		}
		return null;
	}
}
