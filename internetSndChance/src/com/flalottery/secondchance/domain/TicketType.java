package com.flalottery.secondchance.domain;

import java.util.EnumSet;

/**
 * Enum representing the number of digits and the ticket_type (voucher or
 * scratch)
 * 
 */
public enum TicketType {
	//@formatter:off
	VOUCHER_13(13, Constants.VOUCHER),
	VOUCHER_14(14, Constants.VOUCHER),
	VOUCHER_19(19, Constants.VOUCHER),
	SCRATCH_24(24, Constants.SCRATCH),
	ONLINE_19(19, Constants.ONLINE),
	SCRATCH(null, Constants.SCRATCH),
	VOUCHER(null, Constants.VOUCHER),
	UNKNOWN(null, "");
	//@formatter:on

	private final Integer digits;
	private final String type;

	private TicketType(final Integer digits, final String type) {
		this.digits = digits;
		this.type = type;
	}

	public static final TicketType convertToTicketType(final String type, final Integer digits) {
		final int d = digits != null ? digits.intValue() : 0;
		TicketType tType = TicketType.UNKNOWN;
		final EnumSet<TicketType> tempEnumSet = EnumSet.noneOf(TicketType.class);
		for (final TicketType tt : TicketType.values()) {
			if (tt.getType().equalsIgnoreCase(type)) {
				tempEnumSet.add(tt);
			}
		}
		for (final TicketType tt : tempEnumSet) {
			if (tt.getDigitsAsInt() == d) {
				tType = tt;
			}

		}
		return tType;
	}

	public Integer getDigits() {
		return digits;
	}

	public int getDigitsAsInt() {
		return digits != null ? digits.intValue() : 0;
	}

	public String getType() {
		return type;
	}

	public String toStringForErrors() {
		final StringBuilder sbldr = new StringBuilder();
		if (null == digits) {
			sbldr.append(getTypeForErrors());
		}
		else {
			sbldr.append(getDigits()).append(Constants.DIGIT).append(Constants.SPACE).append(getTypeForErrors());
		}
		return sbldr.toString();
	}

	private String getTypeForErrors() {
		if (type.equals(Constants.SCRATCH)) {
			return Constants.SCRATCH_FOR_ERROR;
		}
		return getType();
	}
}
