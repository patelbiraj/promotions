package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dataobject.LoginDO; 
import com.flalottery.secondchance.domain.Name;
import com.flalottery.secondchance.form.AccountForm;
import com.flalottery.secondchance.form.AccountFormMobile;
import com.flalottery.secondchance.utility.SecurityUtil;
import com.flalottery.secondchance.utility.Util; 

public class AccountDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(AccountDAO.class);
	
	/* New Registration Page Called by the Second Chance Application  */
	public DatabaseStatusFlag newRegistration(final AccountForm form) throws SQLException {
		logger.debug(form.toString());
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_CREATE);
			cStmnt.setString(1, form.getName().getFirst());
			cStmnt.setString(2, form.getName().getLast());
			cStmnt.setString(3, form.getEmail());
			cStmnt.setString(4, form.getPassword());
			cStmnt.setString(5, form.getStreet1());
			cStmnt.setString(6, form.getStreet2());
			cStmnt.setString(7, form.getCity());
			cStmnt.setString(8, form.getState());
			cStmnt.setString(9, form.getPostalCode());
			cStmnt.setString(10, form.getDayPhone());
			cStmnt.setString(11, form.getEveningPhone());
			cStmnt.setString(12, form.getCountry());
			cStmnt.setString(13, form.getQuickCreate());
			cStmnt.setString(14, form.getQuickCreateConfirm());
			cStmnt.setString(15, form.getRegComplete());
			cStmnt.setString(16, form.getAccountWhatIsNew() ? "on" : "off");
			cStmnt.registerOutParameter(17, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag insertMemberFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(17));
			return insertMemberFlag;
		} finally {
			finalBlock();
		}
	}

	public DatabaseStatusFlag newRegistration(final AccountForm form, String testJNDI) throws SQLException {
		logger.debug(form.toString());
		Validate.notNull(form);
		try {
			cStmnt = getConnection(testJNDI).prepareCall(StoredProcs.ACCOUNT_CREATE);
			cStmnt.setString(1, form.getName().getFirst());
			cStmnt.setString(2, form.getName().getLast());
			cStmnt.setString(3, form.getEmail());
			cStmnt.setString(4, form.getPassword());
			cStmnt.setString(5, form.getStreet1());
			cStmnt.setString(6, form.getStreet2());
			cStmnt.setString(7, form.getCity());
			cStmnt.setString(8, form.getState());
			cStmnt.setString(9, form.getPostalCode());
			cStmnt.setString(10, form.getDayPhone());
			cStmnt.setString(11, form.getEveningPhone());
			cStmnt.setString(12, form.getCountry());
			cStmnt.setString(13, form.getQuickCreate());
			cStmnt.setString(14, form.getQuickCreateConfirm());
			cStmnt.setString(15, form.getRegComplete());
			cStmnt.setString(16, form.getAccountWhatIsNew() ? "on" : "off");
			cStmnt.registerOutParameter(17, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag insertMemberFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(17));
			return insertMemberFlag;
		} finally {
			finalBlock();
		}
	}

	public AccountForm getAccount(final Integer playerId) throws SQLException {
		Validate.notNull(playerId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_READ);
			cStmnt.setInt(1, playerId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			final AccountForm account = new AccountForm();
			if (rs.next()) {
				account.setName(new Name(rs.getString(2), rs.getString(3)));
				account.setEmail(rs.getString(4));
				account.setEmailConfirm(rs.getString(4));
				account.setPassword(rs.getString(5));

				String street2 = "";
				if (rs.getString(7) != null) {
					street2 = rs.getString(7);
				}
				account.setStreet1(rs.getString(6) == null ? "" : rs.getString(6).trim());
				account.setStreet2(street2 == null ? "" : street2.trim());
				account.setCity(rs.getString(8) == null ? "" : rs.getString(8).trim());
				account.setState(rs.getString(9) == null ? "" : rs.getString(9).trim());
				account.setPostalCode(rs.getString(10) == null ? "" : rs.getString(10).trim());
				account.setDayPhone(rs.getString(11));
				account.setEveningPhone(rs.getString(12));
				account.setCountry(rs.getString(13).trim());
				account.setQuickCreate(rs.getString(14) == null ? "N" : rs.getString(14).trim());
				account.setQuickCreateConfirm(rs.getString(15) == null ? "N" : rs.getString(15).trim());
				account.setRegComplete(rs.getString(16) == null ? "Y" : rs.getString(16).trim());
				account.setAccountWhatIsNew(BooleanUtils.toBooleanObject(rs.getString(17)));
			}
			return account;
		} finally {
			finalBlock();
		}
	}

	public DatabaseStatusFlag updateAccount(final Integer playerId, final AccountForm form) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(form);
		// Validate.notBlank(form.getName().getFirst());
		// Validate.notBlank(form.getPassword());
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_UPDATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, form.getName().getFirst());
			cStmnt.setString(3, form.getName().getLast());
			cStmnt.setString(4, form.getEmail());
			cStmnt.setString(5, SecurityUtil.getEncryptedPassword(form.getPassword()));
			cStmnt.setString(6, form.getStreet1());
			cStmnt.setString(7, form.getStreet2());
			cStmnt.setString(8, form.getCity());
			cStmnt.setString(9, form.getState());
			cStmnt.setString(10, form.getPostalCode());
			cStmnt.setString(11, form.getDayPhone());
			cStmnt.setString(12, form.getEveningPhone());
			cStmnt.setString(13, form.getCountry());
			cStmnt.setString(14, form.getQuickCreate());
			cStmnt.setString(15, form.getQuickCreateConfirm());
			cStmnt.setString(16, form.getRegComplete());
			cStmnt.setString(17, form.getAccountWhatIsNew() ? "on" : "off");
			cStmnt.registerOutParameter(18, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag updatedUser = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(18));
			return updatedUser;
			} 
		finally{
			finalBlock();
		}	
	}
	
	public DatabaseStatusFlag updateAccountMobile(final Integer playerId, final AccountFormMobile formMobile) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(formMobile);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_UPDATE_PASSWORD);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, formMobile.getName().getFirst());
			cStmnt.setString(3, formMobile.getName().getLast());
			cStmnt.setString(4, formMobile.getEmail());
			cStmnt.setString(5, formMobile.getStreet1());
			cStmnt.setString(6, formMobile.getStreet2());
			cStmnt.setString(7, formMobile.getCity());
			cStmnt.setString(8, formMobile.getState());
			cStmnt.setString(9, formMobile.getPostalCode());
			cStmnt.setString(10, formMobile.getDayPhone());
			cStmnt.setString(11, formMobile.getEveningPhone());
			cStmnt.setString(12, formMobile.getCountry());
			cStmnt.setString(13, formMobile.getQuickCreate());
			cStmnt.setString(14, formMobile.getQuickCreateConfirm());
			cStmnt.setString(15, formMobile.getRegComplete());
			cStmnt.setString(16, formMobile.getAccountWhatIsNew() ? "on" : "off");
			cStmnt.registerOutParameter(17, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag updatedUser = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(17));
			return updatedUser;
		}
		finally {
			finalBlock();
		}
	}
	
	/* @SDS - DO NOT Found the reference of the usage of this from Web Site . Need to see if this is used form the Mobile Application */
	
	public DatabaseStatusFlag removeAccount(final Integer playerId, String otp, String password, String removalReq) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(otp);
		Validate.notNull(password);
		Validate.notNull(removalReq);
				
		boolean valid = false;
		valid = new AccountDAO().validateOTP(playerId, otp);
		
		if (valid) {
			if(checkRemoved(playerId)) {
				return DatabaseStatusFlag.INACTIVE_ACCOUNT;
			} 
			AccountForm accountForm = new AccountDAO().getAccount(playerId);
			LoginDO loginDO = new LoginDAO().login(accountForm.getEmail(), password);
			if (loginDO.getStatus() == DatabaseStatusFlag.SUCCESS) {
				try {
					cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_REMOVE);
					cStmnt.setInt(1, playerId);
					cStmnt.setString(2, removalReq);
					cStmnt.registerOutParameter(3, OracleTypes.VARCHAR);
					cStmnt.execute();
					DatabaseStatusFlag databaseStatusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(3));
					return databaseStatusFlag;
				} finally {
					finalBlock();
				}
			} else {
				return loginDO.getStatus();
			}
			
		} else {
			
			return DatabaseStatusFlag.INVALID_OTP;
		}		
		
	}
	
	/*@SDS - updated @08/15/2022 for removing the account */
	public DatabaseStatusFlag removeAccountFromWebSite(int playerId,String removalReq) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(removalReq);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_REMOVE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, removalReq);
			cStmnt.registerOutParameter(3, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag databaseStatusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(3));
			return databaseStatusFlag;
		} finally {
			finalBlock();
		}
	} 
				
		

	public boolean checkRemoved(Integer playerId) throws SQLException {
		Validate.notNull(playerId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_CHECK_REMOVE);
			cStmnt.setInt(1, playerId);
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			String remove = cStmnt.getString(2);
			if (remove.equals("Y")) {
				return true;
			} else {
				return false;
			}
		} finally {
			finalBlock();
		}
	}

	public DatabaseStatusFlag updatePassword(final Integer playerId, final String password) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(password);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_PASSWORD_UPDATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, password);
			cStmnt.registerOutParameter(3, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag updatedPassword = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(3));
			return updatedPassword;
		} finally {
			finalBlock();
		}
	}
	
	public DatabaseStatusFlag updatePasswordMobile(final Integer playerId, final String password, String otp) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(password);
		Validate.notNull(otp);
		
		boolean valid = false;
		valid = new AccountDAO().validateOTP(playerId, otp);		
		
		if (valid) {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_PASSWORD_UPDATE);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, password);
			cStmnt.registerOutParameter(3, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag updatedPassword = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(3));
			return updatedPassword;
		} finally {
			finalBlock();
		}
		
		} else {
			
			return DatabaseStatusFlag.INVALID_OTP;
		}	
		
	}	
	
	public DatabaseStatusFlag confirmAccount(final Integer playerId, final AccountForm form) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(form);
		// Validate.notBlank(form.getName().getFirst());
		// Validate.notBlank(form.getPassword());
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_CONFIRM);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, form.getQuickCreateConfirm());
			cStmnt.setString(3, form.getAccountWhatIsNew() ? "on" : "off");
			cStmnt.registerOutParameter(4, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag updatedUser = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(4));
			return updatedUser;
		} finally {
			finalBlock();
		}
	}

	/*
	 * public boolean isRegCompleted(final AccountForm form) throws SQLException {
	 * Validate.notNull(form); try { cStmnt =
	 * getConnection().prepareCall(StoredProcs.ACCOUNT_REG_CHECK);
	 * cStmnt.setString(1, form.getEmail()); cStmnt.registerOutParameter(2,
	 * OracleTypes.VARCHAR); cStmnt.execute(); String complete =
	 * cStmnt.getString(2); if (complete != null && complete.equals("Y")) { return
	 * true; } else { return false; } } finally { finalBlock(); } }
	 */

	public String isRegCompleted(final AccountForm form) throws SQLException {
		Validate.notNull(form);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_REG_CHECK);
			cStmnt.setString(1, form.getEmail());
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			return  cStmnt.getString(2);
		} finally {
			finalBlock();
		}
	}
	
	
	
	public boolean isRegCompleted(String email) throws SQLException {
		Validate.notNull(email);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_REG_CHECK);
			cStmnt.setString(1, email);
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			String complete = cStmnt.getString(2);
			if (complete != null && complete.equals("Y")) {
				return true;
			} else {
				return false;
			}
		} finally {
			finalBlock();
		}
	}

	public int checkConfirmed(String email) throws SQLException {
		int memberId = 0;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_CONFIRM_CHECK);
			cStmnt.setString(1, email);
			cStmnt.registerOutParameter(2, OracleTypes.INTEGER);
			cStmnt.execute();
			memberId = cStmnt.getInt(2);
		} finally {
			finalBlock();
		}
		return memberId;
	}

	public int accountAlreadyExists(String email) throws SQLException {
		int memberId = 0;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_ALREADY_EXISTS);
			cStmnt.setString(1, email);
			cStmnt.registerOutParameter(2, OracleTypes.INTEGER);
			cStmnt.execute();
			memberId = cStmnt.getInt(2);
		} finally {
			finalBlock();
		}
		return memberId;
	}

	public int accountAlreadyExists(String email, String testJNDI) throws SQLException {
		int memberId = 0;
		try {
			cStmnt = getConnection(testJNDI).prepareCall(StoredProcs.ACCOUNT_ALREADY_EXISTS);
			cStmnt.setString(1, email);
			cStmnt.registerOutParameter(2, OracleTypes.INTEGER);
			cStmnt.execute();
			memberId = cStmnt.getInt(2);
		} finally {
			finalBlock();
		}
		return memberId;
	}

	public String encryptEmail(String email) throws SQLException {
		String eText = null;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ENCRYPT);
			cStmnt.setString(1, email);
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			eText = cStmnt.getString(2);
		} finally {
			finalBlock();
		}
		return eText;
	}

	public String decryptEmail(String eTxt) throws SQLException {
		String email = null;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.DECRYPT);
			cStmnt.setString(1, eTxt);
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			email = cStmnt.getString(2);
		} finally {
			finalBlock();
		}
		return email;
	}

	public String setOTP(final Integer playerId) throws SQLException {
		Validate.notNull(playerId);
		String otp = String.valueOf(Util.getOTP());

		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_OTP_SET);
			cStmnt.setInt(1, playerId);
			cStmnt.setString(2, otp);
			cStmnt.setTimestamp(3, new java.sql.Timestamp(new Date().getTime())); // set
																					// expiration
																					// date
			cStmnt.registerOutParameter(4, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag updatedStatus = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(4));
			if (DatabaseStatusFlag.SUCCESS.equals(updatedStatus)) {
				return otp;
			} else {
				return "";
			}
		} finally {
			finalBlock();
		}
	}

	public boolean validateOTP(final Integer playerId, String otp) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(otp);
		String dbOTP = "";
		Date dbOTPExpires = null;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_OTP_READ);
			cStmnt.setInt(1, playerId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				dbOTP = rs.getString(1);
				dbOTPExpires = rs.getTimestamp(2);
			}

			if (dbOTP != null && dbOTP.trim().equals(otp.trim())) {
				if (dbOTPExpires != null) {
					long diffInMillies = Math.abs(new Date().getTime() - dbOTPExpires.getTime());
					long diff = TimeUnit.MINUTES.convert(diffInMillies, TimeUnit.MILLISECONDS);
					if (diff <= 1440L) { //24 hours 30L * 48 or 60L *24
						return true;
					}
				}
			}
			return false;
		} finally {
			finalBlock();
		}
	}

	// 1: extered value not matching
	// 2: expired
	// 0: valid
	public int checkOTP(final Integer playerId, String otp) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(otp);
		String dbOTP = "";
		Date dbOTPExpires = null;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_OTP_READ);
			cStmnt.setInt(1, playerId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				dbOTP = rs.getString(1);
				dbOTPExpires = rs.getTimestamp(2);
			}
			if (dbOTP != null && !dbOTP.trim().equals(otp.trim())) {
				return 1;
			} else {
					long diffInMillies = Math.abs(new Date().getTime() - dbOTPExpires.getTime());
					long diff = TimeUnit.MINUTES.convert(diffInMillies, TimeUnit.MILLISECONDS);
					if (diff <= 1440L) { //24 hours 30L * 48 or 60L *24
						return 0;
					} else {
						return 2;
					}

			}
		} finally {
			finalBlock();
		}
	}
	
	
	public boolean checkName(final Integer playerId, String fname, String lname) throws SQLException {
		Validate.notNull(playerId);
		Validate.notNull(fname);
		Validate.notNull(lname);
		String dbFname = "";
		String dbLname = "";
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_NAME_READ);
			cStmnt.setInt(1, playerId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				dbFname = rs.getString(1);
				dbLname = rs.getString(2);
			}
			if (fname == dbFname && lname == dbLname) {
				return true;
			} else {
				return false;
			}
		} finally {
			finalBlock();
		}
	}

	public Boolean accountSystemCheck(Integer memberId) throws SQLException {
		boolean isSystemAcct = false;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.ACCOUNT_SYSTEM_CHECK);
			cStmnt.setInt(1, memberId);
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			String sysAccount = cStmnt.getString(2);
			if(sysAccount != null && sysAccount.equals("Y")) {
				isSystemAcct = true;	
			}
		} finally {
			finalBlock();
		}
		return isSystemAcct;
	}
	
	public String getEmailIDByMemberID(Integer memberId) throws SQLException {
		String emailAddress = null;
		try {
			pStmnt = getConnection().prepareStatement("SELECT EMAIL_ADDR FROM MEMBER_PROFILE WHERE MEMBER_ID =? ");
			pStmnt.setInt(1, memberId);
			rs = pStmnt.executeQuery();
			if (rs != null) {
				while (rs.next()) {						
					emailAddress = rs.getString("EMAIL_ADDR");							
				}					
			}
		} finally {
			finalBlock();
		}
		return emailAddress;
		
	}
	
}
