package com.flalottery.secondchance.action;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.TextPrefsDAO;
import com.flalottery.secondchance.domain.TextMessagingProvider;
import com.flalottery.secondchance.form.TextPrefsForm;
import com.flalottery.secondchance.utility.FieldValidation;

/**
 * Action for creating, reading, updating, and deleting text messaging
 * preferences.
 * 
 */
public class TextPrefsAction extends SecondChanceAction {

	private static final Logger logger = LoggerFactory.getLogger(TextPrefsAction.class);
	private static final long serialVersionUID = -2357747506506753288L;

	private TextPrefsForm form = new TextPrefsForm();
	private final TextPrefsDAO dao = new TextPrefsDAO();
	private Map<String, String> textMessagingProviders = TextMessagingProvider.getTextMessagingProviders();
	private Boolean hasMemberSmsId = false;

	@Override
	@SkipValidation
	public String execute() throws Exception {
		messages.setH1Title(getText("textPrefs.h1Title"));
		setHasMemberSmsId(dao.hasMemberSmsId(getLoginDO().getPlayerId()));
		return control(getHasMemberSmsId(), form.isSubmitted(), form.isDeleted());
	}

	@Override
	protected String create() throws Exception {
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}
		messages.setPageTitle(getText("textPrefs.submit.pageTitle"));
		if (dao.create(getLoginDO().getPlayerId(), form)) {
			messages.setMessage(getText("textPrefs.create.message.success"));
		}
		else {
			messages.setMessage(getText("textPrefs.create.message.failure"));
		}
		return MESSAGE;
	}

	@Override
	protected String read() throws Exception {
		messages.setPageTitle(getText("textPrefs.pageTitle"));
		dao.read(getLoginDO().getPlayerId(), form);
		return INPUT;
	}

	@Override
	protected String other() throws Exception {
		messages.setPageTitle(getText("textPrefs.pageTitle"));
		return INPUT;
	}

	@Override
	protected String update() throws Exception {
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}
		messages.setPageTitle(getText("textPrefs.submit.pageTitle"));
		if (dao.update(getLoginDO().getPlayerId(), form)) {
			messages.setMessage(getText("textPrefs.update.message.success"));
		}
		else {
			messages.setMessage(getText("textPrefs.update.message.failure"));
		}
		return MESSAGE;
	}

	@Override
	protected String delete() throws Exception {
		messages.setPageTitle(getText("textPrefs.submit.pageTitle"));
		if (dao.delete(getLoginDO().getPlayerId())) {
			messages.setMessage(getText("textPrefs.delete.message.success"));
		}
		else {
			messages.setMessage(getText("textPrefs.delete.message.failure"));
		}
		return MESSAGE;
	}

	@Override
	public void validate() {
		final Pattern p = Pattern.compile("^(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]+)$");
		final Matcher m = p.matcher(form.getOther());
		if (form.getPhone().isEmpty()) {
			addFieldError("form.phone", getText("errors.mobile.required"));
		}
		else if (FieldValidation.isInvalidPhoneNumber(form.getPhone())) {
			addFieldError("form.phone", getText("errors.mobile.invalid"));
		}
		if (!form.getPhoneConfirm().equals(form.getPhone())) {
			addFieldError("form.phoneConfirm", getText("errors.mobileConfirm.invalid"));
		}
		if (form.getDomain().equals("-1")) {
			addFieldError("form.domain", getText("errors.domain.select"));
		}
		else if (form.getDomain().isEmpty()) {
			if (form.getOther().isEmpty()) {
				addFieldError("form.other", getText("errors.other.empty"));
			}
			else if (!m.matches()) {
				addFieldError("form.other", getText("errors.other.invalid"));
			}
		}

		if (!getHasMemberSmsId()) {
			if (!form.getEvening() && !form.getMidday() && !form.getNight() && !form.getWhatIsNew()) {
				addFieldError("form.night", getText("errors.options.select"));
			}
		}

	}

	public Map<String, String> getTextMessagingProviders() {
		return textMessagingProviders;
	}

	public void setTextMessagingProviders(final Map<String, String> textMessagingProviders) {
		this.textMessagingProviders = textMessagingProviders;
	}

	public TextPrefsForm getForm() {
		return form;
	}

	public void setForm(final TextPrefsForm form) {
		this.form = form;
	}

	public Boolean getHasMemberSmsId() {
		return hasMemberSmsId;
	}

	public void setHasMemberSmsId(final Boolean hasMemberSmsId) {
		this.hasMemberSmsId = hasMemberSmsId;
	}

}
