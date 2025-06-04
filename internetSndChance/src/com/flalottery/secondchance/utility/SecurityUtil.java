package com.flalottery.secondchance.utility;

import org.jasypt.util.password.BasicPasswordEncryptor;
import org.jasypt.util.password.StrongPasswordEncryptor;

public class SecurityUtil {	
	
	/* Check the Password Encryption */
	public static String getEncryptedPassword(String plainTextPassword) {
		StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
		//ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
		//passwordEncryptor.setAlgorithm("SHA-1");
		//passwordEncryptor.setPlainDigest(true);
		String encryptedPassword = passwordEncryptor.encryptPassword(plainTextPassword);
		return encryptedPassword;
	}
	
	/* Check the Password Matched or Not */
	public static boolean checkPasswordDecrypted(String passwordUserProvided,String encryptedPasswordFromDB) {
		StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
		if(passwordEncryptor.checkPassword(passwordUserProvided, encryptedPasswordFromDB)){
			return true;
		}else
			return false;
		
	}
	
		
	/* Check the Password Encryption SimplePassword Encryption */	
	public static String getEncryptedSimplePassword(String plainTextPassword) {
		BasicPasswordEncryptor  basicPasswordEncryptor  = new BasicPasswordEncryptor();
		String encryptedPassword = basicPasswordEncryptor.encryptPassword(plainTextPassword);
		return encryptedPassword;
	}
	
	/* Check the Password Matched or Not */
	public static boolean checkPasswordSimpleDecrypted(String passwordUserProvided,String encryptedPasswordFromDB) {
		BasicPasswordEncryptor basicPasswordEncryptor = new BasicPasswordEncryptor();
		if(basicPasswordEncryptor.checkPassword(passwordUserProvided, encryptedPasswordFromDB)){
			return true;
		}else
			return false;
		
	}
}
