package com.flalottery.secondchance.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.TicketEntryJackpotPromotionDAO;

public class JackpotPromotionAction extends PromotionAction {

	private static final long serialVersionUID = 1614374506028620173L;
	private static final Logger logger = LoggerFactory.getLogger(JackpotPromotionAction.class.getName());
	protected final TicketEntryJackpotPromotionDAO dao = new TicketEntryJackpotPromotionDAO();

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
		setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
		return ENTRY;
	}

}
