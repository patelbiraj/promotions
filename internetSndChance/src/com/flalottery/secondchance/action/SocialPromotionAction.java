package com.flalottery.secondchance.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.TicketEntrySocialPromotionDAO;
import com.flalottery.secondchance.dataobject.ESAResponseDO;
import com.flalottery.secondchance.dataobject.TicketEntryDO;
import com.flalottery.secondchance.dataobject.TicketFamilyDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.PromotionType;
import com.flalottery.secondchance.form.TicketEntryForm;
import com.flalottery.secondchance.scigames.SciGamesAPIConsumer;
import com.flalottery.secondchance.utility.ESAClient;
import com.flalottery.secondchance.utility.RunTimeEnv;


public class SocialPromotionAction extends PromotionAction implements ServletRequestAware {

	private static final long serialVersionUID = 1614374506028620173L;
	private static final Logger logger = LoggerFactory.getLogger(SocialPromotionAction.class.getName());
	protected final TicketEntrySocialPromotionDAO dao = new TicketEntrySocialPromotionDAO();
	protected HttpServletRequest request;
	ESAResponseDO esaResponseDO;
	
	protected List<TicketFamilyDO> ticketFamilyList = new ArrayList<TicketFamilyDO>(10);
	protected Map<Integer, Integer> familyCheck = new HashMap<Integer, Integer>(10);
	protected List<Integer> familyStrings = new ArrayList<Integer>();
	String familyTicketMessage = "Enter ";
	int low = -1;
	String esaResponseMessage = "";
	long ticketPrice = 0;
	
	int numberOfEnteries = 0;
	String gamesURL = null;
	boolean readyForURL = false;
	int elseCounter = 0;

	
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
		if (promotionId==142 || promotionId == 141 || promotionId == 129 || promotionId == 132 || promotionId == 131 || 
				promotionId == 115 || promotionId == 119 || promotionId == 121) {
			if (null != this.session.get("autoLogin")) {
				boolean isTicketScan = false;
				if (this.session.get("isTicketScan") != null) {
					isTicketScan = (Boolean) this.session.get("isTicketScan");
				}

				if (isTicketScan || form.getIsScanned()) {
					this.session.put("isTicketScan", true);
					form.setAppEntry("MS");
				} else {
					form.setAppEntry("MM");
				}
				logger.info("Formm ::: " + form.getIsScanned() + form.getAppEntry());
			}

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
				if (esaResponseDO.getResponseStatus() != null && esaResponseDO.getResponseStatus().equalsIgnoreCase("ACCEPTED")) {
					if (esaResponseDO.getTicketPrice() != null) {
						ticketPrice = Long.parseLong(esaResponseDO.getTicketPrice());
						logger.info("Ticket Price from create ::: " + ticketPrice);
					}
					newEntry(ticketPrice);
				} else {
					logger.info("ESA Esle Part eceution + " + elseCounter);
					setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
					if(promotionId == 132) {
						System.out.println("here");
						setFamilyCheck();
					}
					
					//setTicketFamilyList(dao.getTicketFamily(getLoginDO().getPlayerId(), promotionId));
					messages.setMessage(esaResponseMessage);
					addFieldError(form.getTicketNumber(), esaResponseMessage);
					elseCounter++;
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
		System.out.println("#########ticket price from Social promo action " + ticketPrice);

		if (!this.hasErrors()) {

			switch (createNewEntry(ticketPrice)) {
			case SUCCESS:
			case SUCCESSFUL_SCRATCH:
			case SUCCESSFUL_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.success")); // Removed ESA Message
				form = new TicketEntryForm();				
				//readyForURL = true;

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
			case INVALID_PROMOTION:
				messages.setMessage(getText("ticketEntry.message.invalid.fb.promotion"));
				break;
			case INVALID_FB_PROMOTION:
				messages.setMessage(getText("ticketEntry.message.invalid.fb.promotion"));
				break;
			case PROMO_USED:
				messages.setMessage(getText("ticketEntry.message.promo.used"));
				break;
			case INVALID_IG_PROMOTION:
				messages.setMessage(getText("ticketEntry.message.invalid.ig.promotion"));
				break;
			case INVALID_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.invalid.voucher"));
				break;
			case DISQUALIFIED_VOUCHER:
				messages.setMessage(getText("ticketEntry.message.disqualified.voucher"));
				break;
			default:
				if (promotionId==142 || promotionId == 141 || promotionId != 132 || promotionId != 131 || promotionId != 129 || 
					promotionId != 114 || promotionId != 119 || promotionId != 121) {
					messages.setMessage(esaResponseMessage + getText("ticketEntry.message.default"));
				}
				break;
			}
		}

		setTicketEntryList(dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId));
		//setTicketFamilyList(dao.getTicketFamily(getLoginDO().getPlayerId(), promotionId));
		
		if (promotionId == 132) {
		setFamilyCheck();
		}
		DatabaseStatusFlag dsf = dao.fbValidatePromoDate();
		if (dsf == DatabaseStatusFlag.SUCCESS) {
			DatabaseStatusFlag dsf2 = dao.fbReadPromoEntry(getLoginDO().getPlayerId(), promotionId);
			if (dsf2 == DatabaseStatusFlag.SUCCESS) {
				request.setAttribute("fbPromoCode", true);
				System.out.println();
			} else {
				request.setAttribute("fbPromoCode", false);
				request.setAttribute("fbPromoStartDate", getFbPromoStartDate());
			}
		}

		DatabaseStatusFlag dsfi = dao.instValidatePromoDate();
		if (dsfi == DatabaseStatusFlag.SUCCESS) {
			DatabaseStatusFlag dsf2 = dao.instReadPromoEntry(getLoginDO().getPlayerId(), form.getInstPromoCode());
			if (dsf2 == DatabaseStatusFlag.SUCCESS) {
				request.setAttribute("instPromoCode", true);
			} else {
				request.setAttribute("instPromoCode", false);
				request.setAttribute("instPromoStartDate", getInstPromoStartDate());
			}
		}

		numberOfEnteries = dao.getTicketEntriesPrice(form.getTicketNumber(),getLoginDO().getPlayerId());
		
		if(readyForURL){
			SciGamesAPIConsumer sciGamesAPIConsumer = new SciGamesAPIConsumer();
			gamesURL = sciGamesAPIConsumer.getGameURL(numberOfEnteries);

			System.out.println(" Games URL Received = " + gamesURL);
			logger.info("#########scientific games################ -> " + gamesURL);

			if (gamesURL != null && gamesURL.toString().length() > 0) {
				request.setAttribute("gamesURL", gamesURL);
				readyForURL = false;
			}
		}
		return ENTRY;
	}

