package com.flalottery.secondchance.dao;

public enum StoredProcs {

	INSTANCE;

	public static final String LOGIN = "{call WEB_SECOND_CHANCE.login(?,?,?)}";
	public static final String FORGOT_PASSWORD = "{call WEB_SECOND_CHANCE.forgot_password(?,?)}";
	public static final String ENTER_TICKET = "{call WEB_SECOND_CHANCE.enter_ticket(?, ?, ?, ?, ?, ?)}";
	public static final String ENTER_SCANNED_TICKET = "{call WEB_SECOND_CHANCE.enter_scanned_ticket(?, ?, ?, ?, ?,?)}";
	public static final String ENTER_VOUCHER_WITH_WEIGHT = "{call WEB_SECOND_CHANCE.enter_voucher_with_weight(?, ?, ?, ?, ?, ?)}";

	public static final String ENTER_TICKET_WITH_SOCIAL_PROMO = "{call WEB_SECOND_CHANCE.enter_ticket_with_social_promo(?, ?, ?, ?, ?, ?, ?,?, ?)}";
	public static final String ENTER_SCANNED_TICKET_WITH_SOCIAL_PROMO = "{call WEB_SECOND_CHANCE.enter_scanned_ticket_promo(?, ?, ?, ?, ?, ?, ?,?,?)}";



	public static final String ENTER_TICKET_OLD = "{call WEB_SECOND_CHANCE.enter_tkt(?, ?, ?, ?, ?)}";
	public static final String TICKET_ENTRIES_ALL = "{call WEB_SECOND_CHANCE.get_ticket_entries_all(?,?)}";
	public static final String TICKET_ENTRIES_BY_PROMO = "{call WEB_SECOND_CHANCE.get_ticket_entries_by_promo(?,?,?)}";
	public static final String TICKET_ENTRIES_BY_PROMO_MOBILE = "{call WEB_SECOND_CHANCE.get_ticket_by_promo_mobile(?,?,?)}";
		
	public static final String TICKET_ENTRIES_BY_YEAR = "{call WEB_SECOND_CHANCE.get_tkt_entries_by_year(?,?,?)}";
	public static final String TICKET_ENTRY_PROMOTIONS = "{call WEB_SECOND_CHANCE.get_ticket_entry_promotions(?,?)}";

	public static final String EMAIL_PREFERENCES_CREATE = "{call WEB_SECOND_CHANCE.insert_email_preferences(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	public static final String EMAIL_PREFERENCES_READ = "{call WEB_SECOND_CHANCE.get_email_preferences(?,?)}";
	public static final String EMAIL_PREFERENCES_UPDATE = "{call WEB_SECOND_CHANCE.update_email_preferences(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	public static final String EMAIL_PREFERENCES_DELETE = "{call WEB_SECOND_CHANCE.delete_email_preferences(?,?)}";

	public static final String TEXT_MESSAGING_PREFERENCES_CREATE = "{call WEB_SECOND_CHANCE.text_preferences_create (?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String TEXT_MESSAGING_PREFERENCES_READ = "{call WEB_SECOND_CHANCE.text_preferences_read(?,?)}";
	public static final String TEXT_MESSAGING_PREFERENCES_UPDATE = "{call WEB_SECOND_CHANCE.text_preferences_update(?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String TEXT_MESSAGING_PREFERENCES_DELETE = "{call WEB_SECOND_CHANCE.text_preferences_delete(?,?)}";

	public static final String ACCOUNT_CREATE = "{call WEB_SECOND_CHANCE.account_create(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?, ?, ?, ?)}";
	public static final String ACCOUNT_READ = "{call WEB_SECOND_CHANCE.account_read(?, ?)}";
	public static final String ACCOUNT_UPDATE_PASSWORD = "{call WEB_SECOND_CHANCE.account_update_password(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
	public static final String ACCOUNT_UPDATE = "{call WEB_SECOND_CHANCE.account_update(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
    public static final String ACCOUNT_REMOVE = "{call WEB_SECOND_CHANCE.account_remove(?, ?, ?)}";
	public static final String ACCOUNT_CHECK_REMOVE = "{call WEB_SECOND_CHANCE.account_remove_check(?, ?)}";
    public static final String ACCOUNT_PASSWORD_UPDATE = "{call WEB_SECOND_CHANCE.account_password_update(?, ?, ?)}";
	public static final String ACCOUNT_CONFIRM = "{call WEB_SECOND_CHANCE.account_confirm(?, ?, ?, ?)}";
	public static final String ACCOUNT_CONFIRM_CHECK = "{call WEB_SECOND_CHANCE.account_confirm_check(?, ?)}";
	public static final String ACCOUNT_REG_CHECK = "{call WEB_SECOND_CHANCE.account_reg_check(?, ?)}";
	public static final String ACCOUNT_ALREADY_EXISTS = "{call WEB_SECOND_CHANCE.account_already_exists(?, ?)}";
	public static final String ACCOUNT_SYSTEM_CHECK = "{call WEB_SECOND_CHANCE.account_system_check(?, ?)}";
	
	
	public static final String ACCOUNT_OTP_SET = "{call WEB_SECOND_CHANCE.account_otp_set(?, ?, ?, ?)}";
	public static final String ACCOUNT_OTP_READ = "{call WEB_SECOND_CHANCE.account_otp_read(?, ?)}";
	public static final String ACCOUNT_NAME_READ = "{call WEB_SECOND_CHANCE.account_name_read(?, ?)}";

