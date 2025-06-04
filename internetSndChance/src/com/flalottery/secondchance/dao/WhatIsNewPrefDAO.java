package com.flalottery.secondchance.dao;

import java.math.BigDecimal;
import java.sql.SQLException;


public class WhatIsNewPrefDAO extends BaseDAO 
{
	public void updateWhatIsNewPref(String whatIsNewFlag, String memberId) throws SQLException
	{
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.UPDATE_WHATISNEW_PREF);
			cStmnt.setBigDecimal(1, new BigDecimal(memberId));
			cStmnt.setString(2, whatIsNewFlag);
			cStmnt.execute();
		} finally{
			finalBlock();
		}
	}
}
