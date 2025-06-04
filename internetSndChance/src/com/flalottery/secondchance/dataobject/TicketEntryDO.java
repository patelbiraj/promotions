package com.flalottery.secondchance.dataobject;

import java.math.BigInteger;

import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;

import com.flalottery.secondchance.utility.SecondChanceDates;

/**
 * Represents an entry into a Second Chance promotion.
 * 
 */
public final class TicketEntryDO implements Comparable<TicketEntryDO> {

	private final BigInteger memberTicketId;
	private final String promotionName;
	private final DateTime startDate;
	private final DateTime endDate;
	private final DateTime drawDate;
	private final String ticketNumber;
	private final String ticketNumberDisplay;
	private final String gameNumber;
	private final DateTime createDate;
	private final Integer promoId;
	private final Integer ticketWeight;
	private final Integer bonusPoint;
	private final Integer prizeLevel;
	private final String prize;
	private final Boolean cancelledTicket;

	public TicketEntryDO(final BigInteger memberTicketId, final String promotionName, final DateTime startDate, final DateTime endDate, final DateTime drawDate,
			final String ticketNumber, final String gameNumber, final DateTime createDate, final Integer promoId, final Integer ticketWeight, final Boolean cancelledTicket,
			final Integer prizeLevel, final String prize) {
		this.promotionName = promotionName;
		this.startDate = startDate;
		this.drawDate = drawDate;
		this.endDate = endDate;
		this.memberTicketId = memberTicketId;
		this.ticketNumber = ticketNumber;
		this.ticketNumberDisplay = "";
		this.gameNumber = gameNumber;
		this.createDate = createDate;
		this.promoId = promoId;
		this.ticketWeight = ticketWeight;
		this.cancelledTicket = cancelledTicket;
		this.prizeLevel = prizeLevel;
		this.prize = StringUtils.defaultString(prize);
		this.bonusPoint = 0;
	}

	public TicketEntryDO(final BigInteger memberTicketId, 
			final String promotionName, final DateTime startDate, final DateTime endDate, final DateTime drawDate,
			final String ticketNumber, final String gameNumber, final DateTime createDate, final Integer promoId, final Integer ticketWeight, final Boolean cancelledTicket,
			final Integer prizeLevel, final String prize, final Integer bonusPoint) {
		this.promotionName = promotionName;
		this.startDate = startDate;
		this.drawDate = drawDate;
		this.endDate = endDate;
		this.memberTicketId = memberTicketId;
		this.ticketNumber = ticketNumber;
		this.gameNumber = gameNumber;
		this.createDate = createDate;
		this.promoId = promoId;
		this.ticketWeight = ticketWeight;
		this.ticketNumberDisplay = "";
		this.cancelledTicket = cancelledTicket;
		this.prizeLevel = prizeLevel;
		this.prize = StringUtils.defaultString(prize);
		this.bonusPoint = bonusPoint;
	}
	
	public TicketEntryDO(final BigInteger memberTicketId, 
			final String promotionName, final DateTime startDate, final DateTime endDate, final DateTime drawDate,
			final String ticketNumber, final String gameNumber, final DateTime createDate, final Integer promoId, final Integer ticketWeight, final String ticketNumberDisplay, final Boolean cancelledTicket,
			final Integer prizeLevel, final String prize, final Integer bonusPoint) {
		this.promotionName = promotionName;
		this.startDate = startDate;
		this.drawDate = drawDate;
		this.endDate = endDate;
		this.memberTicketId = memberTicketId;
		this.ticketNumber = ticketNumber;
		this.gameNumber = gameNumber;
		this.createDate = createDate;
		this.promoId = promoId;
		this.ticketWeight = ticketWeight;
		this.ticketNumberDisplay = ticketNumberDisplay;
		this.cancelledTicket = cancelledTicket;
		this.prizeLevel = prizeLevel;
		this.prize = StringUtils.defaultString(prize);
		this.bonusPoint = bonusPoint;
	}	
	
