package com.flalottery.secondchance.action;

import java.util.Collections;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.LoginDAO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.DropDowns;
import com.flalottery.secondchance.domain.Name;
import com.flalottery.secondchance.domain.PTA;
import com.flalottery.secondchance.form.AccountForm;
import com.flalottery.secondchance.utility.FieldValidation;
import com.flalottery.secondchance.utility.SecurityUtil;
import com.flalottery.secondchance.utility.Util;

import org.apache.commons.lang3.StringUtils;
/**
 * Action for creating a new account or reading, updating, or deleting an
 * existing account.
 * 
 */
public final class AccountAction extends SecondChanceAction implements ServletRequestAware {

	private static final Logger logger = LoggerFactory.getLogger(AccountAction.class);
	private static final long serialVersionUID = 2384714968375990058L;
	protected HttpServletRequest request;
	private Map<String, String> emptyMap = Collections.emptyMap();
	private Map<String, String> countries = DropDowns.getCountries();
	private Map<String, String> usStates = DropDowns.getUsStates();
	private Map<String, String> usTerritories = DropDowns.getUsTerritories();
	private Map<String, String> canadianProvinces = DropDowns.getCanadianProvinces();
	private Map<String, String> canadianTerritories = DropDowns.getCanadianTerritories();

	private AccountForm form = new AccountForm();
	private String action = Constants.EMPTY;

	@Override
	@SkipValidation
	public String execute() throws Exception {
		int memberId = new AccountDAO().accountAlreadyExists(form.getEmail());
		if (memberId != 0) {
			request.getSession().setAttribute("MEMBER_ID", memberId);
			return control(true, form.isSubmitted(), false);
		} else {
			return control(session.containsKey("loginDO"), form.isSubmitted(), false);
		}
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	/**
	 * Registration page - presents an empty registration form to the player
	 * 
	 * @return - INPUT
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@Override
	protected String other() throws Exception {

		if (request.getSession().getAttribute("email") == null
				|| ((String) request.getSession().getAttribute("email")).equals("")) {
			return "success"; 
		} else {
			String email = (String) request.getSession().getAttribute("email");

			form.setEmail(email);
			form.setEmailConfirm(email);
			setAction(Constants.REGISTER);
			messages.setPageTitle(getText("register.pageTitle"));
			messages.setH1Title(getText("register.h1Title"));
			return INPUT;
		}
	}

	/**
	 * My Account page - populates the form with the player's info from the
	 * database
	 * 
	 * @return - INPUT
	 * @throws -
	 *             thrown if a system level exception occurs.
	 */
	@Override
	protected String read() throws Exception {
		setAction(Constants.ACCOUNT);
		messages.setPageTitle(getText("account.pageTitle"));
		messages.setH1Title(getText("account.h1Title"));
		form = new AccountDAO().getAccount(getLoginDO().getPlayerId());
		return INPUT;
	}

	/**
	 * Creates a new account in the database.
	 * 
	 * @return - MESSAGE if form validation passes, else INPUT
	 * @throws -
	 *             thrown if a system level exception occurs.
	 */
	@Override
	protected String create() throws Exception {
		setAction(Constants.REGISTER);
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}
		
		messages.setPageTitle(getText("registration.confirmation.pageTitle"));
		messages.setH1Title(getText("registration.confirmation.h1Title"));
		messages.setMessage(getText("registration.confirmation.message.failure", new String[] { form.getEmail() }));
		final DatabaseStatusFlag status = new AccountDAO().newRegistration(form);
		
		if (DatabaseStatusFlag.SUCCESS.equals(status)) {
			// Make the entry into the MEMBER_PROFILE_SECURITY			
			messages.setMessage(getText("registration.confirmation.message.success", new String[] { form.getEmail() }));
		} else if (DatabaseStatusFlag.DUPLICATE.equals(status)) {
			messages.setMessage(
					getText("registration.confirmation.message.duplicate", new String[] { form.getEmail() }));
		}

		return MESSAGE_NO_LOGIN;
	}

