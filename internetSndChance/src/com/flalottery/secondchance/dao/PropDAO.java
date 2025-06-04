package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.PTAProp;

import oracle.jdbc.OracleTypes;

public class PropDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(PropDAO.class);

	public PTAProp getPTAKey() throws SQLException {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.PROP_GET);
			cStmnt.setString(1, "PTA_KEY");
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			PTAProp prop = new PTAProp();
			if (rs.next()) {
				prop.setKeyAes(rs.getString(1));
				prop.setKeyHmac(rs.getString(2));
			}
			return prop;
		} finally {
			finalBlock();
		}
	}

	public PTAProp getPTAKey(String type) throws SQLException {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.PROP_GET);
			cStmnt.setString(1, type);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			PTAProp prop = new PTAProp();
			if (rs.next()) {
				prop.setKeyAes(rs.getString(1));
				prop.setKeyHmac(rs.getString(2));
			}
			return prop;
		} finally {
			finalBlock();
		}
	}
	
}