	public String getPromotionName() {
		return promotionName;
	}

	public DateTime getStartDate() {
		return startDate;
	}

	public String getStartDateFormatted() {
		return SecondChanceDates.formatDate(startDate, SecondChanceDates.SHORT_DATE);
	}

	public DateTime getEndDate() {
		return endDate;
	}

	public String getEndDateFormatted() {
		return SecondChanceDates.formatDate(endDate, SecondChanceDates.SHORT_DATE);
	}

	public DateTime getDrawDate() {
		return drawDate;
	}

	public String getDrawDateFormatted() {
		if (ticketWeight > 0){ 
			return SecondChanceDates.formatDate(drawDate, SecondChanceDates.SHORT_DATE);
		}
		else {
		    return String.valueOf(ticketWeight);
		}
	}

	public BigInteger getMemberTicketId() {
		return memberTicketId;
	}

	public String getTicketNumber() {
		return ticketNumber;
	}

	public String getTicketNumberDisplay() {
		if(ticketNumber != null && ticketNumber.length() > 14) {
			return ticketNumber.substring(0 , 14);
		} else {
			return ticketNumberDisplay;
		}
	}	
	
	public String getGameNumber() {
		return gameNumber;
	}

	public DateTime getCreateDate() {
		return createDate;
	}

	public String getCreateDateFormatted() {
		return SecondChanceDates.formatDate(createDate, SecondChanceDates.SHORT_DATE);
	}

	public Integer getTicketWeight() {
		return ticketWeight;
	}

	public Integer getPrizeLevel() {
		return prizeLevel;
	}

	public String getPrize() {
		return prize;
	}

	public Boolean getCancelledTicket() {
		return cancelledTicket;
	}

	public Integer getBonusPoint() {
		return bonusPoint;
	}

	@Override
	public int compareTo(final TicketEntryDO o) {
		return this.getMemberTicketId().compareTo(o.getMemberTicketId());
	}

	public Integer getPromoId() {
		return promoId;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("TicketEntryDO [getPromotionName()=");
		builder.append(getPromotionName());
		builder.append(", getStartDate()=");
		builder.append(getStartDate());
		builder.append(", getStartDateFormatted()=");
		builder.append(getStartDateFormatted());
		builder.append(", getEndDate()=");
		builder.append(getEndDate());
		builder.append(", getEndDateFormatted()=");
		builder.append(getEndDateFormatted());
		builder.append(", getDrawDate()=");
		builder.append(getDrawDate());
		builder.append(", getDrawDateFormatted()=");
		builder.append(getDrawDateFormatted());
		builder.append(", getMemberTicketId()=");
		builder.append(getMemberTicketId());
		builder.append(", getTicketNumber()=");
		builder.append(getTicketNumber());
		builder.append(", getGameNumber()=");
		builder.append(getGameNumber());
		builder.append(", getCreateDate()=");
		builder.append(getCreateDate());
		builder.append(", getCreateDateFormatted()=");
		builder.append(getCreateDateFormatted());
		builder.append(", getTicketWeight()=");
		builder.append(getTicketWeight());
		builder.append(", getPrizeLevel()=");
		builder.append(getPrizeLevel());
		builder.append(", getPrize()=");
		builder.append(getPrize());
		builder.append(", getCancelledTicket()=");
		builder.append(getCancelledTicket());
		builder.append(", hashCode()=");
		builder.append(hashCode());
		builder.append(", getPromoId()=");
		builder.append(getPromoId());
		builder.append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (memberTicketId == null ? 0 : memberTicketId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		TicketEntryDO other = (TicketEntryDO) obj;
		if (memberTicketId == null) {
			if (other.memberTicketId != null) {
				return false;
			}
		}
		else if (!memberTicketId.equals(other.memberTicketId)) {
			return false;
		}
		return true;
	}

}
