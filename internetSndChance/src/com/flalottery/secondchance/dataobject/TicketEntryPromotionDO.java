package com.flalottery.secondchance.dataobject;

import org.joda.time.Interval;

public class TicketEntryPromotionDO implements Comparable<TicketEntryPromotionDO> {

	private final Integer promotionId;
	private final String name;
	private final Interval promotionInterval;
	private final Integer totalEntries;
	private final Integer totalScratchAndVouchersEntered;

	public TicketEntryPromotionDO(Integer promotionId, String name, Interval promotionInterval, Integer totalEntries, Integer totalScratchAndVouchersEntered) {
		super();
		this.promotionId = promotionId;
		this.name = name;
		this.promotionInterval = promotionInterval;
		this.totalEntries = totalEntries;
		this.totalScratchAndVouchersEntered = totalScratchAndVouchersEntered;
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	public String getName() {
		return name;
	}

	public Interval getPromotionInterval() {
		return promotionInterval;
	}

	public Integer getTotalEntries() {
		return totalEntries;
	}

	public Integer getTotalScratchAndVouchersEntered() {
		return totalScratchAndVouchersEntered;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TicketEntryPromotionDO [getPromotionId()=");
		builder.append(getPromotionId());
		builder.append(", getName()=");
		builder.append(getName());
		builder.append(", getPromotionInterval()=");
		builder.append(getPromotionInterval());
		builder.append(", getTotalEntries()=");
		builder.append(getTotalEntries());
		builder.append(", getTotalScratchAndVouchersEntered()=");
		builder.append(getTotalScratchAndVouchersEntered());
		builder.append("]");
		return builder.toString();
	}

	@Override
	public int compareTo(TicketEntryPromotionDO o) {
		return promotionId.compareTo(o.promotionId);
	}

}
