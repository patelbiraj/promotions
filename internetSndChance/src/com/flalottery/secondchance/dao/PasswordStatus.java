package com.flalottery.secondchance.dao;

public enum PasswordStatus {
	WRONG_PASSWORD("WRONG_PASSWORD"),
	ENCRYPTION_FAILED("ENCRYPTION_FAILED"),
	PASSWORD_STILL_PLAIN_TEXT("PASSWORD_STILL_PLAIN_TEXT"),
	PASSWORD_ENCRYPTION_MATCHED("PASSWORD_ENCRYPTION_MATCHED");
	
	
	public final String label;
    private PasswordStatus(String label) {
        this.label = label;
    }
	
}
