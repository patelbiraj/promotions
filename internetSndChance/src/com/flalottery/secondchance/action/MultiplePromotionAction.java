package com.flalottery.secondchance.action;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.Promotion;
import com.flalottery.secondchance.domain.PromotionType;
import com.opensymphony.xwork2.util.TextParseUtil;

/**
 * THIS ACTION HAS NOT YET BEEN USED WITH AN ACTIVE PROMOTION. IT MAY NEED MORE
 * WORK.
 * 
 * Action to be used when combining multiple promotions in the database into a
 * single promotion on the website (For example the 2013 Gridiron promotion was
 * set up as two different promotions in the database - a UF Gridiron and a FSU
 * Gridiron.)
 * 
 */
public class MultiplePromotionAction extends PromotionAction {

	private static final long serialVersionUID = 1614374506028620173L;
	private static final Logger logger = LoggerFactory.getLogger(MultiplePromotionAction.class.getName());

	private Set<Integer> multiplePromotionIds = new HashSet<Integer>();
	private String websitePromotionName = "";

	@Override
	protected String read() throws Exception {
		setTicketEntryList(dao.getTicketEntriesForMultiplePromotions(getLoginDO().getPlayerId(), multiplePromotionIds));
		return ENTRY;
	}

	@Override
	protected String create() throws Exception {
		validate();
		if (!this.hasErrors()) {
			switch (dao.newTicketEntry(getLoginDO().getPlayerId(), promotionId, form,0)) {
				case SUCCESS:
				case SUCCESSFUL_SCRATCH:
				case SUCCESSFUL_VOUCHER:
					messages.setMessage(getText("ticketEntry.message.success"));
					break;
				case DUPLICATE:
				case DUPLICATE_SCRATCH:
				case DUPLICATE_VOUCHER:
					messages.setMessage(getText("ticketEntry.message.duplicate"));
					break;
				case INVALID_SCRATCH:
					messages.setMessage(getText("ticketEntry.message.invalid.scratch"));
					break;
				case INVALID_VOUCHER:
					messages.setMessage(getText("ticketEntry.message.invalid.voucher"));
					break;
				case DISQUALIFIED_VOUCHER:
					messages.setMessage(getText("ticketEntry.message.disqualified.voucher"));
					break;
				default:
					messages.setMessage(getText("ticketEntry.message.invalid"));
					break;
			}
		}
		setTicketEntryList(dao.getTicketEntriesForMultiplePromotions(getLoginDO().getPlayerId(), multiplePromotionIds));
		return ENTRY;
	}

	public void setMultiplePromotionIds(final String multiplePromotionIds) {
		final Set<Integer> temp = new HashSet<Integer>();
		for (final String s : TextParseUtil.commaDelimitedStringToSet(multiplePromotionIds)) {
			try {
				temp.add(Integer.valueOf(s));
			} catch (final Exception e) {
				logger.warn("Exception: " + e);
				continue;
			}
		}
		this.multiplePromotionIds = Collections.unmodifiableSet(temp);
	}

	/**
	 * Since this class accommodates multiple promotions, a call to
	 * getPromotion() returns an invalid promotion.
	 * 
	 * @return - an invalid promotion
	 */
	@Override
	public Promotion getPromotion() {
		return new Promotion(0, getWebsitePromotionName(), null, PromotionType.INVALID);
	}

	public String getWebsitePromotionName() {
		return websitePromotionName;
	}

	public void setWebsitePromotionName(final String websitePromotionName) {
		this.websitePromotionName = websitePromotionName;
	}
}
