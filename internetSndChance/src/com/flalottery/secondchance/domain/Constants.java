package com.flalottery.secondchance.domain;

import java.util.regex.Pattern;

import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public final class Constants {

	// public static final Pattern EMAIL_PATTERN =
	// Pattern.compile("^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");
	public static final Pattern DIGITS_PATTERN = Pattern.compile("\\d");
	public static final String NOT_AVAILABLE = "Not Available";
	public static final DateTimeFormatter fmt = DateTimeFormat.forPattern("MM/dd/yyyy");

	public static final Boolean ON = Boolean.TRUE;
	public static final Boolean OFF = Boolean.FALSE;

	public static final Integer ZERO = Integer.valueOf(0);
	public static final Integer ONE = Integer.valueOf(1);
	public static final Integer TWO = Integer.valueOf(2);

	public static final String ALL = "all";
	public static final String ATTRIBUTE_PROMOTIONS = "promotions";

	public static final String SCRATCH = "scratch";
	public static final String ONLINE = "online";
	public static final String SCRATCH_FOR_ERROR = "non-winning scratch-off ticket";
	public static final String DIGIT = "-digit";
	public static final String SPACE = " ";
	public static final String EMPTY = "";
	public static final String VOUCHER = "voucher";
	public static final String SPACE_HYPHEN_SPACE = " - ";
	public static final String COMMA = ",";

	public static final String PAGE_TITLE_BASE = "Florida Lottery Bonus Play Drawings &amp; Promotions";
	public static final String PAGE_TITLE_HOW_TO_PLAY = "How to Play";
	public static final String PAGE_TITLE_PRIZES = "Prizes";
	public static final String PAGE_TITLE_RULES = "Rules";
	public static final String PAGE_TITLE_TICKET_ENTRY = "Ticket Entry";
	public static final String PAGE_TITLE_VOUCHER_ENTRY = "Voucher Entry";
	public static final String PAGE_TITLE_WINNERS = "Winners";
	public static final String PAGE_TITLE_GAMES = "Games";	
	public static final String PAGE_TITLE_HOW_TO_CLAIM = "How to Claim";

	public static final String ACCOUNT = "account";
	public static final String REGISTER = "register";
	public static final String HYPHEN = "-";
	
	public static final String YES = "Y";
	public static final String NO = "N";
	
	public static final String ESADEVURL="http://qwas3:9080/esa/validateTicket";
	public static final String ESAQAURL="http://qwas3:9080/esa/validateTicket";
	public static final String ESAPRODURL="http://pwas4:9090/esa/validateTicket";
	
	public static final String SCI_GAMES_QA_URL ="https://qa.sglotterygames.com";
	public static final String SCI_GAMES_UAT_URL ="https://uat.sglotterygames.com";
	public static final String SCI_GAMES_PROD_URL ="https://www.sglotterygames.com";
	
	public static final String SCI_GAMES_ID = "62f69849e908ec04790777ee";
	
	public static final String SCI_GAMES_QA_USER_ID = "ngl_fllottery";
	public static final String SCI_GAMES_QA_USER_KEY ="8KA5cP9TdLQ2PyuF";
	
	public static final String SCI_GAMES_UAT_PROD_USER_ID = "ngl_fllottery";
	public static final String SCI_GAMES_UAT_PROD_USER_KEY = "bRGYfqm82Tg4tKW3";


}