	/**
	 * Updates the player's account in the database. Also updates the player's
	 * LoginDO in session if updates are successful.
	 * 
	 * @return - MESSAGE if form validation passes, else INPUT
	 * @throws -
	 *             thrown if a system level exception occurs.
	 */
	@Override
	protected String update() throws Exception {

		Integer playerId = null;

		if (getLoginDO() != null && getLoginDO().getPlayerId() != null) {
			setAction(Constants.ACCOUNT);
			playerId = getLoginDO().getPlayerId();
		} else {
			setAction(Constants.REGISTER);
		}

		validate();
		if (this.hasErrors()) {
			return INPUT;
		}

		messages.setPageTitle(getText("update.pageTitle"));
		messages.setH1Title(getText("update.h1Title"));
		messages.setMessage(getText("update.message.failure", new String[] { form.getEmail() }));

		if (playerId == null && request.getSession().getAttribute("MEMBER_ID") != null) {
			playerId = (Integer) request.getSession().getAttribute("MEMBER_ID");
			AccountForm dbForm = new AccountDAO().getAccount(playerId);
			form.setQuickCreate(dbForm.getQuickCreate());
			form.setQuickCreateConfirm(dbForm.getQuickCreateConfirm());
		}

		final DatabaseStatusFlag status = new AccountDAO().updateAccount(playerId, form);
		if (DatabaseStatusFlag.SUCCESS.equals(status)) {			
			if (getLoginDO() != null && getLoginDO().getPlayerId() != null) {
				this.session.put("loginDO", form.toLoginDO(getLoginDO().getPlayerId()));
				new LoginDAO().securityEncryptionCompleted(playerId,form.getEmail().toString());
				messages.setMessage(getText("update.message.success", new String[] { form.getEmail() }));
			} else {
				new LoginDAO().securityEncryptionCompleted(playerId,form.getEmail().toString(),"Y","Y");
				messages.setMessage(getText("update.message.success.login", new String[] { form.getEmail() }));
			}
		} else if (DatabaseStatusFlag.DUPLICATE.equals(status)) {
			messages.setMessage(getText("update.message.duplicate", new String[] { form.getEmail() }));
		}

		if (session.get("ptaUrl") != null && session.get("ptaRedirect") != null) {
			String ptaUrl = StringUtils.defaultString((String) session.get("ptaUrl"));
			String ptaRedirect = StringUtils.defaultString((String) session.get("ptaRedirect"));
			LoginDO loginDO = new LoginDO(0, new Name(), "", "", "", "", "", "", "", "", "");
			String finalPtaRedirectUrl = PTA.buildPtaRedirectUrl(loginDO, ptaUrl, ptaRedirect);
			
			if (!finalPtaRedirectUrl.isEmpty()) {
				// for testing bug in their code:
				String theRedirect = finalPtaRedirectUrl;
				finalPtaRedirectUrl = "redirectToThirdParty.jsp?theRedirect=" + theRedirect;
				ServletActionContext.getResponse().sendRedirect(finalPtaRedirectUrl);
				session.remove("ptaUrl");
				session.remove("ptaRedirect");
				return null;
			}
		}
		
		if (getLoginDO() != null && getLoginDO().getPlayerId() != null) {
			return MESSAGE;
		} else {
			return MESSAGE_NO_LOGIN;
		}
	}

	@SkipValidation
	public String updatePassword() throws Exception {

		if (FieldValidation.isEmpty(form.getPassword())) {
			addFieldError("form.password", getText("error.password.required"));
		} else if (FieldValidation.isNotInRange(form.getPassword(), FieldValidation.RANGE_PASSWORD)) {
			addFieldError("form.password", getText("error.password.length"));
		}else if(FieldValidation.isInvalidPassword(form.getPassword())) {
			addFieldError("form.password", getText("error.password.invalid"));
		}
		if (!form.getPasswordConfirm().equals(form.getPassword())) {
			addFieldError("form.passwordConfirm", getText("errors.passwordConfirm.invalid"));
		}
		
		if (this.hasErrors()) {
			return INPUT;
		}
		
		Integer playerId = (Integer) request.getSession().getAttribute("MEMBER_ID"); 
		setAction(Constants.ACCOUNT);
		
		/* @MANISHK - form.getPassword() should be encrypted now Used by the Mobile Application as well */
		
		final DatabaseStatusFlag status = new AccountDAO().updatePassword(playerId, SecurityUtil.getEncryptedPassword(form.getPassword()));
		
		if (DatabaseStatusFlag.SUCCESS.equals(status)) {
			messages.setMessage(getText("update.password.confirmation.message"));
			
			/* @MANISHK Insert into MEMBER_PROFILE_SECURITY Record after the password updates
			 * We need the email ID's in case called by the Mobile application (They do not pass the email Address while updating the password*/
			String emailAddressOfPlayer = form.getEmail();
			if(emailAddressOfPlayer.isEmpty() || emailAddressOfPlayer.length() < 1){
				emailAddressOfPlayer = new AccountDAO().getEmailIDByMemberID(playerId);
			}
			if (!new LoginDAO().securityEncryptionCompleted(playerId,emailAddressOfPlayer)){
				addActionError(getText("error.update.password"));
				return INPUT;
			}
			
			return SUCCESS;

		} else {
			// set error message
			addActionError(getText("error.update.password"));
			return INPUT;
		}
	}
	

