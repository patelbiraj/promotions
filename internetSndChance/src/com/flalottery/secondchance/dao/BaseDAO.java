/* Updated 20121001 to suit new web site redesign.
 */
package com.flalottery.secondchance.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class BaseDAO {

	protected static final Logger logger = LoggerFactory.getLogger(BaseDAO.class.getName());
	public static final String MSG_EXCEPTION = "Caught an Exception:  ";

	protected Connection connection;
	protected CallableStatement cStmnt;
	protected PreparedStatement pStmnt;
	protected ResultSet rs;

	private void closeConnection(final Connection connection) throws SQLException {
		if (connection != null) {
			connection.close();
		}
	}

	private void closeResultSet() throws SQLException {
		if (null != rs) {
			rs.close();
		}
	}

	private void closeStatement(final Statement stmt) throws SQLException {
		if (stmt != null) {
			stmt.close();
		}
	}

	private void closePStatement(final PreparedStatement stmt) throws SQLException {
		if (stmt != null) {
			stmt.close();
		}
	}
	
	public void finalBlock() throws SQLException {
		closeResultSet();
		closeStatement(cStmnt);
		closePStatement(pStmnt);
		closeConnection(connection);
	}

	public Connection getConnection() throws SQLException {
		connection = DataSourceManager.getDataSource().getConnection();
		return connection;
	}

	public Connection getConnection(String testJNDI) throws SQLException {
		connection = DataSourceManager.getDataSource(testJNDI).getConnection();
		return connection;
	}
	
	protected void setRs(final ResultSet object) throws SQLException {
		closeResultSet();
		rs = object;
	}

}
