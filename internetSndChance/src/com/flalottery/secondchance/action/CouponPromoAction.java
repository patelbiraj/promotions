package com.flalottery.secondchance.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.DatabaseStatusFlag;

import com.flalottery.secondchance.dao.TicketEntryDAO;
import com.flalottery.secondchance.dao.TicketEntrySocialPromotionDAO;
import com.flalottery.secondchance.dataobject.ESAResponseDO;
import com.flalottery.secondchance.dataobject.TicketEntryDO;
import com.flalottery.secondchance.dataobject.TicketFamilyDO;
import com.flalottery.secondchance.dao.CouponPromoDAO;
import com.flalottery.secondchance.dataobject.CouponPromoDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.Promotion;
import com.flalottery.secondchance.domain.PromotionType;
import com.flalottery.secondchance.form.TicketEntryForm;
import javax.servlet.http.HttpServletRequest;
import com.flalottery.secondchance.utility.ESAClient;
import com.flalottery.secondchance.utility.RunTimeEnv;



/**
 * Action to be used for all standard promotions (voucher or scratch). Handles
 * How to Play, Prizes, Rules, Ticket Entry, Winners, and How to Claim.
 * 
 */
public class CouponPromoAction extends SecondChanceAction {

	private static final long serialVersionUID = 1614374506028620173L;
	private static final Logger logger = LoggerFactory.getLogger(PromotionAction.class.getName());
	private String url;
	
	protected TicketEntryForm form = new TicketEntryForm();
	
	protected final TicketEntryDAO dao = new TicketEntryDAO();
	protected List<TicketEntryDO> ticketEntryList = new ArrayList<TicketEntryDO>(10);
	protected final CouponPromoDAO couponPromoDao = new CouponPromoDAO();
	protected List<CouponPromoDO> couponList = new ArrayList<CouponPromoDO>(10);
	
	protected StringBuilder pageTitle = new StringBuilder();
	protected Integer promotionId = 0;
	protected Promotion promotion = null;
	protected String returnValue;
	protected String filename;
	protected String couponPrice;
	
	ESAResponseDO esaResponseDO;
	
	protected List<TicketFamilyDO> ticketFamilyList = new ArrayList<TicketFamilyDO>(10);
	protected Map<Integer, Integer> familyCheck = new HashMap<Integer, Integer>(10);
	protected List<Integer> familyStrings = new ArrayList<Integer>();
	String familyTicketMessage = "Enter ";
	int low = -1;
	
	String esaResponseMessage = "";
	long ticketPrice = 0;