	public Map<String, String> getCountries() {
		return this.countries;
	}

	public void setCountries(final Map<String, String> countries) {
		this.countries = countries;
	}

	public AccountForm getForm() {
		return form;
	}

	public void setForm(final AccountForm form) {
		this.form = form;
	}

	/**
	 * Form validation
	 */
	@Override
	public void validate() {

		if (FieldValidation.isEmpty(form.getEmail())) {
			addFieldError("form.email", getText("error.email.required"));
		} else if (FieldValidation.isInvalidEmail(form.getEmail())) {
			addFieldError("form.email", getText("error.email.required"));
		} else if (FieldValidation.isNotInRange(form.getEmail(), FieldValidation.RANGE_EMAIL)) {
			addFieldError("form.email", getText("error.email.length"));
		} else if (!Util.validateSpecialChar(form.getEmail())) {
			addFieldError("form.email", getText("error.email.chars.invalid"));
		}
		
		
		if (!form.getEmailConfirm().equalsIgnoreCase(form.getEmail())) {
			addFieldError("form.emailConfirm", getText("errors.emailConfirm.invalid"));
		}
		
		if (FieldValidation.isEmpty(form.getPassword())) {
			addFieldError("form.password", getText("error.required"));
		} else if(FieldValidation.isInvalidPassword(form.getPassword())) {
			addFieldError("form.password", getText("error.password.invalid"));
		}
		
		/*if (!form.getPasswordConfirm().matches(form.getPassword())) {
			addFieldError("form.passwordConfirm", getText("errors.passwordConfirm.invalid"));
		}*/
		if (!form.getPasswordConfirm().equals(form.getPassword())) {
			addFieldError("form.passwordConfirm", getText("errors.passwordConfirm.invalid"));
		}
		
		if (FieldValidation.isEmpty(form.getName().getFirst())) {
			addFieldError("form.name.first", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getName().getFirst(), FieldValidation.RANGE_NAME_FIRST)) {
			addFieldError("form.name.first", getText("error.name.length"));
		} else if(FieldValidation.isInvalidName(form.getName().getFirst(), "first name") == 1) {
			addFieldError("form.name.first", getText("errors.firstName.num.invalid"));
		} else if(FieldValidation.isInvalidName(form.getName().getFirst(), "first name") == 2) {
			addFieldError("form.name.first", getText("errors.firstName.chara.invalid"));
		} else if(FieldValidation.isInvalidName(form.getName().getFirst(), "first name") == 3) {
			addFieldError("form.name.first", getText("errors.firstName.end.invalid"));
		} 
		
		if (FieldValidation.isEmpty(form.getName().getLast())) {
			addFieldError("form.name.last", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getName().getLast(), FieldValidation.RANGE_NAME_LAST)) {
			addFieldError("form.name.last", getText("error.name.length"));
		} else if (FieldValidation.isInvalidName(form.getName().getLast(), "last name") == 1) {
			addFieldError("form.name.last", getText("errors.lastName.num.invalid"));
		} else if (FieldValidation.isInvalidName(form.getName().getLast(), "last name") == 2) {
			addFieldError("form.name.last", getText("errors.lastName.chara.invalid"));
		} else if (FieldValidation.isInvalidName(form.getName().getLast(), "last name") == 3) {
			addFieldError("form.name.last", getText("errors.lastName.end.invalid"));
		} else if (FieldValidation.isInvalidName(form.getName().getLast(), "last name") == 4) {
			addFieldError("form.name.last", getText("errors.lastName.suffix.invalid"));
		}
		 
		if (FieldValidation.isEmpty(form.getStreet1())) {
			addFieldError("form.street1", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getStreet1(), FieldValidation.RANGE_STREET1)) {
			addFieldError("form.street1", getText("error.street.length"));
		} else if (FieldValidation.isInvalidStreet(form.getStreet1(), "street 1") == 3) {
			addFieldError("form.street1", getText("errors.streetAddr.specialcase.invalid"));
		}   else if (FieldValidation.isInvalidStreet(form.getStreet1(), "street 1") == 1) {
			addFieldError("form.street1", getText("errors.streetAddr.format.invalid"));
		} else if (FieldValidation.isInvalidStreet(form.getStreet1(), "street 1") == 2) {
			addFieldError("form.street1", getText("errors.streetAddr.end.invalid"));
		} 
		
		if (FieldValidation.isNotInRange(form.getStreet2(), FieldValidation.RANGE_STREET2)) {
			addFieldError("form.street2", getText("error.street.length"));
		} else if (FieldValidation.isInvalidStreet(form.getStreet2(), "street 2") == 3 && form.getStreet2().length() > 0) {
			addFieldError("form.street2", getText("errors.streetAddr.specialcase.invalid"));
		}	
		else if(FieldValidation.isInvalidStreet(form.getStreet2(), "street 2") == 1 && form.getStreet2().length() > 0) {
			addFieldError("form.street2", getText("errors.streetAddr.format.invalid"));
		} else if(FieldValidation.isInvalidStreet(form.getStreet2(),  "street 2") == 2 && form.getStreet2().length() > 0) {
			addFieldError("form.street2", getText("errors.streetAddr.end.invalid"));
		}
		
		if (FieldValidation.isEmpty(form.getCity())) {
			addFieldError("form.city", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getCity(), FieldValidation.RANGE_CITY)) {
			addFieldError("form.city", getText("error.city.length"));
		} else if(FieldValidation.isInvalidCity(form.getCity()) == 1) {
			addFieldError("form.city", getText("errors.city.chara.invalid"));
		} else if(FieldValidation.isInvalidCity(form.getCity()) == 2) {
			addFieldError("form.city", getText("errors.city.end.invalid"));
		}
		
		if (FieldValidation.isEmpty(form.getState())) {
			addFieldError("form.state", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getState(), FieldValidation.RANGE_STATE)) {
			addFieldError("form.state", getText("error.state.length"));
		}
		
		if (FieldValidation.isEmpty(form.getPostalCode())) {
			addFieldError("form.postalCode", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getPostalCode(), FieldValidation.RANGE_POSTAL_CODE)) {
			addFieldError("form.postalCode", getText("errors.postalcode.invalid"));
		} else if(FieldValidation.isInvalidZip(form.getPostalCode())) {
			addFieldError("form.postalCode", getText("errors.postalcode.chara.invalid"));
		}
		
		
		if (FieldValidation.isEmpty(form.getCountry())) {
			addFieldError("form.country", getText("error.required"));
		} else if (FieldValidation.isNotInRange(form.getCountry(), FieldValidation.RANGE_COUNTRY)) {
			addFieldError("form.country", getText("error.country.length"));
		}
		if (FieldValidation.isEmpty(form.getDayPhone())) {
			addFieldError("form.dayPhone", getText("error.required"));
		}

		else if (FieldValidation.isNotInRange(form.getDayPhone(), FieldValidation.RANGE_PHONE)) {
			addFieldError("form.dayPhone", getText("errors.phone.invalid"));
		} else if (FieldValidation.isInvalidPhoneNumber(form.getDayPhone())) {
			addFieldError("form.dayPhone", getText("errors.phone.invalid"));
		}

		if (FieldValidation.isEmpty(form.getEveningPhone())) {
			addFieldError("form.eveningPhone", getText("error.required"));
		}

		else if (FieldValidation.isNotInRange(form.getEveningPhone(), FieldValidation.RANGE_PHONE)) {
			addFieldError("form.eveningPhone", getText("errors.phone.invalid"));
		} else if (FieldValidation.isInvalidPhoneNumber(form.getEveningPhone())) {
			addFieldError("form.eveningPhone", getText("errors.phone.invalid"));
		}
	}

