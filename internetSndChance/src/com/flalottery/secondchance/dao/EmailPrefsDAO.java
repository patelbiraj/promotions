package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.Validate;

import com.flalottery.secondchance.form.EmailPrefsForm;

public class EmailPrefsDAO extends BaseDAO {

	public Boolean hasEmailOptInsId(final Integer playerId) throws SQLException {
		Validate.notNull(playerId);
		int optInsId = 0;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.EMAIL_PREFERENCES_READ);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				optInsId = rs.getInt(1);
			}
			return optInsId > 0;
		} finally {
			finalBlock();
		}
	}

	public Boolean read(final Integer playerId, final EmailPrefsForm form) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.EMAIL_PREFERENCES_READ);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				form.setLotto(BooleanUtils.toBooleanObject(rs.getString(3)));
				form.setLuckyMoney(BooleanUtils.toBooleanObject(rs.getString(4)));
				form.setFantasy5(BooleanUtils.toBooleanObject(rs.getString(5)));
				form.setEvening(BooleanUtils.toBooleanObject(rs.getString(6)));
				form.setMidday(BooleanUtils.toBooleanObject(rs.getString(7)));
				form.setPlay4Evening(BooleanUtils.toBooleanObject(rs.getString(8)));
				form.setCash3Evening(BooleanUtils.toBooleanObject(rs.getString(9)));
				form.setPowerball(BooleanUtils.toBooleanObject(rs.getString(10)));
				form.setPlay4Midday(BooleanUtils.toBooleanObject(rs.getString(11)));
				form.setCash3Midday(BooleanUtils.toBooleanObject(rs.getString(12)));
				form.setWhatIsNew(BooleanUtils.toBooleanObject(rs.getString(13)));
				form.setMegaMillions(BooleanUtils.toBooleanObject(rs.getString(14)));
				form.setCash4life(BooleanUtils.toBooleanObject(rs.getString(15)));	
				form.setJackpotTriplePlay(BooleanUtils.toBooleanObject(rs.getString(16)));
				form.setCashPopLateNight(BooleanUtils.toBooleanObject(rs.getString(17)));
				form.setCashPopMidday(BooleanUtils.toBooleanObject(rs.getString(18)));					
				form.setCashPopEvening(BooleanUtils.toBooleanObject(rs.getString(19)));
				form.setFantasy5Midday(BooleanUtils.toBooleanObject(rs.getString(20)));

			
				//form.setmmc(BooleanUtils.toBooleanObject(rs.getString(15)));
				form.setRecordExists(true);
				return true;
			}
			return false;
		} finally {
			finalBlock();
		}
	}

	public Boolean create(final Integer playerId, final EmailPrefsForm form) throws SQLException {
		Validate.notNull(playerId);
		logger.debug("Player id " + playerId);
		Validate.notNull(form);
		logger.debug("Form data " + form.toString());
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.EMAIL_PREFERENCES_CREATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, BooleanUtils.toStringOnOff(form.getLotto()));
			cStmnt.setString(3, BooleanUtils.toStringOnOff(form.getLuckyMoney()));
			cStmnt.setString(4, BooleanUtils.toStringOnOff(form.getFantasy5()));
			cStmnt.setString(5, BooleanUtils.toStringOnOff(form.getEvening()));
			cStmnt.setString(6, BooleanUtils.toStringOnOff(form.getMidday()));
			cStmnt.setString(7, BooleanUtils.toStringOnOff(form.getPlay4Evening()));
			cStmnt.setString(8, BooleanUtils.toStringOnOff(form.getCash3Evening()));
			cStmnt.setString(9, BooleanUtils.toStringOnOff(form.getPowerball()));
			cStmnt.setString(10, BooleanUtils.toStringOnOff(form.getPlay4Midday()));
			cStmnt.setString(11, BooleanUtils.toStringOnOff(form.getCash3Midday()));
			cStmnt.setString(12, BooleanUtils.toStringOnOff(form.getMegaMillions()));
			cStmnt.setString(13, BooleanUtils.toStringOnOff(form.getWhatIsNew()));
			cStmnt.setString(14, BooleanUtils.toStringOnOff(form.getCash4life()));
			cStmnt.setString(15, BooleanUtils.toStringOnOff(form.getJackpotTriplePlay()));	
			cStmnt.setString(16, BooleanUtils.toStringOnOff(form.getCashPopLateNight()));
			cStmnt.setString(17, BooleanUtils.toStringOnOff(form.getCashPopMidday()));
			cStmnt.setString(18, BooleanUtils.toStringOnOff(form.getCashPopEvening()));				
			//cStmnt.setString(10, BooleanUtils.toStringOnOff(form.getmmc()));
			cStmnt.setString(19, BooleanUtils.toStringOnOff(form.getFantasy5Midday()));
			cStmnt.registerOutParameter(20, OracleTypes.NUMBER);
			cStmnt.execute();
			final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getInt(20));
			return statusFlag.getStatusFlagAsBoolean();
		} finally {
			finalBlock();
		}
	}

	public Boolean update(final Integer playerId, final EmailPrefsForm form) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.EMAIL_PREFERENCES_UPDATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, BooleanUtils.toStringOnOff(form.getLotto()));
			cStmnt.setString(3, BooleanUtils.toStringOnOff(form.getLuckyMoney()));
			cStmnt.setString(4, BooleanUtils.toStringOnOff(form.getFantasy5()));
			cStmnt.setString(5, BooleanUtils.toStringOnOff(form.getEvening()));
			cStmnt.setString(6, BooleanUtils.toStringOnOff(form.getMidday()));
			cStmnt.setString(7, BooleanUtils.toStringOnOff(form.getPlay4Evening()));
			cStmnt.setString(8, BooleanUtils.toStringOnOff(form.getCash3Evening()));
			cStmnt.setString(9, BooleanUtils.toStringOnOff(form.getPowerball()));
			cStmnt.setString(10, BooleanUtils.toStringOnOff(form.getPlay4Midday()));
			cStmnt.setString(11, BooleanUtils.toStringOnOff(form.getCash3Midday()));
			cStmnt.setString(12, BooleanUtils.toStringOnOff(form.getMegaMillions()));
			cStmnt.setString(13, BooleanUtils.toStringOnOff(form.getWhatIsNew()));
			cStmnt.setString(14, BooleanUtils.toStringOnOff(form.getCash4life()));
			cStmnt.setString(15, BooleanUtils.toStringOnOff(form.getJackpotTriplePlay()));			
			//cStmnt.setString(11, BooleanUtils.toStringOnOff(form.getmmc()));
			cStmnt.setString(16, BooleanUtils.toStringOnOff(form.getCashPopLateNight()));
			cStmnt.setString(17, BooleanUtils.toStringOnOff(form.getCashPopMidday()));
			cStmnt.setString(18, BooleanUtils.toStringOnOff(form.getCashPopEvening()));				
			cStmnt.setString(19, BooleanUtils.toStringOnOff(form.getFantasy5Midday()));
			cStmnt.registerOutParameter(20, OracleTypes.NUMBER);
			cStmnt.execute();
			final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getInt(20));
			return statusFlag.getStatusFlagAsBoolean();
		} finally {
			finalBlock();
		}
	}

	public Boolean delete(final Integer playerId, final EmailPrefsForm form) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.EMAIL_PREFERENCES_DELETE);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.NUMBER);
			cStmnt.execute();
			final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getInt(2));
			return statusFlag.getStatusFlagAsBoolean();
		} finally {
			finalBlock();
		}
	}
}