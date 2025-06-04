package com.flalottery.secondchance.action;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.EmailPrefsDAO;
import com.flalottery.secondchance.form.EmailPrefsForm;

/**
 * Action for creating, reading, updating, and deleting email preferences.
 * 
 */
public class EmailPrefsAction extends SecondChanceAction {

	private static final Logger logger = LoggerFactory.getLogger(EmailPrefsAction.class);

	private static final long serialVersionUID = -4607541854183188903L;

	private EmailPrefsForm form = new EmailPrefsForm();
	private final EmailPrefsDAO dao = new EmailPrefsDAO();

	@Override
	public String execute() throws Exception {

		messages.setH1Title(getText("emailPrefs.h1Title"));
		return control(dao.hasEmailOptInsId(getLoginDO().getPlayerId()), form.isSubmitted(), form.isDeleted());
	}

	@Override
	protected String create() throws SQLException {
		messages.setPageTitle(getText("emailPrefs.submit.pageTitle"));
		if (dao.create(getLoginDO().getPlayerId(), form)) {
			messages.setMessage(getText("emailPrefs.create.message.success"));
		}
		else {
			messages.setMessage(getText("emailPrefs.create.message.failure"));
		}
		logger.debug("Create Message " + MESSAGE);
		return MESSAGE;
	}

	@Override
	protected String read() throws SQLException {
		messages.setPageTitle(getText("emailPrefs.pageTitle"));
		dao.read(getLoginDO().getPlayerId(), form);
		return SUCCESS;
	}

	@Override
	protected String other() {
		messages.setPageTitle(getText("emailPrefs.pageTitle"));
		return SUCCESS;
	}

	@Override
	protected String update() throws SQLException {
		messages.setPageTitle(getText("emailPrefs.submit.pageTitle"));
		try{
			if (dao.update(getLoginDO().getPlayerId(), form)) {
				messages.setMessage(getText("emailPrefs.update.message.success"));
			}
			else {
				messages.setMessage(getText("emailPrefs.update.message.failure"));
			}
		}
		catch(Exception e ){
			e.printStackTrace();

		}




		return MESSAGE;
	}

	@Override
	protected String delete() throws SQLException {
		messages.setPageTitle(getText("emailPrefs.submit.pageTitle"));
		if (dao.update(getLoginDO().getPlayerId(), form)) {
			messages.setMessage(getText("emailPrefs.delete.message.success"));
		}
		// @TODO This else is is really difficult to cover in a test.
		else {
			messages.setMessage(getText("emailPrefs.delete.message.failure"));
		}
		return MESSAGE;
	}

	public EmailPrefsForm getForm() {
		return this.form;
	}

	public void setForm(final EmailPrefsForm form) {
		this.form = form;
	}

}
