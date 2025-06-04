package com.flalottery.secondchance.dataobject;

import com.flalottery.secondchance.dao.DatabaseStatusFlag;

public class MobileTicketEntryResponseDO {
	
	private DatabaseStatusFlag databaseStatusFlag;
	
	private ESAResponseDO esaResponse;
	
	public DatabaseStatusFlag getDatabaseStatusFlag() {
		return databaseStatusFlag;
	}

	public void setDatabaseStatusFlag(DatabaseStatusFlag databaseStatusFlag) {
		this.databaseStatusFlag = databaseStatusFlag;
	}

	public ESAResponseDO getEsaResponse() {
		return esaResponse;
	}

	public void setEsaResponse(ESAResponseDO esaResponse) {
		this.esaResponse = esaResponse;
	}
}
