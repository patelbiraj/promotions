package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.Validate;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.form.TicketEntryForm;
import com.flalottery.secondchance.dataobject.TicketFamilyDO;

public class TicketEntrySocialPromotionDAO extends TicketEntryDAO {

	private static final Logger logger = LoggerFactory.getLogger(TicketEntrySocialPromotionDAO.class);

	@Override
	public DatabaseStatusFlag newTicketEntry(final Integer playerId, final Integer promotionId, final TicketEntryForm form, long ticketPrice) throws SQLException {
		logger.debug("Social Promo - newTicketEntry for PlayerId " + playerId + " promotionId " + promotionId + ", and ticketEntryForm " + form.toString());
		System.out.println("Social Promo - newTicketEntry for PlayerId " + playerId + " promotionId " + promotionId + ", and ticketEntryForm " + form.toString()+ " ticketPrice " + ticketPrice + " !!!!");

		Validate.notNull(playerId);
		Validate.notNull(form);
		if(form.getIsScanned()) {
			Validate.notEmpty(form.getScannedTicketNumber());
		} else {
			Validate.notEmpty(form.getTicketNumber());
		}
		Validate.notNull(promotionId);
		int i = 0;
		if(form.getFbPromoCode() != null && !form.getFbPromoCode().equals("")){
			DatabaseStatusFlag dsf = fbReadPromoEntry(playerId,promotionId);
			if(dsf != DatabaseStatusFlag.SUCCESS) {
				i = 1;
			}
		}
		
		if(form.getInstPromoCode() != null && !form.getInstPromoCode().equals("")){
			DatabaseStatusFlag dsf = instReadPromoEntry(playerId,form.getInstPromoCode());
			if(dsf != DatabaseStatusFlag.SUCCESS) {
				i = 1;
			}
		}
		
		TicketEntryDAO ticketEntryDAO = new TicketEntryDAO();

		if(ticketEntryDAO.isLotto(form.getIsScanned(), form.getTicketNumber(), form.getScannedTicketNumber())) {			
			if(ticketEntryDAO.validateDrawTicket(promotionId, form.getIsScanned(), form.getTicketNumber(), form.getScannedTicketNumber(), form)) {
				logger.info("From isLotto:::::" + (ticketEntryDAO.validateDrawTicket(promotionId, form.getIsScanned(), form.getTicketNumber(), form.getScannedTicketNumber(), form)));				
				//return DatabaseStatusFlag.INVALID_SCRATCH;
			}
			else {
				return DatabaseStatusFlag.INVALID_SCRATCH;
			}
		}
		
		String returnCode = "";
		try {
			if(form.getIsScanned()) {
				cStmnt = getConnection().prepareCall(StoredProcs.ENTER_SCANNED_TICKET_WITH_SOCIAL_PROMO);				
				System.out.println("From scanned Social Promo:::");
				logger.info("From scanned Social Promo:::");
				
			} else {
				cStmnt = getConnection().prepareCall(StoredProcs.ENTER_TICKET_WITH_SOCIAL_PROMO);				
				System.out.println("From Social Promo:::");
				logger.info("From Social Promo:::");
			}
			cStmnt.setInt(1, playerId);			
			cStmnt.setInt(2, promotionId.intValue());			
			if(form.getIsScanned()) {
				cStmnt.setString(3, form.getScannedTicketNumber());		
				logger.info("scanned number" + form.getScannedTicketNumber());
			} else {
				cStmnt.setString(3, form.getTicketNumber());
				logger.info("form.getTicketNumber()" + form.getTicketNumber());
			}
			cStmnt.setString(4, form.getFbPromoCode());			
			cStmnt.setString(5, form.getInstPromoCode());			
			cStmnt.setInt(6, i);			
			cStmnt.setString(7, form.getAppEntry());	
	        logger.info("App Entry : " + form.getAppEntry());			
			cStmnt.setInt(8,(int)ticketPrice);	
	        logger.info("Ticket Price : " + ticketPrice);
	        logger.info("Status code from SP : " + DatabaseStatusFlag.convertToStatusFlag(returnCode) + " : " +  returnCode);
			cStmnt.registerOutParameter(9, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(9);	
			logger.info("RETURN CODE : " +  returnCode);
			System.out.print("Status code from SP : " + DatabaseStatusFlag.convertToStatusFlag(returnCode) + " : " +  returnCode);
	        logger.info("Status code from SP : " + DatabaseStatusFlag.convertToStatusFlag(returnCode) + " : " +  returnCode);
			//return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} catch(Exception ex) {
			ex.printStackTrace(System.out);			
		}
		finally {
			finalBlock();
		}
		return DatabaseStatusFlag.convertToStatusFlag(returnCode);
	}

	public DatabaseStatusFlag fbValidatePromoDate() throws SQLException {
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.FB_VALIDATE_PROMO_DATE);
			cStmnt.registerOutParameter(1, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(1);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}
	
	public DatabaseStatusFlag fbValidatePromoDate(final Integer promotionId) throws SQLException {
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.FB_VALIDATE_PROMO_PER_GAME);
			cStmnt.setInt(1, promotionId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(2);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}

	public DatabaseStatusFlag fbReadPromoEntry(final Integer playerId, Integer promotionId) throws SQLException {
		logger.debug("newTicketEntry for PlayerId " + playerId + " promotionId " + promotionId );
		Validate.notNull(playerId);
		//Validate.notNull(promotionCode);
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.FB_READ_PROMO_ENTRY);
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, promotionId);
			cStmnt.registerOutParameter(3, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(3);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}

