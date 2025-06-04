package com.flalottery.secondchance.domain;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Enum for the Variable Weight field in the INET2.SND_GAMES_FOR_PROMO table
 * 
 */
public enum VariableWeightType {
	N, B;

	private static final Logger logger = LoggerFactory.getLogger(VariableWeightType.class.getName());

	public static final VariableWeightType convertToVariableWeightType(final String type) {
		final String t = StringUtils.defaultString(type).toUpperCase();
		try {
			return VariableWeightType.valueOf(t);
		} catch (final Exception e) {
			logger.warn("Could not convert \"" + t + "\". Returning null.");
		}
		return null;
	}
}
