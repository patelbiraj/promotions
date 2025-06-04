package com.flalottery.secondchance.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PromoGame implements Comparable<PromoGame> {

	private static final Logger logger = LoggerFactory.getLogger(PromoGame.class.getName());

	private final Integer promotionId;
	private final String gameNumber;
	private final Integer weight;
	private final VariableWeightType variableWeight;
	private final TicketType ticketType;

	public PromoGame(final Integer promotionId, final String gameNumber, final Integer weight, final VariableWeightType variableWeight, final TicketType ticketType) {
		super();
		this.promotionId = promotionId;
		this.gameNumber = gameNumber;
		this.weight = weight;
		this.variableWeight = variableWeight;
		this.ticketType = ticketType;
	}

	public String getGameNumber() {
		return gameNumber;
	}

	public Integer getWeight() {
		return weight;
	}

	public TicketType getTicketType() {
		return ticketType;
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	public VariableWeightType getVariableWeight() {
		return variableWeight;
	}

	@Override
	public int compareTo(final PromoGame o) {
		int returnValue = this.promotionId.compareTo(o.promotionId);
		if (returnValue == 0) {
			try {
				returnValue = Integer.valueOf(this.gameNumber).compareTo(Integer.valueOf(o.gameNumber));
			} catch (final NumberFormatException e) {
				logger.warn("gameNumber:" + e);
			}
		}
		return returnValue;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("PromoGame [getGameNumber()=");
		builder.append(getGameNumber());
		builder.append(", getWeight()=");
		builder.append(getWeight());
		builder.append(", getTicketType()=");
		builder.append(getTicketType());
		builder.append(", getPromotionId()=");
		builder.append(getPromotionId());
		builder.append(", getVariableWeight()=");
		builder.append(getVariableWeight());
		builder.append("]");
		return builder.toString();
	}

}
