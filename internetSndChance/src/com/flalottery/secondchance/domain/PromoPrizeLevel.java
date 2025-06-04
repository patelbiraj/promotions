package com.flalottery.secondchance.domain;

public final class PromoPrizeLevel implements Comparable<PromoPrizeLevel> {

	private final Integer promotionId;
	private final Integer drawNumber;
	private final Integer prizeLevel;
	private final String prize;

	public PromoPrizeLevel(final Integer promotionId, final Integer drawNumber, final Integer prizeLevel, final String prize) {
		super();
		this.promotionId = promotionId;
		this.drawNumber = drawNumber;
		this.prizeLevel = prizeLevel;
		this.prize = prize;
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	public Integer getDrawNumber() {
		return drawNumber;
	}

	public Integer getPrizeLevel() {
		return prizeLevel;
	}

	public String getPrize() {
		return prize;
	}

	@Override
	public int compareTo(final PromoPrizeLevel o) {
		int returnValue = this.promotionId.compareTo(o.promotionId);
		if (returnValue == 0) {
			returnValue = this.drawNumber.compareTo(o.drawNumber);
		}
		return returnValue;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("PromoPrizeLevel [getPromotionId()=");
		builder.append(getPromotionId());
		builder.append(", getDrawNumber()=");
		builder.append(getDrawNumber());
		builder.append(", getPrizeLevel()=");
		builder.append(getPrizeLevel());
		builder.append(", getPrize()=");
		builder.append(getPrize());
		builder.append("]");
		return builder.toString();
	}

}
