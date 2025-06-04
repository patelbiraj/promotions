package com.flalottery.secondchance.utility;

import java.util.*;

public class Util {
	public static char[] getOTP() {
		int len = 6;
		// Using numeric values
		String pool = "0123456789";

		// Using random method
		Random random = new Random();

		char[] otp = new char[len];

		for (int i = 0; i < len; i++) {
			otp[i] = pool.charAt(random.nextInt(pool.length()));
		}
		return otp;
	}
	
	public static boolean validateSpecialChar(String s) {
		String regExp = "^[a-zA-Z0-9-_.@]+$";
		return s.matches(regExp);
	}

}