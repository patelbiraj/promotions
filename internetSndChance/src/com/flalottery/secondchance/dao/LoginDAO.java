package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Name;
import com.flalottery.secondchance.form.LoginForm;
import com.flalottery.secondchance.utility.SecurityUtil;

public class LoginDAO extends BaseDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDAO.class);
	
	/* @SDS Called by the Web Site Second Chance @Updated - 08/08/2022 */
	public LoginDO login(final LoginForm form) throws SQLException {
		
		Validate.notNull(form);
		
		LoginDO loginDO = null;
		
		try {
			/* Get the Password Validated via the Security */
			String passTokenWeb = getEncryption(form.getEmail(), form.getPassword());

			if (passTokenWeb.equalsIgnoreCase(PasswordStatus.WRONG_PASSWORD.label)) {
				form.setStatus(DatabaseStatusFlag.EMAIL);
			}

			if (passTokenWeb.equalsIgnoreCase(PasswordStatus.ENCRYPTION_FAILED.label) || passTokenWeb.equalsIgnoreCase(PasswordStatus.PASSWORD_STILL_PLAIN_TEXT.label)) {
				form.setStatus(DatabaseStatusFlag.PASSWORD_CHANGE_REQUIRED);
			} 
			
			else if (passTokenWeb.length() > 1 && passTokenWeb != null) {
				cStmnt = getConnection().prepareCall(StoredProcs.LOGIN);
				cStmnt.setString(1, Validate.notBlank(form.getEmail(),"Email cannot be blank."));
				cStmnt.setString(2, Validate.notBlank(passTokenWeb,"Password cannot be blank."));
				cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
				cStmnt.execute();
				rs = (ResultSet) cStmnt.getObject(3);
				if (rs.next()) {
					final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlagForLogin(rs.getInt(1));
					form.setStatus(statusFlag);
					if (DatabaseStatusFlag.SUCCESS.equals(statusFlag)) {
						loginDO = new LoginDO(rs.getInt(2), 
												new Name(rs.getString(3).trim(), 
												rs.getString(4).trim()),
												rs.getString(5), rs.getString(6),
												rs.getString(7), rs.getString(8),
												rs.getString(9), rs.getString(10),
												rs.getString(11), rs.getString(12),
												rs.getString(13));
					}
				}
			}
			return loginDO;
		} finally {
			finalBlock();
		}
	}
	
	/* @SDS Called by the Mobile Application - SCA Application Version 2.0 @Updated - 08/08/2022  */
	public LoginDO login(final String email, final String pw) throws SQLException {
		
		LoginDO loginDO = new LoginDO();
		
		try {
			/* Get the Password Validated via the Security */
			String passTokenMob = getEncryption(email, pw);
			
			if (passTokenMob.equalsIgnoreCase(PasswordStatus.WRONG_PASSWORD.label)) {
				loginDO.setStatus(DatabaseStatusFlag.EMAIL);
			}

			if (passTokenMob.equalsIgnoreCase(PasswordStatus.ENCRYPTION_FAILED.label) || passTokenMob.equalsIgnoreCase(PasswordStatus.PASSWORD_STILL_PLAIN_TEXT.label)) {
				loginDO.setStatus(DatabaseStatusFlag.PASSWORD_CHANGE_REQUIRED);
			} 
			
			else if (passTokenMob.length() > 1 && passTokenMob != null) {
				cStmnt = getConnection().prepareCall(StoredProcs.LOGIN);
				cStmnt.setString(1,Validate.notBlank(email, "Email cannot be blank."));
				cStmnt.setString(2, Validate.notBlank(passTokenMob,"Password cannot be blank."));
				cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
				cStmnt.execute();
				rs = (ResultSet) cStmnt.getObject(3);

				if (rs.next()) {
					final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlagForLogin(rs.getInt(1));
					if (DatabaseStatusFlag.SUCCESS.equals(statusFlag)) {
						loginDO = new LoginDO(rs.getInt(2), 
								  new Name(rs.getString(3).trim(), 
										   rs.getString(4).trim()),
										   rs.getString(5), rs.getString(6),
										   rs.getString(7), rs.getString(8),
										   rs.getString(9), rs.getString(10),
										   rs.getString(11), rs.getString(12),
										   rs.getString(13));
					}
					logger.debug("User -" +email + "Log-in");
					loginDO.setStatus(statusFlag);
				}
			}

			return loginDO;
		} finally {
			finalBlock();
		}
	}
	
	
	/* @SDS Didn't found the usage instance - Not sure where its used or deprecated 
	 * @Updated - 08/08/2022 */
	
	public LoginDO login(final String email, final String pw, final String testJNDI) throws SQLException
	{
		try
		{	
			cStmnt = getConnection(testJNDI).prepareCall(StoredProcs.LOGIN);
			cStmnt.setString(1, Validate.notBlank(email, "Email cannot be blank."));
			cStmnt.setString(2, Validate.notBlank(pw, "Password cannot be blank."));
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(3);
			LoginDO loginDO = null;
			if(rs.next()){
				final DatabaseStatusFlag statusFlag = DatabaseStatusFlag.convertToStatusFlag(rs.getInt(1));
				if(DatabaseStatusFlag.SUCCESS.equals(statusFlag)){
					loginDO = new LoginDO(rs.getInt(2), new Name(rs.getString(3).trim(), rs.getString(4).trim()), rs.getString(5), rs.getString(6), rs.getString(7),
							rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
				}
			}
			return loginDO;
		} finally {
			finalBlock();
		}
	}
	
	
	/* @SDS - Check if the Member is already complete his/her password encryption or not 
	 * Using the newly created table MEMBER_PROFILE_SECURITY
	 * We can do the same process if we can add another column in the table MEMBER_PROFILE
	 * But due to uncertainty in the PL/SQL and testing efforts decided to create new table
	 * @Updated - 08/08/2022 * 
	*/
	
	public boolean isEncryptedUserByEmail(String emailId) throws SQLException {
		boolean encryptedUser = false;
		try {
			String SQL_SELECT_IF_ENCRYPTED = "SELECT MPS.MEMBER_ID,MPS.EMAIL_ADDR, MPS.PROFILE_SECURED,MPS.PROFILE_STATUS_FLAG,MPS.DATE_UPDATED,MP.ACTIVE_FLAG "
											+ " FROM MEMBER_PROFILE_SECURITY MPS "
											+ " INNER JOIN MEMBER_PROFILE MP ON (MP.MEMBER_ID = MPS.MEMBER_ID) "
											+ " AND MP.ACTIVE_FLAG = 'on' "
											+ " AND MP.EMAIL_ADDR = ? ";
			
			
			pStmnt = getConnection().prepareStatement(SQL_SELECT_IF_ENCRYPTED);
			pStmnt.setString(1, emailId.toUpperCase());
			rs = pStmnt.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					if(rs.getString("EMAIL_ADDR") != null || rs.getInt("MEMBER_ID") > 0 ) {					
						encryptedUser = true;
					}
				}
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			finalBlock();
		}

		return encryptedUser;
	}
	
	/* @SDS - Another version of the Mobile Application - Check if the Member is already complete his/her password encryption or not 
	 * @Updated - 08/08/2022 */
	public boolean isEncryptedUserByMemberId(int memberID) throws SQLException {
		boolean encryptedUser = false;
		try {
			String SQL_SELECT_IF_ENCRYPTED = "SELECT MPS.MEMBER_ID,MPS.EMAIL_ADDR, MPS.PROFILE_SECURED,MPS.PROFILE_STATUS_FLAG,MPS.DATE_UPDATED,MP.ACTIVE_FLAG "
											+ " FROM MEMBER_PROFILE_SECURITY MPS "
											+ " INNER JOIN MEMBER_PROFILE MP ON (MP.MEMBER_ID = MPS.MEMBER_ID) "
											+ " AND MP.ACTIVE_FLAG = 'on' "
											+ " AND MP.MEMBER_ID = ? ";
			pStmnt = getConnection().prepareStatement(SQL_SELECT_IF_ENCRYPTED);
			pStmnt.setInt(1, memberID);
			rs = pStmnt.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					if(memberID == rs.getInt("MEMBER_ID")){
						encryptedUser = true;
					}
				}
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			finalBlock();
		}

		return encryptedUser;
	}
	
	/* @SDS - If Encrypted then update the MEMBER_PROFILE_SECURITY with the status @Updated - 08/08/2022 */	
	public boolean securityEncryptionCompleted(int memberId, String emailID) throws SQLException {
		boolean profileSecurityCheckDone = false;

		String SQL_UPDATE_STMT = "UPDATE MEMBER_PROFILE_SECURITY SET PROFILE_SECURED ='Y', PROFILE_STATUS_FLAG='U' WHERE EMAIL_ADDR = ? AND MEMBER_ID = ?";

		String SQL_INSERT_STMT = "INSERT INTO MEMBER_PROFILE_SECURITY (EMAIL_ADDR,MEMBER_ID,PROFILE_SECURED,PROFILE_STATUS_FLAG) VALUES (? , ?, 'Y', 'Y') ";
		try {

			if (isEncryptedUserByMemberId(memberId)) {
				pStmnt = getConnection().prepareStatement(SQL_UPDATE_STMT);
				pStmnt.setString(1, emailID.toUpperCase());
				pStmnt.setInt(2, memberId);
				int update = pStmnt.executeUpdate();

				if (update > 0) {
					profileSecurityCheckDone = true;
				}
			} else {
				pStmnt = getConnection().prepareStatement(SQL_INSERT_STMT);
				pStmnt.setString(1, emailID.toUpperCase());
				pStmnt.setInt(2, memberId);
				int update = pStmnt.executeUpdate();

				if (update > 0) {
					profileSecurityCheckDone = true;
				}
			}

		} catch (Exception ex) {
			ex.printStackTrace();

		} finally {
			finalBlock();
		}

    	return profileSecurityCheckDone;
	}
	
	/* @SDS - If Encrypted then update the MEMBER_PROFILE_SECURITY with the status @Updated - 08/08/2022 */	
	public boolean securityEncryptionCompleted(int memberId, String emailID,String profileSecured,String statusComplete) throws SQLException {
		
		boolean profileSecurityCheckDone = false;

		String SQL_UPDATE_STMT = "UPDATE MEMBER_PROFILE_SECURITY SET PROFILE_SECURED = ?, PROFILE_STATUS_FLAG=? WHERE EMAIL_ADDR = ? AND MEMBER_ID = ?";

		String SQL_INSERT_STMT = "INSERT INTO MEMBER_PROFILE_SECURITY (EMAIL_ADDR,MEMBER_ID,PROFILE_SECURED,PROFILE_STATUS_FLAG) VALUES (? , ?, ?, ?) ";
		
		try {

			if (isEncryptedUserByMemberId(memberId)) {
				pStmnt = getConnection().prepareStatement(SQL_UPDATE_STMT);
				pStmnt.setString(1, profileSecured);
				pStmnt.setString(2, statusComplete);
				pStmnt.setString(3, emailID.toUpperCase());
				pStmnt.setInt(4, memberId);
				
				int update = pStmnt.executeUpdate();

				if (update > 0) {
					profileSecurityCheckDone = true;
				}
			} else {
				pStmnt = getConnection().prepareStatement(SQL_INSERT_STMT);
				pStmnt.setString(1, emailID.toUpperCase());
				pStmnt.setInt(2, memberId);
				pStmnt.setString(3, profileSecured);
				pStmnt.setString(4, statusComplete);
				int update = pStmnt.executeUpdate();

				if (update > 0) {
					profileSecurityCheckDone = true;
				}
			}

		} catch (Exception ex) {
			ex.printStackTrace();

		} finally {
			finalBlock();
		}

    	return profileSecurityCheckDone;
	}
	/* @SDS - Get Encrypted Value 
	 * @Updated - 08/08/2022 */
	private String getEncryption(String emailAddress,String myPassword) throws SQLException {
		String encryptedVal = null;
		try {
			if (emailAddress.length() > 1 && myPassword.length() > 1 ) {
				pStmnt = getConnection().prepareStatement("SELECT EMAIL_ADDR,MYPASSWORD FROM MEMBER_PROFILE WHERE EMAIL_ADDR = ? ");
				pStmnt.setString(1, emailAddress.trim().toUpperCase());
				rs = pStmnt.executeQuery();
				
				if (rs != null) {
					while (rs.next()) {						
						if (emailAddress.equalsIgnoreCase(rs.getString("EMAIL_ADDR"))) {
							encryptedVal = rs.getString("MYPASSWORD");							
						}
					}					
				}
				try {
					boolean encyptionMatched = SecurityUtil.checkPasswordDecrypted(myPassword, encryptedVal);
					if (encyptionMatched) {
						return encryptedVal;
					} else {
						return PasswordStatus.WRONG_PASSWORD.label;
					}
				}catch (Exception exception){
					return PasswordStatus.ENCRYPTION_FAILED.label;
				}
			}else {
				return PasswordStatus.ENCRYPTION_FAILED.label;
			}		

		} catch (Exception e) {
			e.printStackTrace();
			return PasswordStatus.ENCRYPTION_FAILED.label;			
		}

		finally {
			finalBlock();
		}
	}
}
