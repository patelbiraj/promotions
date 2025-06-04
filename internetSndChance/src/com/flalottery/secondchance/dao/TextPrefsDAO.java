package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.TextMessagingProvider;
import com.flalottery.secondchance.form.TextPrefsForm;

public class TextPrefsDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(TextPrefsDAO.class);

	public Boolean hasMemberSmsId(final Integer playerId) throws SQLException {
		logger.debug("hasMemberSmsId: Player id " + playerId);
		Validate.notNull(playerId);
		int optInsId = 0;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TEXT_MESSAGING_PREFERENCES_READ);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				optInsId = rs.getInt(1);
			}
			logger.debug("hasMemberSmsId: optInsId " + optInsId);
			return optInsId > 0;
		} finally {
			finalBlock();
		}
	}

	public Boolean read(final Integer playerId, final TextPrefsForm form) throws SQLException {
		logger.debug("read:  Player id " + playerId);
		Validate.notNull(playerId);
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TEXT_MESSAGING_PREFERENCES_READ);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				form.setPhone(rs.getString(2));
				form.setPhoneConfirm(rs.getString(2));
				if (TextMessagingProvider.getTextMessagingProviders().containsValue(rs.getString(3))) {
					form.setDomain(rs.getString(3));
				}
				else {
					form.setOther(rs.getString(3));
				}
				form.setMidday(BooleanUtils.toBooleanObject(rs.getString(4)));
				form.setEvening(BooleanUtils.toBooleanObject(rs.getString(5)));
				form.setNight(BooleanUtils.toBooleanObject(rs.getString(6)));
				form.setWhatIsNew(BooleanUtils.toBooleanObject(rs.getString(7)));
				form.setRecordExists(true);
				return true;
			} else {
				return false;
			}
		} finally {
			finalBlock();
		}
	}

	public Boolean create(final Integer playerId, final TextPrefsForm form) throws SQLException {
		logger.debug("create:  Player id " + playerId);
		Validate.notNull(playerId);
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TEXT_MESSAGING_PREFERENCES_CREATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, form.getPhone());
			cStmnt.setString(3, form.getRealDomain());
			cStmnt.setString(4, BooleanUtils.toStringOnOff(form.getMidday()));
			cStmnt.setString(5, BooleanUtils.toStringOnOff(form.getEvening()));
			cStmnt.setString(6, BooleanUtils.toStringOnOff(form.getNight()));
			cStmnt.setString(7, BooleanUtils.toStringOnOff(form.getWhatIsNew()));
			cStmnt.registerOutParameter(8, OracleTypes.NUMBER);
			cStmnt.execute();
			final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getInt(8));
			return statusFlag.getStatusFlagAsBoolean();
		} finally {
			finalBlock();
		}
	}

	/** Returns true only if one record was updated. */
	public Boolean update(final Integer playerId, final TextPrefsForm form) throws SQLException {
		logger.debug("update:  Player id " + playerId);
		Validate.notNull(playerId);
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TEXT_MESSAGING_PREFERENCES_UPDATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, form.getPhone());
			cStmnt.setString(3, form.getRealDomain());
			cStmnt.setString(4, BooleanUtils.toStringOnOff(form.getMidday()));
			cStmnt.setString(5, BooleanUtils.toStringOnOff(form.getEvening()));
			cStmnt.setString(6, BooleanUtils.toStringOnOff(form.getNight()));
			cStmnt.setString(7, BooleanUtils.toStringOnOff(form.getWhatIsNew()));
			cStmnt.registerOutParameter(8, OracleTypes.NUMBER);
			cStmnt.execute();
			final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getInt(8));
			return statusFlag.getStatusFlagAsBoolean();
		} finally {
			finalBlock();
		}
	}

	/**
	 * Returns true only if one record was deleted. No information from the form
	 * is necessary.
	 */
	public Boolean delete(final Integer playerId) throws SQLException {
		logger.debug("delete:  Player id " + playerId);
		Validate.notNull(playerId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.TEXT_MESSAGING_PREFERENCES_DELETE);
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
