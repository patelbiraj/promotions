package com.flalottery.secondchance.utility;

import java.util.Arrays;
import java.util.List;
import java.util.TreeSet;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

public enum FieldValidation {

	INSTANCE;

	/**
	 * Some ranges are such that a single value is all that is required since
	 * min and max are the same.
	 */
	public static final Integer[] RANGE_PASSWORD = new Integer[] { 6, 16 };
	public static final Integer[] RANGE_EMAIL = new Integer[] { 5, 150 };

	public static final Integer[] RANGE_NAME_FIRST = new Integer[] { 1, 50 };
	public static final Integer[] RANGE_NAME_LAST = new Integer[] { 1, 50 };

	public static final Integer[] RANGE_STREET1 = new Integer[] { 3, 150 };
	public static final Integer[] RANGE_STREET2 = new Integer[] { 0, 150 };

	public static final Integer[] RANGE_CITY = new Integer[] { 1, 18 };

	public static final Integer[] RANGE_STATE = new Integer[] { 2 };

	public static final Integer[] RANGE_POSTAL_CODE = new Integer[] { 5, 10 };
	public static final Integer[] RANGE_COUNTRY = new Integer[] { 2, 3 };

	public static final Integer[] RANGE_PHONE = new Integer[] { 12 }; // 999-999-9999

	public static final Pattern EMAIL_PATTERN = Pattern.compile("^.+@.+\\..+$");

	public static final Pattern DIGITS_PATTERN = Pattern.compile("\\d");

	public static final Pattern PHONE_US = Pattern.compile("^\\d{3}-\\d{3}-\\d{4}$");
	
	public static final Pattern STREET_ADDR = Pattern.compile("[0-9]{1,10} [0-9a-zA-Z'.-]+( [0-9a-zA-Z'.-]+)*");
	
	public static final Pattern MILITARY_ADDR1 = Pattern.compile("((unit|UNIT)|(cmr|CMR)|(psc|PSC)) [0-9]{1,10} (BOX|box) [0-9]{1,10}$");
	
	public static final Pattern MILITARY_ADDR2 = Pattern.compile("");
	
	public static final String[] SPECIAL_STREET_ADDR = new String[] {"po box", "apt", "lot", "suite", "villa", "bldg"};
	
	
	public static Boolean isInvalidEmail(final String field) {
		return !isValidEmail(field); 
	}

	public static Boolean isValidEmail(final String field) {
		return field.matches(EMAIL_PATTERN.toString());
	}

	public static Boolean isNotEmpty(final String field) {
		return StringUtils.isNotEmpty(field);
	}

	public static Boolean isEmpty(final String field) {
		return StringUtils.isEmpty(field);
	}

	public static Boolean isInRange(final String field, final Integer... range) {
		Validate.notEmpty(range);
		final TreeSet<Integer> tset = new TreeSet<Integer>(Arrays.asList(range));
		if (field.length() < tset.first() || field.length() > tset.last()) {
			return Boolean.FALSE;
		}
		return Boolean.TRUE;
	}

	public static Boolean isNotInRange(final String field, final Integer... range) {
		return !isInRange(field, range);
	}

	public static Boolean isInvalidPhoneNumber(final String phone) {
		return !phone.matches(PHONE_US.toString());
		
	}
	
	/*
	 * function to check if zip code contains non numeric characters
	 */
	public static Boolean isInvalidZip(final String zip) {
		
		return !zip.matches("[0-9]{5}(-[0-9]{4})?");
	}  
	
	public static int isInvalidCity(final String city) {
		if (city.matches(".*[0-9]+.*") || city.matches(".*[~`!@#$%^&*()_=+:;<,>?/.]+.*") || city.matches("\\s*") ||
				specialCharCheck(city))
			return 1;
		else if(specialCharCheckEndCityStreet(city, "city"))
			return 2;
		return -1;
	}
	
	
	 
	/*
	 * function to check if last or first name contains non-numeric characters excluding dashes
	 * returns -1 if there are no errors
	 * returns 1 if there are numerics in name
	 * returns 2 if there are illegal characters excluding alphabets and whitespace/dash
	 * returns 3 if there are special characters at the end of the string
	 * returns 4 in case of periods only used for last names, suffixes
	 */
	public static int isInvalidName( String name, final String type) {
		name = name.trim();
		if(type.equals("last name")) {
			if(name.matches(".*[0-9]+.*") || name.matches("\\s*"))
				return 1;
			else if(name.matches(".*[~`!@#$%^&*()_=+:;<,>?/]+.*") || specialCharCheck(name)) 
				return 2;
			else if(specialCharCheckEnd(name))
				return 3;
			else if(name.contains("."))
				return 4;
				 
			return -1;
		}
		/*
		 * case for first names
		 * no numbers, special characters excluding dashes, whitespaces, and apostrophes
		 */
		else {
			if(name.matches(".*[0-9]+.*") || name.matches("\\s*")) 
				return 1;
			else if(name.matches(".*[~`!@#$%^&*()_=+:;<,>?/.]+.*") || specialCharCheck(name)) 
				return 2;
			else if(specialCharCheckEnd(name)) 
				return 3;
			return -1;
		  
		}
		 
	}
	
	
	//password - one uppercase, one lowercase, one number, one special character
	public static Boolean isInvalidPassword(final String password) {
		
		return !( password.length() >= 6 && password.matches(".*[a-z].*") && password.matches(".*[A-Z].*") && password.matches(".*[0-9].*") && password.matches(".*[#$@!%&*?].*"));  
		//return (!password.matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#$@!%&*?])[A-Za-z\\d#$@!%&*?]{6,16}$"));
	}
	
	public static int isInvalidStreet(final String street, final String type) {
		
		String militaryCheck = street.toLowerCase();
		
		if (street.matches("[a-zA-Z].*") && !specialStreetAddrCheck(street) && !militaryCheck.matches(MILITARY_ADDR1.toString())) {
			return 3; 
		}
			
	    else if(street.matches("\\s*") || (!street.matches(STREET_ADDR.toString()) && !specialStreetAddrCheck(street) && !militaryCheck.matches(MILITARY_ADDR1.toString())))
			return 1;
		else if(specialCharCheckEndCityStreet(street, "street"))
			return 2;
		return -1;
	} 
	
	/*
	 * Helper functions
	 * 
	 */
	private static Boolean specialCharCheck(final String check) {
		return check.contains("[") || check.contains("]") || check.contains("{") || check.contains("}") ||
			   check.contains("|") || check.contains("\\");
	}
	private static Boolean specialCharCheckEnd(final String check) {
		char temp = check.charAt(check.length()-1);
		return temp == ' ' || temp == '-' || temp == '\'';
	}
	private static Boolean specialCharCheckEndCityStreet(final String check, final String type) {
		if (type.equals("city"))
			return check.charAt(check.length()-1) == '-' || check.charAt(check.length()-1) == '\'' || check.charAt(check.length()-1) == '.';
		else
			return check.charAt(check.length()-1) == '-' || check.charAt(check.length()-1) == '\'';
	}
	
	/*
	 * acceptable cases
	 * apt, bldg, po box, suite, lot, unit, villa
	 */
	private static Boolean specialStreetAddrCheck(final String check) {
		
		for(int i = 0; i < 6; i++)
			if(check.toLowerCase().contains(SPECIAL_STREET_ADDR[i]))
				return true;
		return false;
	}
}
