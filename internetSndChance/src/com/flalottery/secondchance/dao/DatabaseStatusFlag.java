package com.flalottery.secondchance.dao;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * This function is in support of DO functionality and serves to carry the
 * results from the database query to the form for use within the UI. The
 * converter input values are determined strictly from the associated stored
 * proc. Note that these case values have nothing to do with the enum ordinal.
 * They are "close" in most cases by design but are subject to the stored proc
 * as coded return values.
 */
public enum DatabaseStatusFlag {
	//@formatter:off
	NOT_SET, 
	SUCCESS,
	SUCCESSFUL_SCRATCH,
	SUCCESSFUL_VOUCHER,
	FAILURE, 
	PWD, 
	EMAIL,
	INACTIVE_ACCOUNT,
	DUPLICATE,
	DUPLICATE_SCRATCH, 
	DUPLICATE_VOUCHER,
	INVALID, 
	INVALID_LOGIN,
	INVALID_OTP,
	INVALID_SCRATCH,
	INVALID_PROMOTION,
	PROMO_USED,
	INVALID_FB_PROMOTION,
	INVALID_IG_PROMOTION,
	INVALID_VOUCHER, 
	DISQUALIFIED_VOUCHER,
	PASSWORD_CHANGE_REQUIRED,
	UNKNOWN;
	//@formatter:on

	private static final Logger logger = LoggerFactory.getLogger(DatabaseStatusFlag.class.getName());

	public static final DatabaseStatusFlag convertToStatusFlag(final String status) {
		try {
			return DatabaseStatusFlag.valueOf(StringUtils.defaultString(status.toUpperCase()));
		} catch (final Exception e) {
			logger.warn("Could not convert \"" + StringUtils.defaultString(status.toUpperCase()) + "\". Returning UNKNOWN");
		}
		return UNKNOWN;
	}

	/**
	 * These values are predicated on the return status of the LoginDAO codes.
	 * Case OK means email was found and the given pwd matched the expected
	 * value. PWD means the email was found and pwd was not a match. EMAIL means
	 * the email value was not found. UKNOWN means the associated stored proc
	 * returned an unexpected value.
	 */
	public static final DatabaseStatusFlag convertToStatusFlagForLogin(final int status) {
		switch (status) {
			case 1:
				return SUCCESS;
			case 2:
				return PWD;
			case 3:
				return EMAIL;
			case 4:
				return INACTIVE_ACCOUNT;	
			default:
				return UNKNOWN;
		}
	}

	/**
	 * These values are predicated on the return status of the TicketEntryDAO
	 * codes. Case OK means the entry was successfully submitted. DUPLICATE
	 * means the entry already exists. UKNOWN means the associated stored proc
	 * returned an unexpected value.
	 */
	public static final DatabaseStatusFlag convertToStatusFlagForTicketEntry(final int status) {
		switch (status) {
			case 1:
				return SUCCESS;
			case 2:
				return DUPLICATE;
			case 3:
				return INVALID;
			case 4:
				return INVALID_SCRATCH;
			case 5:
				return INVALID_VOUCHER;
			case 6:
				return DISQUALIFIED_VOUCHER;
			default:
				return UNKNOWN;
		}
	}

	public static final DatabaseStatusFlag convertToStatusFlag(final int status) {
		if (1 == status) {
			return SUCCESS;
		}
		return UNKNOWN;
	}

	public final Boolean getStatusFlagAsBoolean() {
		if (this.equals(DatabaseStatusFlag.SUCCESS)) {
			return true;
		}
		return false;
	}
}
