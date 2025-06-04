package com.flalottery.secondchance.action;

import java.sql.SQLException;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.form.RemoveAccountForm;
import com.flalottery.secondchance.utility.FieldValidation;

public class RemoveAccountAction extends SecondChanceAction{

	private static final Logger logger = LoggerFactory.getLogger(EmailPrefsAction.class);

	private static final long serialVersionUID = -4607541854183188903L;

	private RemoveAccountForm form = new RemoveAccountForm();
	private final AccountDAO accountDao = new AccountDAO();
	
	@Override
	public String execute() throws Exception {
		messages.setH1Title(getText("removeAccount.h1Title"));
		return control(accountDao.accountAlreadyExists(getLoginDO().getEmail()) != 0, form.isSubmitted(), form.isDeleted());
	}

	@Override
	protected String read() throws SQLException {
		messages.setPageTitle(getText("removeAccount.pageTitle"));
		form.setEmailAddress(getLoginDO().getEmail().toUpperCase());
		return SUCCESS;
	}

	
	

	@Override
	protected String update() throws SQLException {
		messages.setPageTitle(getText("removeAccount.submit.pageTitle"));
		
		if (FieldValidation.isEmpty(form.getEmailAddress().toUpperCase().trim())) {
			addFieldError("form.emailAddress", getText("removeAccount.emailRequired"));
		} else if (FieldValidation.isEmpty(form.getEmailAddressConfirm().toUpperCase().trim())) {
			addFieldError("form.emailAddressConfirm", getText("removeAccount.emailRequiredConfirm"));
		} else if (!form.getEmailAddress().toUpperCase().trim().equalsIgnoreCase(form.getEmailAddressConfirm().toUpperCase().trim())) {
			addFieldError("form.emailAddressConfirm", getText("removeAccount.emailDoNotMatch"));
		} else if(!form.isAgreeCheckBox()){
			addFieldError("form.agreeCheckBox",  getText("removeAccount.aggrementConfirm"));
		}
		
		if (this.hasErrors()) {
			return INPUT;
		}
		
		if(DatabaseStatusFlag.SUCCESS.equals(new AccountDAO().removeAccountFromWebSite(getLoginDO().getPlayerId(), "W"))){			
			messages.setMessage(getText("removeAccount.confirmationMsg"));
			session.clear();
			return "logout";
		} else {
			messages.setMessage(getText("emailPrefs.delete.message.failure"));
		}
		return MESSAGE;
	}

	public RemoveAccountForm getForm() {
		return this.form;
	}

	public void setForm(final RemoveAccountForm form) {
		this.form = form;
	}
		
}
