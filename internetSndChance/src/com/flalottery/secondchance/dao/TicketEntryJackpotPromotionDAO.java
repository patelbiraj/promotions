package com.flalottery.secondchance.dao;

import java.sql.SQLException;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.Validate;

import com.flalottery.secondchance.form.TicketEntryForm;

public class TicketEntryJackpotPromotionDAO extends TicketEntryDAO {

	@Override
	public DatabaseStatusFlag newTicketEntry(final Integer playerId, final Integer promotionId, final TicketEntryForm form, long ticketPrice) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(form);
		Validate.notEmpty(form.getTicketNumber());
		Validate.notNull(promotionId);
		try {
			cStmnt = getConnection().prepareCall("{call SECOND_CHANCE_PKG.enter_tkt(?, ?, ?, ?, ?)}");
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, promotionId.intValue());
			cStmnt.setString(3, form.getTicketNumber().substring(0, 4));
			cStmnt.setString(4, form.getTicketNumber().substring(4));
			cStmnt.registerOutParameter(5, OracleTypes.VARCHAR);
			cStmnt.execute();
			return DatabaseStatusFlag.convertToStatusFlagForTicketEntry(cStmnt.getInt(5));
		} finally {
			finalBlock();
		}
	}

}
