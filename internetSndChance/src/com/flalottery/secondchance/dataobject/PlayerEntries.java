package com.flalottery.secondchance.dataobject;

import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

import org.joda.time.Interval;

import com.flalottery.secondchance.domain.TicketEntryYear;

public class PlayerEntries {

	private final SortedMap<Integer, TicketEntryYear> ticketEntryYears = new TreeMap<Integer, TicketEntryYear>(java.util.Collections.reverseOrder());
	private final List<TicketEntryDO> ticketEntryList;
	private final Interval interval;

	public PlayerEntries(final List<TicketEntryDO> ticketEntryList, final Interval interval) {
		super();
		this.ticketEntryList = ticketEntryList;
		this.interval = interval;
	}

	public List<TicketEntryDO> getTicketEntryList() {
		return ticketEntryList;
	}

	public SortedMap<Integer, TicketEntryYear> getTicketEntryYears() {
		return ticketEntryYears;
	}

	public Interval getInterval() {
		return interval;
	}

	public int getEntryCount() {
		return ticketEntryList.size();
	}

}