	@Override
	public String entry() throws Exception {
		if (PromotionType.VOUCHER.equals(getPromotion().getPromotionType())) {
			setPromotionPageTitle(Constants.PAGE_TITLE_VOUCHER_ENTRY);
			messages.setH1Title(getText("voucherEntry.h1Title"));
		} else {
			setPromotionPageTitle(Constants.PAGE_TITLE_TICKET_ENTRY);
			messages.setH1Title(getText("ticketEntry.h1Title"));
		}

		DatabaseStatusFlag dsf = dao.fbValidatePromoDate();
		if (dsf == DatabaseStatusFlag.SUCCESS) {
			DatabaseStatusFlag dsf2 = dao.fbReadPromoEntry(getLoginDO().getPlayerId(), promotionId);
			if (dsf2 == DatabaseStatusFlag.SUCCESS) {
				request.setAttribute("fbPromoCode", true);
			} else {
				request.setAttribute("fbPromoCode", false);
				request.setAttribute("fbPromoStartDate", getFbPromoStartDate());
			}
		}

		DatabaseStatusFlag dsfi = dao.instValidatePromoDate();
		if (dsfi == DatabaseStatusFlag.SUCCESS) {
			DatabaseStatusFlag dsf2 = dao.instReadPromoEntry(getLoginDO().getPlayerId(), form.getInstPromoCode());
			if (dsf2 == DatabaseStatusFlag.SUCCESS) {
				request.setAttribute("instPromoCode", true);
			} else {
				request.setAttribute("instPromoCode", false);
				request.setAttribute("instPromoStartDate", getInstPromoStartDate());
			}
		}

		return form.isSubmitted() ? create() : read();
	}
	
	@Override
	protected String read() throws Exception {
		
		
		super.read();
		//setTicketFamilyList(dao.getTicketFamily(getLoginDO().getPlayerId(), promotionId));
		if(promotionId == 132) {
		setFamilyCheck();
		}
		return ENTRY;
		}
	
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
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

	private String getFbPromoStartDate() {
		Calendar c = Calendar.getInstance();
		c.setFirstDayOfWeek(Calendar.THURSDAY);
		c.set(Calendar.DAY_OF_WEEK, Calendar.THURSDAY);
		DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		return formatter.format(c.getTime());
	}

	private String getInstPromoStartDate() {
		Calendar c = Calendar.getInstance();
		c.setFirstDayOfWeek(Calendar.THURSDAY);
		c.set(Calendar.DAY_OF_WEEK, Calendar.THURSDAY);
		DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		return formatter.format(c.getTime());
	}
	
	public void setTicketFamilyList(final List<TicketFamilyDO> ticketFamilyList) {
		this.ticketFamilyList = ticketFamilyList;
		java.util.Collections.sort(this.ticketFamilyList);
		java.util.Collections.reverse(this.ticketFamilyList);
	}
	
	public List<TicketFamilyDO> getTicketFamilyList(){
		return ticketFamilyList;
	}
	
	public void setFamilyCheck() {
		

		familyCheck.put(1, 0);
		familyCheck.put(2, 0);
		familyCheck.put(5, 0);
		familyCheck.put(10, 0);
		familyCheck.put(20, 0);

		
		for(TicketEntryDO itr : ticketEntryList){
			if(itr.getDrawDateFormatted().equals("12/10/2024"))
				familyCheck.replace(itr.getTicketWeight(), familyCheck.get(itr.getTicketWeight()) + 1);
		}
		familyCheck.forEach((k, v) -> {
			if (v < low || low == -1) {
				familyStrings.clear();

				familyStrings.add(k);
				System.out.println("$" + k);

				low = v;
			}
			else if(v == low) {
				familyStrings.add(k);
				System.out.println("$" + k);

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
