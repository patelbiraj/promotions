package com.flalottery.secondchance.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.TicketEntryDAO;
import com.flalottery.secondchance.dataobject.TicketEntryDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.Promotion;
import com.flalottery.secondchance.domain.PromotionType;
import com.flalottery.secondchance.form.TicketEntryForm;

/**
 * Action to be used for all standard promotions (voucher or scratch). Handles
 * How to Play, Prizes, Rules, Ticket Entry, Winners, and How to Claim.
 * 
 */
public class PromotionAction extends SecondChanceAction {

	private static final long serialVersionUID = 1614374506028620173L;
	private static final Logger logger = LoggerFactory.getLogger(PromotionAction.class.getName());

	protected TicketEntryForm form = new TicketEntryForm();
	protected final TicketEntryDAO dao = new TicketEntryDAO();
	protected List<TicketEntryDO> ticketEntryList = new ArrayList<TicketEntryDO>(10);
	protected StringBuilder pageTitle = new StringBuilder();
	protected Integer promotionId = 0;
	protected Promotion promotion = null;
	protected String returnValue;

	/**
	 * Action method for the promotion's ticket entry page.
	 * 
	 * @return - ENTRY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String entry() throws Exception {
		if (PromotionType.VOUCHER.equals(getPromotion().getPromotionType())) {
			setPromotionPageTitle(Constants.PAGE_TITLE_VOUCHER_ENTRY);
			messages.setH1Title(getText("voucherEntry.h1Title"));
		}
		else {
			setPromotionPageTitle(Constants.PAGE_TITLE_TICKET_ENTRY);
			messages.setH1Title(getText("ticketEntry.h1Title"));
		}
		return form.isSubmitted() ? create() : read();
	}

	/**
	 * Called when player first visits the ticket entry page (when they are not
	 * submitting a ticket).
	 * 
	 * @return - TICKET_ENTRY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@Override
	protected String read() throws Exception {
		setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
		return ENTRY;
	}

	/**
	 * Submits a player's ticket entry to the database.
	 * 
	 * @return - TICKET_ENTRY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@Override
	protected String create() throws Exception {
		validate();
		if (!this.hasErrors()) {
			switch (dao.newTicketEntry(getLoginDO().getPlayerId(), promotionId, form,0)) {
				case SUCCESS:
				case SUCCESSFUL_SCRATCH:
				case SUCCESSFUL_VOUCHER:
					messages.setMessage(getText("ticketEntry.message.success.coupon"));
					form = new TicketEntryForm();
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
		setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
		return ENTRY;
	}

	@Override
	public void validate() {
		final String entry = form.getTicketNumber();
		if (!StringUtils.isNumeric(entry) || (!getPromotion().getAllowedDigits().contains(entry.length()) && !(entry.length() < 17 || entry.length() > 20))) {
			addFieldError("form.ticketNumber", getText("errors.entry", new String[] { getPromotion().ticketTypesToString() }));
		}
	}

	public TicketEntryForm getForm() {
		return this.form;
	}

	public void setForm(final TicketEntryForm form) {
		this.form = form;
	}

	public List<TicketEntryDO> getTicketEntryList() {
		return ticketEntryList;
	}

	public void setTicketEntryList(final List<TicketEntryDO> ticketEntryList) {
		this.ticketEntryList = ticketEntryList;
		java.util.Collections.sort(this.ticketEntryList);
		java.util.Collections.reverse(this.ticketEntryList);
	}

	/**
	 * Action method for the promotion's how to claim page.
	 * 
	 * @return - HOW_TO_CLAIM
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String howToClaim() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_HOW_TO_CLAIM);
		messages.setH1Title(getText("howToClaim.h1Title"));
		return HOW_TO_CLAIM;
	}

	/**
	 * Action method for the promotion's how to play page.
	 * 
	 * @return - HOW_TO_PLAY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String howToPlay() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_HOW_TO_PLAY);
		messages.setH1Title(getText("howToPlay.h1Title"));
		return HOW_TO_PLAY;
	}

	/**
	 * Action method for the promotion's prizes page.
	 * 
	 * @return - PRIZES
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String prizes() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_PRIZES);
		messages.setH1Title(getText("prizes.h1Title"));
		return PRIZES;
	}

	/**
	 * Action method for the promotion's rules page.
	 * 
	 * @return - RULES
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String rules() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_RULES);
		messages.setH1Title(getText("rules.h1Title"));
		return RULES;
	}

	/**
	 * Action method for the promotion's winners page.
	 * 
	 * @return - WINNERS
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String winners() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_WINNERS);
		messages.setH1Title(getText("winners.h1Title"));
		return WINNERS;
	}

	/**
	 * Action method for the promotion's games page.
	 * 
	 * @return - GAMES
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String games () throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_GAMES);
		messages.setH1Title(getText("games.h1Title"));
		return GAMES;
	}		
	
	public void setPromotionPageTitle(final String title) {
		messages.setPageTitle(pageTitle.append(title).append(Constants.SPACE_HYPHEN_SPACE).append(getPromotion().getName()).append(Constants.SPACE_HYPHEN_SPACE)
				.append(Constants.PAGE_TITLE_BASE).toString());
	}

	public Promotion getPromotion() {
		return promotion;
	}

	public void setPromotionId(final Integer promotionId) {
		this.promotionId = promotionId;
		this.promotion = getAllPromotions().get(promotionId);
		if (null != this.promotion) {
			promotion.getPromotionInterval();
		}
	}

	protected static final String HOW_TO_CLAIM = "howToClaim";
	protected static final String HOW_TO_PLAY = "howToPlay";
	protected static final String PRIZES = "prizes";
	protected static final String RULES = "rules";
	protected static final String WINNERS = "winners";
	protected static final String ENTRY = "entry";
	protected static final String GAMES = "games";	
	
}
