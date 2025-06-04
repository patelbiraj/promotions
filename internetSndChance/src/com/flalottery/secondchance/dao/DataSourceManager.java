package com.flalottery.secondchance.dao;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public enum DataSourceManager {

	INSTANCE;

	private static final Logger logger = LoggerFactory.getLogger(DataSourceManager.class.getName());
	private static InitialContext ctx;
	private static DataSource oracleDS;
	private static DataSource oracleTestDS;

	public static final DataSource getDataSource() {
		if (null == oracleDS) {
			logger.info("Initializing datasource.");
			try {
				ctx = new InitialContext();
				oracleDS = (DataSource) ctx.lookup("JDBC/Inet2DataResource");
			} catch (NamingException e) {
				logger.warn(e.getMessage());
			}
		}
		return oracleDS;
	}
	
	public static final DataSource getDataSource(String testJNDI) {
		if (null == oracleTestDS) {
			logger.info("Initializing datasource.");
			try {
				ctx = new InitialContext();
				oracleTestDS = (DataSource) ctx.lookup(testJNDI);
			} catch (NamingException e) {
				logger.warn(e.getMessage());
			}
		}
		return oracleTestDS;
	}
}
