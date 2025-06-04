package com.flalottery.secondchance.domain;

import java.math.BigInteger;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;

import org.joda.time.Interval;

import com.flalottery.secondchance.dataobject.TicketEntryPromotionDO;
import com.flalottery.secondchance.utility.SecondChanceDates;

public class TicketEntrySummary {

	private final Integer playerId;
	private final SortedSet<TicketEntryPromotionDO> promotions;
	private final SortedMap<Integer, TicketEntryYear> ticketEntryYears = new TreeMap<Integer, TicketEntryYear>(java.util.Collections.reverseOrder());
	private final BigInteger totalEntries;

	public TicketEntrySummary(Integer playerId, SortedSet<TicketEntryPromotionDO> promotions) {
		super();
		this.playerId = playerId;
		this.promotions = promotions;

		Set<Integer> entryYears = new HashSet<Integer>();
		BigInteger temp = BigInteger.ZERO;
		for (TicketEntryPromotionDO tepDO : promotions) {
			temp.add(BigInteger.valueOf(tepDO.getTotalEntries().intValue()));
			entryYears.add(Integer.valueOf(tepDO.getPromotionInterval().getStart().getYear()));
		}
		totalEntries = temp;
		for (Entry<Integer, Interval> entry : SecondChanceDates.getYears().entrySet()) {
			if (entryYears.contains(entry.getKey())) {
				ticketEntryYears.put(entry.getKey(), new TicketEntryYear(entry.getValue(), Boolean.TRUE));
			}
			else {
				ticketEntryYears.put(entry.getKey(), new TicketEntryYear(entry.getValue(), Boolean.FALSE));
			}
		}
	}

	public Integer getPlayerId() {
		return playerId;
	}

	public SortedSet<TicketEntryPromotionDO> getPromotions() {
		return promotions;
	}

	public SortedMap<Integer, TicketEntryYear> getTicketEntryYears() {
		return ticketEntryYears;
	}

	public BigInteger getTotalEntries() {
		return totalEntries;
	}

}
