package com.flalottery.secondchance.domain;

import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

import org.joda.time.DateTime;
import org.joda.time.Interval;

public class PromoDraw implements Comparable<PromoDraw> {

	private final Integer promotionId;
	private final Integer drawNumber;
	private final Interval entryInterval;
	private final DateTime drawDate;
	private final TreeMap<Integer, PromoPrizeLevel> prizeLevels = new TreeMap<Integer, PromoPrizeLevel>();

	public PromoDraw(final Integer promotionId, final Integer drawNumber, final Interval entryInterval, final DateTime drawDate) {
		super();
		this.promotionId = promotionId;
		this.drawNumber = drawNumber;
		this.entryInterval = entryInterval;
		this.drawDate = drawDate;
	}

	public Map<Integer, PromoPrizeLevel> getPrizeLevels() {
		return Collections.unmodifiableMap(prizeLevels);
	}

	public PromoPrizeLevel addPromoPrizeLevel(final PromoPrizeLevel promoPrizeLevel) {
		return prizeLevels.put(promoPrizeLevel.getPrizeLevel(), promoPrizeLevel);
	}

	public Integer getDrawNumber() {
		return drawNumber;
	}

	public Interval getEntryInterval() {
		return entryInterval;
	}

	public DateTime getDrawDate() {
		return drawDate;
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	@Override
	public int compareTo(final PromoDraw o) {
		int returnValue = this.promotionId.compareTo(o.promotionId);
		if (returnValue == 0) {
			returnValue = this.drawNumber.compareTo(o.drawNumber);
		}
		return returnValue;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("PromoDraw [getPrizeLevels()=");
		builder.append(getPrizeLevels());
		builder.append(", getDrawNumber()=");
		builder.append(getDrawNumber());
		builder.append(", getEntryInterval()=");
		builder.append(getEntryInterval());
		builder.append(", getDrawDate()=");
		builder.append(getDrawDate());
		builder.append(", getPromotionId()=");
		builder.append(getPromotionId());
		builder.append("]");
		return builder.toString();
	}

}
