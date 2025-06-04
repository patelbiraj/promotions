package com.flalottery.secondchance.action;

import java.util.Collections;
import java.util.Map;

import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.DropDowns;
import com.flalottery.secondchance.form.AccountForm;
import com.flalottery.secondchance.utility.FieldValidation;

/**
 * Action for creating a new account or reading, updating, or deleting an
 * existing account.
 * 
 */
public final class Account_mmcApp_Action extends SecondChanceAction {

	private static final Logger logger = LoggerFactory.getLogger(AccountAction.class);
	private static final long serialVersionUID = 2384714968375990058L;

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
		return control(session.containsKey("loginDO"), form.isSubmitted(), false);
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
		setAction(Constants.REGISTER);
		//messages.setPageTitle(getText("register.pageTitle"));
		//messages.setH1Title(getText("register.h1Title"));
		return INPUT;
	}


	/**
	 * Creates a new account in the database.
	 * 
	 * @return - MESSAGE if form validation passes, else INPUT
	 * @throws - thrown if a system level exception occurs.
	 */
	@Override
	protected String create() throws Exception {
		setAction(Constants.REGISTER);
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}
		//messages.setPageTitle(getText("registration.confirmation.pageTitle"));
		//messages.setH1Title(getText("registration.confirmation.h1Title"));
		messages.setMessage(getText("registration.confirmation.message.failure", new String[] { form.getEmail() }));
		final DatabaseStatusFlag status = new AccountDAO().newRegistration(form);
		if (DatabaseStatusFlag.SUCCESS.equals(status)) {
			//messages.setMessage(getText("registration.confirmation.message.success", new String[] { form.getEmail() }));
		}
		else if (DatabaseStatusFlag.DUPLICATE.equals(status)) {
			//messages.setMessage(getText("registration.confirmation.message.duplicate", new String[] { form.getEmail() }));
		}
		//return MESSAGE_NO_LOGIN;
		return SUCCESS;
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
		}
		else if (FieldValidation.isInvalidEmail(form.getEmail())) {
			addFieldError("form.email", getText("error.email.required"));
		}
		else if (FieldValidation.isNotInRange(form.getEmail(), FieldValidation.RANGE_EMAIL)) {
			addFieldError("form.email", getText("error.email.length"));
		}
		if (!form.getEmailConfirm().equals(form.getEmail())) {
			addFieldError("form.emailConfirm", getText("errors.emailConfirm.invalid"));
		}
		if (FieldValidation.isEmpty(form.getPassword())) {
			addFieldError("form.password", getText("error.password.required"));
		}
		else if (FieldValidation.isNotInRange(form.getPassword(), FieldValidation.RANGE_PASSWORD)) {
			addFieldError("form.password", getText("error.password.length"));
		}
		if (!form.getPasswordConfirm().matches(form.getPassword())) {
			addFieldError("form.passwordConfirm", getText("errors.passwordConfirm.invalid"));
		}
		if (FieldValidation.isEmpty(form.getName().getFirst())) {
			addFieldError("form.name.first", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getName().getFirst(), FieldValidation.RANGE_NAME_FIRST)) {
			addFieldError("form.name.first", getText("error.name.length"));
		}
		if (FieldValidation.isEmpty(form.getName().getLast())) {
			addFieldError("form.name.last", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getName().getLast(), FieldValidation.RANGE_NAME_LAST)) {
			addFieldError("form.name.last", getText("error.name.length"));
		}
		if (FieldValidation.isEmpty(form.getStreet1())) {
			addFieldError("form.street1", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getStreet1(), FieldValidation.RANGE_STREET1)) {
			addFieldError("form.street1", getText("error.street.length"));
		}
		if (FieldValidation.isNotInRange(form.getStreet2(), FieldValidation.RANGE_STREET2)) {
			addFieldError("form.street2", getText("error.street.length"));
		}
		if (FieldValidation.isEmpty(form.getCity())) {
			addFieldError("form.city", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getCity(), FieldValidation.RANGE_CITY)) {
			addFieldError("form.city", getText("error.city.length"));
		}
		if (FieldValidation.isEmpty(form.getState())) {
			addFieldError("form.state", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getState(), FieldValidation.RANGE_STATE)) {
			addFieldError("form.state", getText("error.state.length"));
		}
		if (FieldValidation.isEmpty(form.getPostalCode())) {
			addFieldError("form.postalCode", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getPostalCode(), FieldValidation.RANGE_POSTAL_CODE)) {
			addFieldError("form.postalCode", getText("errors.postalcode.invalid"));
		}
		if (FieldValidation.isEmpty(form.getCountry())) {
			addFieldError("form.country", getText("error.required"));
		}
		else if (FieldValidation.isNotInRange(form.getCountry(), FieldValidation.RANGE_COUNTRY)) {
		//	addFieldError("form.country", getText("error.country.length"));
		}
		if (FieldValidation.isEmpty(form.getDayPhone())) {
			addFieldError("form.dayPhone", getText("error.required"));
		}

		else if (FieldValidation.isNotInRange(form.getDayPhone(), FieldValidation.RANGE_PHONE)) {
			addFieldError("form.dayPhone", getText("errors.phone.invalid"));
		}
		else if (FieldValidation.isInvalidPhoneNumber(form.getDayPhone())) {
			addFieldError("form.dayPhone", getText("errors.phone.invalid"));
		}

		if (FieldValidation.isEmpty(form.getEveningPhone())) {
			addFieldError("form.eveningPhone", getText("error.required"));
		}

		else if (FieldValidation.isNotInRange(form.getEveningPhone(), FieldValidation.RANGE_PHONE)) {
			addFieldError("form.eveningPhone", getText("errors.phone.invalid"));
		}
		else if (FieldValidation.isInvalidPhoneNumber(form.getEveningPhone())) {
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

}
