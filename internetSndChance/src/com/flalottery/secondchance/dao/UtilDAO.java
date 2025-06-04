package com.flalottery.secondchance.dao;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UtilDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(UtilDAO.class);

	public String getURL() {
		String url = null;
		try {
			Connection connection = getConnection();
			DatabaseMetaData dmd = connection.getMetaData();
			url = dmd.getURL();
		} catch (SQLException e) {
			logger.error(MSG_EXCEPTION + e);
		} finally {
			try {
				finalBlock();
			} catch (SQLException e) {
				logger.error(MSG_EXCEPTION + e);
			}
		}
		return url;
	}
}