	/**
	 * Action method for the promotion's ticket entry page.
	 * 
	 * @return - ENTRY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String entry() throws Exception {
		if (PromotionType.VOUCHER.equals(getPromotion().getPromotionType())) {
			setPromotionPageTitle(Constants.PAGE_TITLE_VOUCHER_ENTRY);
			messages.setH1Title(getText("voucherEntry.h1Title"));
		}
		else {
			setPromotionPageTitle(Constants.PAGE_TITLE_TICKET_ENTRY);
			messages.setH1Title(getText("ticketEntry.h1Title"));
		}
		return form.isSubmitted() ? create() : read();
	}
	
	
	@SkipValidation
	public String coupon() throws Exception {
		
		final HttpServletRequest servletRequest = ServletActionContext.getRequest();
		
		messages.setH1Title("Coupon Action Display");
		this.filename = couponPromoDao.getCouponFilename(getLoginDO().getPlayerId(), this.promotionId, Integer.valueOf(servletRequest.getParameter("id")));
		setCouponList(couponPromoDao.getCouponPromo(getLoginDO().getPlayerId(), promotionId));
		
		for(int i = 0; i < this.couponList.size(); i++) {
			if(this.couponList.get(i).getCouponID().equals(Integer.valueOf(servletRequest.getParameter("id")))){
				this.couponPrice = this.couponList.get(i).getCouponVal();
			}
		}
		 
		if(this.filename == null) 
			this.filename = "empty";
			
		return COUPON;
	}
	
	/**
	 * Called when player first visits the ticket entry page (when they are not
	 * submitting a ticket).
	 * 
	 * @return - TICKET_ENTRY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@Override
	protected String read() throws Exception {
		
		
		
		setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
		setCouponList(couponPromoDao.getCouponPromo(getLoginDO().getPlayerId(), promotionId));
		if(promotionId == 135) {
			setFamilyCheck();
		}
			
		return ENTRY;
	}

	/**
	 * Submits a player's ticket entry to the database.
	 * 
	 * @return - TICKET_ENTRY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@Override
	protected String create() throws Exception {
		System.out.println("Promotion Id ::: " + promotionId);
		if (promotionId == 137 || promotionId == 136 || promotionId == 135 || promotionId == 128 || promotionId == 121 ) {
			ESAClient esaClient = new ESAClient();
			String envType = RunTimeEnv.getEnvType();
			String esaURL = "";
			if (envType.equals(RunTimeEnv.PROD)) {
				esaURL = Constants.ESAPRODURL;
			} else if (envType.equals(RunTimeEnv.QA)) {
				esaURL = Constants.ESAQAURL;
			} else {
				esaURL = Constants.ESADEVURL;
			}
			System.out.println("############### esaURL" + esaURL);
			esaResponseDO = esaClient.validate(esaURL, form.getTicketNumber(), form.getTicketNumberPin(),getLoginDO().getPlayerId(), promotionId);
			if (esaResponseDO != null) {
				esaResponseMessage = esaResponseDO.getResponseMessage() + "<br />";
				System.out.print("ESARESPONSE: : " + esaResponseDO.getResponseStatus() + " :::::::::::");
				if (esaResponseDO.getResponseStatus() != null && esaResponseDO.getResponseStatus().equalsIgnoreCase("ACCEPTED")) {
					System.out.print("ESATICKETPRICE: : " + esaResponseDO.getTicketPrice() + " :::::::::::");
					if (esaResponseDO.getTicketPrice() != null) {
						ticketPrice = Long.parseLong(esaResponseDO.getTicketPrice());
						logger.info("Ticket Price from create ::: " + ticketPrice);
					}
					newEntry(ticketPrice);
				} else {
					setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
					setCouponList(couponPromoDao.getCouponPromo(getLoginDO().getPlayerId(), promotionId));
					if(promotionId == 135) {
						setFamilyCheck();
					}
					messages.setMessage(getText("ticketEntry.message.invalid"));
					addFieldError(form.getTicketNumber(), esaResponseMessage);
				}

				this.session.remove("isTicketScan");
			}
			
			
			//validate();
			//newEntry(ticketPrice);

		} else {
			validate();
			newEntry(ticketPrice);
		}
		return ENTRY;
	}	
		
	private String newEntry(Long ticketPrice) throws Exception {
		System.out.println("#########ticket price from coupon action " + ticketPrice);

		if (!this.hasErrors()) {

			switch (createNewEntry(ticketPrice)) {
			case SUCCESS:
			case SUCCESSFUL_SCRATCH:
			case SUCCESSFUL_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.success")); // Removed ESA Message
				form = new TicketEntryForm();				
				break;
			case DUPLICATE:
			case DUPLICATE_SCRATCH:
			case DUPLICATE_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.duplicate"));
				break;
			case INVALID_SCRATCH:
				messages.setMessage(getText("ticketEntry.message.invalid.scratch"));
				break;
			case INVALID:
				messages.setMessage(getText("ticketEntry.message.invalid"));
				break;
			case INVALID_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.invalid.voucher"));
				break;
			case DISQUALIFIED_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.disqualified.voucher"));
				break;
			default:
				if (promotionId != 128 || promotionId != 121) {
					messages.setMessage(esaResponseMessage + getText("ticketEntry.message.default"));
				}
				break;
			}
		}
		
		setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
		setCouponList(couponPromoDao.getCouponPromo(getLoginDO().getPlayerId(), promotionId));
		if(promotionId == 135) {
			setFamilyCheck();
		}
		return ENTRY;
	}

	 
	private DatabaseStatusFlag createNewEntry(long ticketPrice) throws Exception {
		if (form.getIsScanned()) {
			if (form.getScannedTicketNumber() == null || form.getScannedTicketNumber().equals("")) {
				form.setScannedTicketNumber(form.getTicketNumber());
			}
		}
		System.out.println("#### from CreateNew Entry " + ticketPrice);
		return dao.newTicketEntry(getLoginDO().getPlayerId(), promotionId, form, ticketPrice);
	}	
	 
	@Override
	public void validate() {
		final String entry = form.getTicketNumber();
		if (!StringUtils.isNumeric(entry) || (!getPromotion().getAllowedDigits().contains(entry.length()) && !(entry.length() < 17 || entry.length() > 20))) {
			addFieldError("form.ticketNumber", getText("errors.entry", new String[] { getPromotion().ticketTypesToString() }));
		}
	}

	public TicketEntryForm getForm() {
		return this.form;
	}

	public void setForm(final TicketEntryForm form) {
		this.form = form;
	}

	public List<TicketEntryDO> getTicketEntryList() {
		return ticketEntryList;
	}

	public void setTicketEntryList(final List<TicketEntryDO> ticketEntryList) {
		this.ticketEntryList = ticketEntryList;
		java.util.Collections.sort(this.ticketEntryList);
		java.util.Collections.reverse(this.ticketEntryList);
	}
	
	public List<CouponPromoDO> getCouponList(){
		return couponList;
	}
	
	public void setCouponList(final List<CouponPromoDO> couponPromoList) {
		this.couponList = couponPromoList;
		java.util.Collections.sort(this.couponList);
		java.util.Collections.reverse(this.couponList);
	
	}

	public void setFilename(final String p_filename) {
		this.filename = p_filename;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setCouponPrice(final String p_price) {
		this.couponPrice = p_price;
	}
	
	public String getCouponPrice(){
		return this.couponPrice;
	}
	
	/**
	 * Action method for the promotion's how to claim page.
	 * 
	 * @return - HOW_TO_CLAIM
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String howToClaim() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_HOW_TO_CLAIM);
		messages.setH1Title(getText("howToClaim.h1Title"));
		return HOW_TO_CLAIM;  
	}

	/**
	 * Action method for the promotion's how to play page.
	 * 
	 * @return - HOW_TO_PLAY
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String howToPlay() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_HOW_TO_PLAY);
		messages.setH1Title(getText("howToPlay.h1Title"));
		return HOW_TO_PLAY;
	}

	/**
	 * Action method for the promotion's prizes page.
	 * 
	 * @return - PRIZES
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String prizes() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_PRIZES);
		messages.setH1Title(getText("prizes.h1Title"));
		return PRIZES;
	}

	/**
	 * Action method for the promotion's rules page.
	 * 
	 * @return - RULES
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String rules() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_RULES);
		messages.setH1Title(getText("rules.h1Title"));
		return RULES;
	}

	/**
	 * Action method for the promotion's winners page.
	 * 
	 * @return - WINNERS
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String winners() throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_WINNERS);
		messages.setH1Title(getText("winners.h1Title"));
		return WINNERS;
	}

	/**
	 * Action method for the promotion's games page.
	 * 
	 * @return - GAMES
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String games () throws Exception {
		setPromotionPageTitle(Constants.PAGE_TITLE_GAMES);
		messages.setH1Title(getText("games.h1Title"));
		return GAMES;
	}		
	
	public void setPromotionPageTitle(final String title) {
		messages.setPageTitle(pageTitle.append(title).append(Constants.SPACE_HYPHEN_SPACE).append(getPromotion().getName()).append(Constants.SPACE_HYPHEN_SPACE)
				.append(Constants.PAGE_TITLE_BASE).toString());
	}

	public Promotion getPromotion() {
		return promotion;
	}

	public void setPromotionId(final Integer promotionId) {
		this.promotionId = promotionId;
		this.promotion = getAllPromotions().get(promotionId);
		if (null != this.promotion) {
			promotion.getPromotionInterval();
		}
	}

	protected static final String HOW_TO_CLAIM = "howToClaim";
	protected static final String HOW_TO_PLAY = "howToPlay";
	protected static final String PRIZES = "prizes";
	protected static final String RULES = "rules";
	protected static final String WINNERS = "winners";
	protected static final String ENTRY = "entry";
	protected static final String GAMES = "games";	
	protected static final String COUPON = "coupon";
	
	
	public void setFamilyCheck() {
		

		familyCheck.put(1, 0);
		familyCheck.put(2, 0);
		familyCheck.put(5, 0);
		familyCheck.put(10, 0);
		

		for(TicketEntryDO itr : ticketEntryList){
			if( (Integer.valueOf(itr.getGameNumber()) >= 1575 && Integer.valueOf(itr.getGameNumber()) < 1579 && itr.getDrawDateFormatted().equals("01/14/2025")))
				familyCheck.replace(itr.getTicketWeight(), familyCheck.get(itr.getTicketWeight()) + 1);
		}
		familyCheck.forEach((k, v) -> {
			if (v < low || low == -1) {
				familyStrings.clear();

				familyStrings.add(k);
				

				low = v;
			}
			else if(v == low) {
				familyStrings.add(k);
				
			}
		} );
		

		Collections.sort(familyStrings);
		

		for(int i = 0; i < familyStrings.size(); i++) {
			if(i != familyStrings.size() - 1)
				familyTicketMessage += "$" + familyStrings.get(i) + ", ";
			else
				familyTicketMessage += "$" + familyStrings.get(i);
		}
		if(familyStrings.size() > 1)
			familyTicketMessage += " tickets to complete a family for the next draw."; 
		else
			familyTicketMessage += " ticket to complete a family for the next draw.";
	}
	
	public Map<Integer, Integer> getFamilyCheck() {
		return familyCheck;
	}
	
	public String getFamilyTicketMessage() {
		return familyTicketMessage;
	}
	
}
