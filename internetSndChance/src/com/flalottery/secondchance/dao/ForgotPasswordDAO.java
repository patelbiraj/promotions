package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.Validate;

import com.flalottery.secondchance.dataobject.ForgotPasswordDO;
import com.flalottery.secondchance.form.ForgotPasswordForm;

public class ForgotPasswordDAO extends BaseDAO {

	/**
	 * @return a collection of MailerDOs which usually is only one DO.
	 * @param the
	 *            form to obtain the email address from. Note that the
	 *            validation is to insure the form has at least one email to
	 *            search for. Form validation in the Action class insures that
	 *            during integration testing we never see an empty email field
	 *            in the form. The validation in the DAO is considered necessary
	 *            and a safeguard during development and should remain in the
	 *            production code.
	 * @throws SQLException
	 *             when a database error occurs and NamingException when a JNDI
	 *             lookup fails.
	 */
	public ForgotPasswordDO forgotPassword(final ForgotPasswordForm form) throws SQLException {
		Validate.notNull(form);
		Validate.notBlank(form.getEmail());
		logger.debug("Email " + form.getEmail());
		ForgotPasswordDO forgotPasswordDO = null;
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.FORGOT_PASSWORD);
			cStmnt.setString(1, form.getEmail());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			if (rs.next()) {
				forgotPasswordDO = new ForgotPasswordDO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			}
			return forgotPasswordDO;
		} finally {
			finalBlock();
		}
	}
}
