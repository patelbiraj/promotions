package com.flalottery.secondchance.domain;

import org.joda.time.Interval;

public final class TicketEntryYear {

	public Interval getInterval() {
		return interval;
	}

	public Boolean getHasTicketEntry() {
		return hasTicketEntry;
	}

	private final Interval interval;
	private final Boolean hasTicketEntry;

	public TicketEntryYear(Interval interval, Boolean hasTicketEntry) {
		this.interval = interval;
		this.hasTicketEntry = hasTicketEntry;
	}

}