	public String getAction() {
		return action;
	}

	/**
	 * Sets the action for the JSP form.
	 * 
	 * @param action
	 *            - the action to be set: account or register
	 */
	public void setAction(final String action) {
		this.action = action;
	}

	public Map<String, String> getUsStates() {
		return usStates;
	}

	public void setUsStates(final Map<String, String> usStates) {
		this.usStates = usStates;
	}

	public Map<String, String> getUsTerritories() {
		return usTerritories;
	}

	public void setUsTerritories(final Map<String, String> usTerritories) {
		this.usTerritories = usTerritories;
	}

	public Map<String, String> getCanadianProvinces() {
		return canadianProvinces;
	}

	public void setCanadianProvinces(final Map<String, String> canadianProvinces) {
		this.canadianProvinces = canadianProvinces;
	}

	public Map<String, String> getCanadianTerritories() {
		return canadianTerritories;
	}

	public void setCanadianTerritories(final Map<String, String> canadianTerritories) {
		this.canadianTerritories = canadianTerritories;
	}

	public Map<String, String> getEmptyMap() {
		return emptyMap;
	}

	public void setEmptyMap(final Map<String, String> emptyMap) {
		this.emptyMap = emptyMap;
	}

	private String ep;

	public String getEp() {
		return ep;
	}

	public void setEp(String ep) {
		this.ep = ep;
	}

}