	public DatabaseStatusFlag instValidatePromoDate() throws SQLException {
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.INST_VALIDATE_PROMO_DATE);
			cStmnt.registerOutParameter(1, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(1);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}

	public DatabaseStatusFlag instValidatePromoDate(final Integer promotionId) throws SQLException {
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.INST_VALIDATE_PROMO_PER_GAME);
			cStmnt.setInt(1, promotionId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(2);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}


	public List<TicketFamilyDO> getTicketFamily(final Integer playerID, final Integer promotionID) throws SQLException {
		List<TicketFamilyDO> TicketDOs = new ArrayList<TicketFamilyDO>(10);
		
		try {
			cStmnt = getConnection().prepareCall("{call WEB_SECOND_CHANCE.get_ticket_entries_family(?,?,?)}");
			cStmnt.setInt(1, playerID);
			cStmnt.setInt(2, promotionID);			
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			
			cStmnt.execute();
		
			setRs((ResultSet) cStmnt.getObject(3));
		
			if(rs != null) {

				while(rs.next()) {
					TicketDOs.add(new TicketFamilyDO(rs.getInt(11), new DateTime(rs.getDate(9)), new DateTime(rs.getDate(5)), rs.getString(6)));
				}
			}	
		} finally {
			finalBlock();
		}
		return TicketDOs;
		
	}
	
	public List<TicketFamilyDO> getTicketFamilyTest(final Integer playerID, final Integer promotionID){
		List<TicketFamilyDO> TicketDOs = new ArrayList<TicketFamilyDO>(10);
		
		TicketDOs.add(new TicketFamilyDO(0, "123456", "03/13/2024", "04/17/2024"));
		TicketDOs.add(new TicketFamilyDO(1, "654321", "04/18/2024", "04/25/2024"));
		TicketDOs.add(new TicketFamilyDO(1, "123457", "04/26/2024", "05/03/2024"));
		TicketDOs.add(new TicketFamilyDO(0, "654320", "05/04/2024", "05/11/2024"));
		return TicketDOs;
	}
	

	
	public DatabaseStatusFlag instReadPromoEntry(final Integer playerId, final String promotionCode) throws SQLException {
		logger.debug("newTicketEntry for PlayerId " + playerId + " promotionCode " + promotionCode );
		Validate.notNull(playerId);
		//Validate.notNull(promotionCode);
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.INST_READ_PROMO_ENTRY);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, promotionCode);
			cStmnt.registerOutParameter(3, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(3);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}	


}
