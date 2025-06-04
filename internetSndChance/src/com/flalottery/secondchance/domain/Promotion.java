package com.flalottery.secondchance.domain;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

import org.apache.commons.lang3.StringEscapeUtils;
import org.joda.time.Interval;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public final class Promotion implements Comparable<Promotion> {

	private static final Logger logger = LoggerFactory.getLogger(Promotion.class);

	private final Integer promotionId;
	private final String name;
	private final Interval promotionInterval;
	private final String navDisplay;
	private final String isExt;
	private final String extUrl;
	private final String vendor;
	private final String promoType;


	private final PromotionType promotionType;
	private final SortedSet<TicketType> ticketTypes = new TreeSet<TicketType>();
	private final Map<String, PromoGame> games = new HashMap<String, PromoGame>();
	private final TreeSet<PromoDraw> draws = new TreeSet<PromoDraw>();
	private final TreeSet<Integer> allowedDigits = new TreeSet<Integer>();

	public Promotion(final Integer promotionId, final String name, final Interval promotionInterval, final PromotionType promotionType) {
		super();
		this.promotionId = promotionId;
		this.name = StringEscapeUtils.escapeHtml4(name);
		this.promotionInterval = promotionInterval;
		this.promotionType = promotionType;
		this.navDisplay = "";
		this.isExt = "";
		this.extUrl = "";
		this.vendor = "";
		this.promoType = "";
	}
	
	public Promotion(final Integer promotionId, final String name, final Interval promotionInterval, final PromotionType promotionType, final String navDisplay, final String isExt, final String extUrl, final String vendor, final String promoType) {
		super();
		this.promotionId = promotionId;
		this.name = StringEscapeUtils.escapeHtml4(name);
		this.promotionInterval = promotionInterval;
		this.promotionType = promotionType;
		this.navDisplay = navDisplay;
		this.isExt = isExt;
		this.extUrl = extUrl;
		this.vendor = vendor;
		this.promoType = promoType;
	}
	
	public Promotion(final Integer promotionId, final String name, final Interval promotionInterval, final PromotionType promotionType, final String navDisplay, final String isExt, final String extUrl, final String vendor, final String promoType, final String addons) {
		super();
		this.promotionId = promotionId;
		this.name = StringEscapeUtils.escapeHtml4(name);
		this.promotionInterval = promotionInterval;
		this.promotionType = promotionType;
		this.navDisplay = navDisplay;
		this.isExt = isExt;
		this.extUrl = extUrl;
		this.vendor = vendor;
		this.promoType = promoType;
	}	

	public PromoGame addPromoGame(final PromoGame pGame) {
		//logger.debug("pGame ticket type " + pGame.getTicketType());
		//logger.debug("pGame ticket type digits " + pGame.getTicketType().getDigits());
		if (null != pGame.getTicketType().getDigits()) {
			allowedDigits.add(pGame.getTicketType().getDigits());
		}
		ticketTypes.add(pGame.getTicketType());
		return games.put(pGame.getGameNumber(), pGame);
	}

	public Boolean addPromoDraw(final PromoDraw pDraw) {
		return draws.add(pDraw);
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	public Map<String, PromoGame> getGames() {
		return Collections.unmodifiableMap(games);
	}

	public String getName() {
		return name;
	}

	public Interval getPromotionInterval() {
		return promotionInterval;
	}

	public SortedSet<PromoDraw> getDraws() {
		return Collections.unmodifiableSortedSet(draws);
	}

	public SortedSet<TicketType> getTicketTypes() {
		return Collections.unmodifiableSortedSet(ticketTypes);
	}

	public String ticketTypesToString() {
		final StringBuilder sbldr = new StringBuilder();
		String prefix = "";
		for (final TicketType tt : ticketTypes) {
			if (!tt.equals(ticketTypes.first()) && tt.equals(ticketTypes.last())) {
				prefix = " or ";
			}
			sbldr.append(prefix);
			prefix = ", ";
			sbldr.append(tt.toStringForErrors());
		}
		return sbldr.toString();
	}

	public String getNavDisplay() {
		return navDisplay;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("Promotion [getPromotionId()=");
		builder.append(getPromotionId());
		builder.append(", getGames()=");
		builder.append(getGames());
		builder.append(", getName()=");
		builder.append(getName());
		builder.append(", getPromotionInterval()=");
		builder.append(getPromotionInterval());
		builder.append(", getDraws()=");
		builder.append(getDraws());
		builder.append(", getTicketTypes()=");
		builder.append(getTicketTypes());
		builder.append("]");
		return builder.toString();
	}

	public PromotionType getPromotionType() {
		return promotionType;
	}

	public TreeSet<Integer> getAllowedDigits() {
		return allowedDigits;
	}

	@Override
	public int compareTo(final Promotion o) {
		int returnValue = this.getPromotionInterval().getEnd().compareTo(o.getPromotionInterval().getEnd());
		if (0 == returnValue) {
			returnValue = this.getPromotionId().compareTo(o.getPromotionId());
		}
		return returnValue;
	}

	public String getIsExt() {
		return isExt;
	}

	public String getExtUrl() {
		return extUrl;
	}

	public String getVendor() {
		return vendor;
	}
	
	public String getPromoType() {
		return promoType;
	}	
}