	public static final String GET_ALL_PROMOTIONS = "{call WEB_SECOND_CHANCE.get_all_promotions(?)}";
	public static final String GET_ALL_PROMO_GAMES = "{call WEB_SECOND_CHANCE.get_all_promo_games(?)}";
	public static final String GET_ALL_PROMO_DRAWS = "{call WEB_SECOND_CHANCE.get_all_promo_draws(?)}";
	public static final String GET_ALL_PROMO_PRIZE_LEVELS = "{call WEB_SECOND_CHANCE.get_all_promo_prize_levels(?)}";
	public static final String VALIDATE_PROMO = "{call WEB_SECOND_CHANCE.validate_promo(?, ?)}";
	public static final String GET_EXT_URL = "{call WEB_SECOND_CHANCE.get_ext_url(?, ?)}";
	public static final String GET_TICKET_FAMILY_MOBILE = "{call WEB_SECOND_CHANCE.get_ticket_family_mobile(?, ?, ?)}";
	
	
	// public static final String GET_COUPON =
	// "{call second_chance_pkg.get_pdf_file(?, ?, ?, ?, ?, ?, ?)}";
	// public static final String PERSIST_GUY_HARVEY_ENTRY_FORM =
	// "{call FB_GUY_HARVEY_PROMO_PKG.insertFBGuyHarveyEntry(?,?,?,?,?,?,?)}";
	public static final String GET_COUPON_BARCODE="{call WEB_COUPON_EMAILS.get_barcode_for_jsp(?,?,?,?,?,?)}";
	public static final String GET_COUPON_BARCODE_NE="{call WEB_COUPON_EMAILS.get_barcode_for_jsp_ne(?,?,?,?)}";
	public static final String UPDATE_WHATISNEW_PREF="{call WEB_COUPON_EMAILS.set_promo_preference(?,?)}";
	public static final String GET_COUPON_EMAIL="{? = call WEB_COUPON_EMAILS.get_email_address(?)}";
	public static final String IS_VALID_DATE = "{? = call WEB_COUPON_EMAILS.is_date_valid(?)}";
	public static final String IS_VALID_DATE_NE = "{? = call WEB_COUPON_EMAILS.is_date_valid_ne(?)}";
	
	
	public static final String FB_VALIDATE_PROMO_DATE = "{call WEB_SECOND_CHANCE.fb_validate_promo_date(?)}";
	public static final String FB_VALIDATE_PROMO_PER_GAME = "{call WEB_SECOND_CHANCE.fb_validate_promo_date(?,?)}";
	public static final String FB_READ_PROMO_ENTRY = "{call WEB_SECOND_CHANCE.fb_read_promo_entry(?, ?, ?)}";

	public static final String INST_VALIDATE_PROMO_DATE = "{call WEB_SECOND_CHANCE.inst_validate_promo_date(?)}";
	public static final String INST_VALIDATE_PROMO_PER_GAME = "{call WEB_SECOND_CHANCE.inst_validate_promo_date(?,?)}";
	public static final String INST_READ_PROMO_ENTRY = "{call WEB_SECOND_CHANCE.inst_read_promo_entry(?, ?, ?)}";

	public static final String ENCRYPT = "{call WEB_SECOND_CHANCE.encode_email(?, ?)}";
	public static final String DECRYPT = "{call WEB_SECOND_CHANCE.decode_email(?, ?)}";

	public static final String PROP_GET = "{call WEB_SECOND_CHANCE.get_prop(?, ?)}";
	
	public static final String PAGE_GET = "{call WEB_SECOND_CHANCE.get_page(?, ?, ?)}";
	public static final String PAGE_WINNERS_GET = "{call WEB_SECOND_CHANCE.get_winners_page(?, ?, ?)}";
	public static final String PAGES_WINNERS_GET = "{call WEB_SECOND_CHANCE.get_winners_pages(?, ?)}";
	public static final String IMAGE_GET = "{call WEB_SECOND_CHANCE.get_image(?, ?, ?)}";
	public static final String IMAGES_GET = "{call WEB_SECOND_CHANCE.get_images(?, ?)}";
	public static final String DRAWS_GET = "{call WEB_SECOND_CHANCE.get_draws(?, ?)}";
	public static final String STYLE_GET = "{call WEB_SECOND_CHANCE.get_style(?, ?, ?)}";
	public static final String STYLES_GET = "{call WEB_SECOND_CHANCE.get_styles(?, ?)}";
	
	public static final String GET_CURRENT_COUPONS = "{call WEB_COUPON_EMAILS.get_current_coupons(?)}";
	public static final String GET_COUPON_CONTENT = "{call WEB_COUPON_EMAILS.get_coupon_content(?, ?)}";
	public static final String GET_MEMBER_COUPONS = "{call WEB_COUPON_EMAILS.get_member_coupons(?, ?)}";
	
	public static final String CDCS_GET = "{call WEB_SECOND_CHANCE.get_cdcs(?, ?)}";
	public static final String GET_SND_PROMO_GAMES = "{call WEB_SECOND_CHANCE.get_promo_games(?, ?)}";
}
