package com.flalottery.secondchance.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.StringWriter;
import java.net.URL;
import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.ForgotPasswordDAO;
import com.flalottery.secondchance.dataobject.ForgotPasswordDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.Mailer;
import com.flalottery.secondchance.form.ForgotPasswordForm;
import com.flalottery.secondchance.utility.FieldValidation;
import com.flalottery.secondchance.utility.Util;

/**
 * Action for password retrieval.
 * 
 */
public class ForgotPasswordAction extends SecondChanceAction implements ServletRequestAware {

	private static final long serialVersionUID = 1L;

	private ForgotPasswordForm form = new ForgotPasswordForm();
	protected HttpServletRequest request;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	@Override
	public void prepare() throws Exception {
		super.prepare();
		messages.setPageTitle(getText("forgotPassword.pageTitle"));
		messages.setH1Title(getText("forgotPassword.h1Title"));
	}

	@Override
	@SkipValidation
	public String execute() throws Exception {
		String forward = INPUT;
		if (form.isSubmitted()) {
			validate();
		}
		return forward;
	}


	public String validateOTP() throws SQLException, AddressException, MessagingException {
		
		validate();

		if (this.hasErrors()) {
			return INPUT;
		}

		if (FieldValidation.isEmpty(form.getOtp())) {
			addFieldError("form.otp", getText("error.otp.required"));
			return INPUT;
		}
		// validate OTP
		int memberId = new AccountDAO().accountAlreadyExists(form.getEmail());
		//boolean valid = new AccountDAO().validateOTP(memberId, form.getOtp());
		int validCode = new AccountDAO().checkOTP(memberId, form.getOtp());
		if (validCode != 0) {
			if (validCode == 1) {
				addActionError("Verification Code is invalid.");
			} else if (validCode == 2) {
				addActionError("Verification Code expired.");
			} else {
				addActionError("Verification Code is invalid or expired.");
			} 
			return INPUT;
		} else {
			request.getSession().setAttribute("MEMBER_ID", memberId);
			return SUCCESS;
		}
	}

	
	public String mailOTP() throws Exception {
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}

		// validate email (is Complete Registartion?)
		int memberId = new AccountDAO().accountAlreadyExists(form.getEmail());
		boolean forbiddenAccount = false;
		if (memberId != 0) {
			boolean completed = new AccountDAO().isRegCompleted(form.getEmail());
			if (completed) {
				if (form.getSubmitFlag().equals("Submit")) {
					String otp = new AccountDAO().setOTP(memberId);

					Mailer.sendHTMLMessage("registration@flalottery.com",
							"Florida Lottery Registration - Verification Code", form.getEmail(), getEmailContent(otp));
				}
				messages.setMessage(getText("forgotPassword.otp.message.success", new String[] { form.getEmail() }));
				return "success";
			} 
			else if (memberId == 999999999  || new AccountDAO().checkRemoved(memberId)) { 
				forbiddenAccount = true;
				addFieldError("form.email",getText("forgotPassword.unauthorizedAccount"));
				return INPUT;
			}
			else {
				addActionError(getText("forgotPassword.reg.not.complete.message", new String[] { form.getEmail() }));
				return INPUT;
			}
		} else {
			addActionError(getText("forgotPassword.notFound.message", new String[] { form.getEmail() }));
			return INPUT;
		}

	}
	
	
	@Override
	public void validate() {
		if (!form.getEmail().matches(FieldValidation.EMAIL_PATTERN.toString())) {
			addFieldError("form.email", getText("forgotPassword.error.email.required"));
		}
		if (form.getEmail().length() > 150) {
			addFieldError("form.email", getText("error.email.length"));
		}
		
		if (!Util.validateSpecialChar(form.getEmail())) {
			addFieldError("form.email", getText("forgotPassword.error.email.chars.invalid"));
		}
	}

	public ForgotPasswordForm getForm() {
		return this.form;
	}

	public void setForm(final ForgotPasswordForm form) {
		this.form = form;
	}
	
	private String getEmailContent(String otp) throws Exception {
		StringWriter writer = new StringWriter();

		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		URL url = classLoader.getResource("confirmationEmail-FF.html");
		IOUtils.copy(new FileInputStream(new File(url.getPath())), writer);
		String content = writer.toString();
		content = content.replaceAll("OTP_ENTRY", otp);
		return content;
	}
}
