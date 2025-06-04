package com.flalottery.secondchance.dao;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.Validate;
import org.joda.time.DateTime;
import org.joda.time.Interval;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dataobject.ESAResponseDO;
import com.flalottery.secondchance.dataobject.MobileTicketEntryResponseDO;
import com.flalottery.secondchance.dataobject.TicketEntryDO;
import com.flalottery.secondchance.dataobject.TicketEntryPromotionDO;
import com.flalottery.secondchance.dataobject.TicketFamilyDO;
import com.flalottery.secondchance.dataobject.TicketFamilyMobileDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.TicketEntrySummary;
import com.flalottery.secondchance.form.TicketEntryForm;
import com.flalottery.secondchance.utility.ESAClient;
import com.flalottery.secondchance.utility.RunTimeEnv;

public class TicketEntryDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(TicketEntryDAO.class);
	private ESAResponseDO esaResponseDO;

	public TicketEntrySummary getTicketEntrySummary(final Integer playerId) throws SQLException {
		final TicketEntrySummary ticketEntrySummary = new TicketEntrySummary(playerId, getTicketEntryPromotions(playerId));
		return ticketEntrySummary;
	}
	
	
	//public DatabaseStatusFlag ticketEntry(final Integer playerId, final Integer promotionId, final TicketEntryForm form, long ticketPrice) throws SQLException {
	public DatabaseStatusFlag ticketEntry(final Integer playerId, final Integer promotionId, final TicketEntryForm form, long ticketPrice) throws SQLException {
		logger.debug("newTicketEntry for PlayerId " + playerId + " promotionId " + promotionId + ", and ticketEntryForm " + form.toString());
		System.out.println("Normal Promo - newTicketEntry for PlayerId " + playerId + " promotionId " + promotionId + ", and ticketEntryForm " + form.toString()+ " ticketPrice " + ticketPrice + " !!!!");

		Validate.notNull(playerId);
		Validate.notNull(form);
		if(form.getIsScanned()) {
			Validate.notEmpty(form.getScannedTicketNumber());
		} else {
			Validate.notEmpty(form.getTicketNumber());
		}
		Validate.notNull(promotionId);
		String returnCode = "";

		
		if(isLotto(form.getIsScanned(), form.getTicketNumber(), form.getScannedTicketNumber())) {
		
			if(validateDrawTicket(promotionId, form.getIsScanned(), form.getTicketNumber(), form.getScannedTicketNumber(), form)) {
				System.out.println("From isLotto:::::" + (validateLotto(promotionId, form.getIsScanned(), form.getTicketNumber(), form.getScannedTicketNumber(), form)));								
			}
			else {
				return DatabaseStatusFlag.INVALID_SCRATCH;
			}
		}
				
		try {
			if(form.getIsScanned()) {				
				
				cStmnt = getConnection().prepareCall(StoredProcs.ENTER_SCANNED_TICKET);
				System.out.println("From scanned normal Promo:::");

			} else {				
				cStmnt = getConnection().prepareCall(StoredProcs.ENTER_TICKET);
				System.out.println("From normal Promo:::");
			}			
			cStmnt.setInt(1, playerId);			
			cStmnt.setInt(2, promotionId.intValue());
			if(form.getIsScanned()) {				
				cStmnt.setString(3, form.getScannedTicketNumber());
			} else {				
				cStmnt.setString(3, form.getTicketNumber());
			}			
			cStmnt.setString(4, form.getAppEntry());			
			cStmnt.setLong(5, ticketPrice);	
			System.out.println("Ticket Price from ticketentrydao: " + ticketPrice);
			cStmnt.registerOutParameter(6, OracleTypes.VARCHAR);			
			cStmnt.execute();
			returnCode = cStmnt.getString(6);		
			System.out.print("Status code from SP : " + DatabaseStatusFlag.convertToStatusFlag(returnCode) + " : " +  returnCode);

			//return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} catch(Exception ex) {			
			ex.printStackTrace(System.out);
		}finally {
			finalBlock();
		}
		System.out.println("\n\nDSF from ticketEntry" + returnCode);
		return DatabaseStatusFlag.convertToStatusFlag(returnCode);
	}

	public DatabaseStatusFlag newTicketEntry(final Integer playerId, final Integer promotionId, final TicketEntryForm form, long ticketPrice) throws SQLException {		
		return this.ticketEntry(playerId, promotionId, form, ticketPrice);
	}
	
	public MobileTicketEntryResponseDO newTicketEntryService(final Integer playerId, final Integer promotionId, final TicketEntryForm form, long ticketPrice) throws SQLException {
		MobileTicketEntryResponseDO mobileTicketEntryResponse = new MobileTicketEntryResponseDO();
		if (promotionId == 129 || promotionId == 132 || promotionId == 131 || promotionId == 114 || promotionId == 119 || promotionId == 121) {
			try {
				esaResponseDO = this.esaValidation(playerId, promotionId, form, ticketPrice);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (esaResponseDO != null) {
				mobileTicketEntryResponse.getEsaResponse().setResponseMessage(esaResponseDO.getResponseMessage());;
				if (esaResponseDO.getResponseStatus() != null
						&& esaResponseDO.getResponseStatus().equalsIgnoreCase("ACCEPTED")) {
					mobileTicketEntryResponse.getEsaResponse().setAccepted(true);
					if (esaResponseDO.getTicketPrice() != null) {
						ticketPrice = Long.parseLong(esaResponseDO.getTicketPrice());
						mobileTicketEntryResponse.getEsaResponse().setTicketPrice(esaResponseDO.getTicketPrice());
					}
				}
			}
		} 		
		mobileTicketEntryResponse.setDatabaseStatusFlag(this.ticketEntry(playerId, promotionId, form, ticketPrice));
		return mobileTicketEntryResponse;
	}
	
	public ESAResponseDO esaValidation(final Integer playerId, final Integer promotionId, final TicketEntryForm form,  long ticketPrice) throws ParseException, IOException {
		ESAClient esaClient =  new ESAClient();	
		//String esaResponseMessage = "";
		String envType = RunTimeEnv.getEnvType();
		String esaURL="";
		if (envType.equals(RunTimeEnv.PROD)) {
			esaURL = Constants.ESAPRODURL;
		} else if (envType.equals(RunTimeEnv.QA)) {
			esaURL = Constants.ESAQAURL;
		} else {
			esaURL = Constants.ESADEVURL;
		}
		return esaClient.validate(esaURL,form.getTicketNumber(), form.getTicketNumberPin(),playerId,promotionId);
	}
	
	public DatabaseStatusFlag newVoucherEntry(final Integer playerId, final Integer promotionId, final String ticketNumber, final Integer weight, final String appEntry) throws SQLException {
		logger.debug("newVoucherEntry for PlayerId " + playerId + " promotionId " + promotionId + " ticketNumber " + ticketNumber + ", and weight " + weight);
		Validate.notNull(playerId);
		Validate.notEmpty(ticketNumber);
		Validate.notNull(promotionId);
		Validate.notNull(weight);
		String returnCode = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ENTER_VOUCHER_WITH_WEIGHT);
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, promotionId.intValue());
			cStmnt.setString(3, ticketNumber);
			cStmnt.setInt(4, weight.intValue());
			cStmnt.setString(5, appEntry);
			cStmnt.registerOutParameter(6, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(6);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}
	
	public DatabaseStatusFlag newVoucherEntry(final Integer playerId, final Integer promotionId, final String ticketNumber, final Integer weight, final String appEntry, final String testJNDI) throws SQLException {
		logger.debug("newVoucherEntry for PlayerId " + playerId + " promotionId " + promotionId + " ticketNumber " + ticketNumber + ", and weight " + weight);
		Validate.notNull(playerId);
		Validate.notEmpty(ticketNumber);
		Validate.notNull(promotionId);
		Validate.notNull(weight);
		String returnCode = "";
		try {
			cStmnt = getConnection(testJNDI).prepareCall(StoredProcs.ENTER_VOUCHER_WITH_WEIGHT);
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, promotionId.intValue());
			cStmnt.setString(3, ticketNumber);
			cStmnt.setInt(4, weight.intValue());
			cStmnt.setString(5, appEntry);
			cStmnt.registerOutParameter(6, OracleTypes.VARCHAR);
			cStmnt.execute();
			returnCode = cStmnt.getString(6);
			return DatabaseStatusFlag.convertToStatusFlag(returnCode);
		} finally {
			finalBlock();
		}
	}
	

	public List<TicketEntryDO> getTicketEntriesByPromo(final Integer playerId, final Integer promotionId) throws SQLException {
		logger.debug("playerId = " + playerId + ", promotionId = " + promotionId);
		Validate.notNull(playerId);
		Validate.notNull(promotionId);
		final List<TicketEntryDO> ticketEntryDOs = new ArrayList<TicketEntryDO>(10);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TICKET_ENTRIES_BY_PROMO);
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, promotionId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(3));
			if(rs != null) {
				while (rs.next()) {
					ticketEntryDOs.add(new TicketEntryDO(rs.getBigDecimal(1).toBigInteger(), rs.getString(2), new DateTime(rs.getDate(3)), new DateTime(rs.getDate(4)), new DateTime(rs
							.getDate(5)), rs.getString(6), rs.getString(7), new DateTime(rs.getDate(8)), rs.getInt(9), rs.getInt(10), rs.getString(11), Boolean.valueOf(rs.getBoolean(12)),
							rs.getInt(13), rs.getString(14), rs.getInt(15)));
				}
			}
			return ticketEntryDOs;
		} finally {
			finalBlock();
		}
	}
	
	public List<TicketEntryDO> getTicketEntriesByPromoMobile(final Integer playerId, final Integer promotionId) throws SQLException {
		logger.debug("playerId = " + playerId + ", promotionId = " + promotionId);
		Validate.notNull(playerId);
		Validate.notNull(promotionId);
		final List<TicketEntryDO> ticketEntryDOs = new ArrayList<TicketEntryDO>(10);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TICKET_ENTRIES_BY_PROMO_MOBILE);
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, promotionId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(3));
			if(rs != null) {
				while (rs.next()) {
					ticketEntryDOs.add(new TicketEntryDO(rs.getBigDecimal(1).toBigInteger(), rs.getString(2), new DateTime(rs.getDate(3)), new DateTime(rs.getDate(4)), new DateTime(rs
							.getDate(5)), rs.getString(6), rs.getString(7), new DateTime(rs.getDate(8)), rs.getInt(9), rs.getInt(10), rs.getString(11), Boolean.valueOf(rs.getBoolean(12)),
							rs.getInt(13), rs.getString(14), rs.getInt(15)));
					
				}
			}
			return ticketEntryDOs;
		} finally {
			finalBlock();
		}
	}	
	
	public List<TicketFamilyMobileDO> getTicketFamilyMobile(final Integer playerId, final Integer promotionId) throws SQLException{
		logger.debug("playerId = " + playerId + ", promotionId = " + promotionId);
		Validate.notNull(playerId);
		Validate.notNull(promotionId);
		
		final List<TicketFamilyMobileDO> ticketFamilyMobileDOs = new ArrayList<TicketFamilyMobileDO>(10);
		System.out.println("\n\ncalling stored procedure here: " + playerId + promotionId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_TICKET_FAMILY_MOBILE);
			cStmnt.setInt(1,  playerId);
			cStmnt.setInt(2, promotionId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(3));
			if (rs != null) {
				while(rs.next())
					ticketFamilyMobileDOs.add(new TicketFamilyMobileDO(rs.getString(2), rs.getInt(1), rs.getInt(3)));
			}
			return ticketFamilyMobileDOs;
		} finally {
			finalBlock();
		}
		
	}
	
	
	public List<TicketEntryDO> getTicketEntryHistory(final Integer playerId) throws SQLException {
		Validate.notNull(playerId);
		final List<TicketEntryDO> ticketEntryDOs = new ArrayList<TicketEntryDO>(10);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TICKET_ENTRIES_ALL);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(2));
			while (rs.next()) {
				ticketEntryDOs.add(new TicketEntryDO(rs.getBigDecimal(1).toBigInteger(), rs.getString(2), new DateTime(rs.getDate(3)), new DateTime(rs.getDate(4)), new DateTime(rs
						.getDate(5)), rs.getString(6), rs.getString(7), new DateTime(rs.getDate(8)), rs.getInt(9), rs.getInt(10), Boolean.valueOf(rs.getBoolean(11)),
						rs.getInt(12), rs.getString(13)));
			}
			return ticketEntryDOs;
		} finally {
			finalBlock();
		}
	}

	public List<TicketEntryDO> getTicketEntryHistoryByYear(final Integer playerId, final Integer year) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(year);
		final List<TicketEntryDO> ticketEntryDOs = new ArrayList<TicketEntryDO>(10);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TICKET_ENTRIES_BY_YEAR);
			cStmnt.setInt(1, playerId);
			cStmnt.setInt(2, year);
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(3));
			while (rs.next()) {
				ticketEntryDOs.add(new TicketEntryDO(rs.getBigDecimal(1).toBigInteger(), rs.getString(2), new DateTime(rs.getDate(3)), new DateTime(rs.getDate(4)), new DateTime(rs
						.getDate(5)), rs.getString(6), rs.getString(7), new DateTime(rs.getDate(8)), rs.getInt(9), rs.getInt(10), Boolean.valueOf(rs.getBoolean(11)),
						rs.getInt(12), rs.getString(13)));
			}
			return ticketEntryDOs;
		} finally {
			finalBlock();
		}
	}

	public SortedSet<TicketEntryPromotionDO> getTicketEntryPromotions(final Integer playerId) throws SQLException {
		Validate.notNull(playerId);
		final SortedSet<TicketEntryPromotionDO> promotions = new TreeSet<TicketEntryPromotionDO>(java.util.Collections.reverseOrder());
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TICKET_ENTRY_PROMOTIONS);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(2));
			while (rs.next()) {
				promotions.add(new TicketEntryPromotionDO(rs.getInt(1), rs.getString(2), new Interval(new DateTime(rs.getDate(3)).withTimeAtStartOfDay(), new DateTime(rs
						.getDate(4)).withTime(23, 59, 59, 999)), rs.getInt(5), rs.getInt(6)));
			}
			return promotions;
		} finally {
			finalBlock();
		}
	}

	public List<TicketEntryDO> getTicketEntriesForMultiplePromotions(final Integer playerId, final Set<Integer> multiplePromotionIds) throws SQLException {
		final List<TicketEntryDO> ticketEntryDOs = new ArrayList<TicketEntryDO>(10);
		for (final Integer id : multiplePromotionIds) {
			ticketEntryDOs.addAll(getTicketEntriesByPromo(playerId, id));
		}
		return ticketEntryDOs;
	}
	
	public boolean isLotto(Boolean isScanned, String ticketNumber, String scannedTicketNumber) {
		
		String tn = "";
		if(isScanned) {
			tn = scannedTicketNumber;

		} else {
			tn = ticketNumber;
		}
		
		if(tn == null || tn.equals("")) {
			return false;
		}
		
		if(tn.length() < 17 || tn.length() > 20) {
			return false;
		}
				
		return true;
	}
	
	
	public boolean validateLotto(int sndGameId, Boolean isScanned, String ticketNumber, String scannedTicketNumber, TicketEntryForm form) throws SQLException {
		String tn = "";
		int number = 0;
		if(isScanned) {
			tn = scannedTicketNumber;
			form.setScannedTicketNumber(tn);
		} else {
			tn = ticketNumber;
			form.setTicketNumber(tn);
		}
		
		if(tn == null || tn.equals("")) {
			number++;
		}

		
		if(isScanned) {
			char ch1 = tn.charAt(0);
			if(String.valueOf(ch1).equals("0")) {
				StringBuilder sb = new StringBuilder(tn);
				sb.deleteCharAt(0);
				tn = sb.toString();
			}
			
			if(tn.length() == 17) {
				tn = tn + "40";
			}
		}
		List<String> cdcs = new TicketEntrySocialPromotionDAO().getCdcs(sndGameId);
		String cdc = tn.substring(0, 4);
		String cdcz = "1" + cdc; 
		String gn = tn.substring(13, 15);
		String sc = tn.substring(17, 19);
		
		boolean drawTicketLogic;
		
		drawTicketLogic = ((cdcs.contains(cdcz)) && (gn.equals("12")) && (sc.equals("40")));
		System.out.println("validateLotto::::::logic" + drawTicketLogic);	
		if (drawTicketLogic == false) {
			
			number++;
		}

		
		System.out.println("validateLotto::::::NUMBER" + number);		
		if (number > 0) {
			return false;
		} 
		else {
			return true;
		}
	}
	
	public boolean validateDrawTicket(int sndGameId, Boolean isScanned, String ticketNumber, String scannedTicketNumber, TicketEntryForm form) throws SQLException {
		
		final List<Integer> gameNumbers = new ArrayList<Integer>(10);
		
		String tn = "";
		int number = 0;
		if(isScanned) {
			tn = scannedTicketNumber;
			form.setScannedTicketNumber(tn);
		} else {
			tn = ticketNumber;
			form.setTicketNumber(tn);
		}
		
		if(tn == null || tn.equals("")) {
			number++;
		}
		
		if(isScanned) {
			char ch1 = tn.charAt(0);
			if(String.valueOf(ch1).equals("0")) {
				StringBuilder sb = new StringBuilder(tn);
				sb.deleteCharAt(0);
				tn = sb.toString();
			}
			
			if(tn.length() == 17) {
				tn = tn + "40";
			}
		}
		
		
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_SND_PROMO_GAMES);
			cStmnt.setInt(1, sndGameId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(2));

			while(rs.next()) {
				gameNumbers.add(Integer.valueOf(rs.getString(2)));
			}
			
		} finally {
			finalBlock();
		}
		
		boolean drawTicketLogic = false;
		List<String> cdcs = new TicketEntrySocialPromotionDAO().getCdcs(sndGameId);
		String cdc = tn.substring(0, 4);
		String cdcz = "1" + cdc; 
		Integer gn = Integer.valueOf(tn.substring(13, 15));
		String sc = tn.substring(17, 19);
			
		
		drawTicketLogic = ((cdcs.contains(cdcz)) && (gameNumbers.contains(gn)) && (sc.equals("40")));
		
		System.out.println(drawTicketLogic);
		
		if (drawTicketLogic == false) {
			number++;
		}
		System.out.println("validateLotto::::::NUMBER" + number);	
		if (number > 0) {
			return false;
		} 
		else {
			return true;
		}
	}
	
	
	public List<TicketFamilyMobileDO> getPromoGames(final Integer gameId) throws SQLException {
		Validate.notNull(gameId);
		List<TicketFamilyMobileDO> res = new ArrayList<TicketFamilyMobileDO>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_SND_PROMO_GAMES);
			cStmnt.setInt(1, gameId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(2));
			
			while (rs.next()) {
				res.add(new TicketFamilyMobileDO(rs.getString(2), rs.getInt(3), 0));
			}
			
		} finally {
			finalBlock();
		}
		
		return res;
	}
	
	
	public List<String> getCdcs(final Integer gameId) throws SQLException {
		Validate.notNull(gameId);
		List<String> list = new ArrayList<String>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.CDCS_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			return list;
		} finally {
			finalBlock();
		}
	}
	
	/*
	 * Get Ticket Entries Price 
	 */
	
	public int getTicketEntriesPrice(String ticketNumber, int playerId) throws Exception {

		int ticketEnteriesPrice = 5;
		Validate.notNull(ticketNumber);
		Validate.notNull(playerId);
		
		try {			
			if (ticketNumber.length() < 0) {
				pStmnt = getConnection().prepareStatement("SELECT BONUS_POINT FROM INET2.MEMBER_TICKET_ENTRY WHERE TICKET_NUMBER = ? AND MEMBER_ID_FK = ? ");
				pStmnt.setString(1, ticketNumber);
				pStmnt.setInt(2, playerId);
				rs = pStmnt.executeQuery();

				System.out.print("TICKET NUMBER FROM TICKETENTRYDAO : " + ticketNumber);
				System.out.print("PLAYER ID FROM TICKETENTRYDAO : " + playerId);
				if (rs != null) {
					while (rs.next()) {
						ticketEnteriesPrice = rs.getInt("BONUS_POINT");
						System.out.print("VALUE FROM TICKETENTRYDAO : " + ticketEnteriesPrice);
					}
				}
			}
		} 
	
		catch (Exception ex) {
			System.out.print("ERROR FROM TICKETENTRYDAO : " + ex);	
		} finally {
			finalBlock();
		}
		return ticketEnteriesPrice;

	}

}
