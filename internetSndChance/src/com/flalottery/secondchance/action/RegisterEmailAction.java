package com.flalottery.secondchance.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.apache.struts2.util.ServletContextAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.flalottery.secondchance.domain.*;
import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.LoginDAO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.DropDowns;
import com.flalottery.secondchance.form.AccountForm;
import com.flalottery.secondchance.utility.FieldValidation;
import com.flalottery.secondchance.utility.Util;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

/**
 * Action for creating a new account or reading, updating, or deleting an
 * existing account.
 * 
 */
public final class RegisterEmailAction extends SecondChanceAction
		implements ServletContextAware, SessionAware, Preparable, ServletRequestAware {

	private static final Logger logger = LoggerFactory.getLogger(RegisterEmailAction.class);
	private static final long serialVersionUID = 2384714968375990058L;
	protected HttpServletRequest request;

	private AccountForm form = new AccountForm();

	@Override
	@SkipValidation
	public String execute() throws Exception {
		
		return "success";
	}

	@SkipValidation
	public String executeEmail() throws Exception {
		return "success";
	}

	@SkipValidation
	public String confirm() throws Exception {

			int memberId = new AccountDAO().checkConfirmed(form.getEmail());
			if (memberId != 0) {
				form.setAccountWhatIsNew(Constants.ON);
				form.setQuickCreateConfirm(Constants.YES);
				new AccountDAO().confirmAccount(memberId, form);

				messages.setMessage(getText("registration.after.confirmation.message.success"));

			} else {
				messages.setMessage(getText("registration.already.confirmation.message"));
			}

		return "success";
	}

	public String submit() throws Exception {
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}
		
		request.getSession().setAttribute("regType", "EMAIL");
		messages.setPageTitle(getText("registration.confirmation.pageTitle"));
		messages.setH1Title(getText("registration.confirmation.h1Title"));
		messages.setMessage(getText("registration.confirmation.message.failure", new String[] { form.getEmail() }));

		// set params
		form.setAccountWhatIsNew(Constants.OFF);
		form.setQuickCreate(Constants.YES);
		form.setQuickCreateConfirm(Constants.NO);
		form.setRegComplete(Constants.NO);

		final DatabaseStatusFlag status = new AccountDAO().newRegistration(form);
		int memberId = new AccountDAO().accountAlreadyExists(form.getEmail());
		String otp = "";
		
		if(form.getSubmitFlag().equals("Submit")) {
			otp = new AccountDAO().setOTP(memberId);
		}
		
		if (DatabaseStatusFlag.SUCCESS.equals(status)) {
			if(form.getSubmitFlag().equals("Submit")) {
			messages.setMessage(getText("registration.continue.message.success", new String[] { form.getEmail() }));
			Mailer.sendHTMLMessage("registration@flalottery.com", "Florida Lottery Registration - Verification Code", form.getEmail(), getEmailContent(otp));
			} else {
				messages.setMessage(getText("registration.continue.message.success", new String[] { form.getEmail() }));
			}
			
			// Make the entry into the MEMBER_PROFILE_SECURITY
			new LoginDAO().securityEncryptionCompleted(memberId,form.getEmail().toString());
		} else if (DatabaseStatusFlag.DUPLICATE.equals(status)) {
			AccountForm aform = new AccountDAO().getAccount(memberId);
			if (aform.getQuickCreateConfirm() != null && aform.getQuickCreateConfirm().equals("Y")) {

				
				String completeStatus =new AccountDAO().isRegCompleted(form); 
				boolean complete = false;
				if (completeStatus != null && completeStatus.equalsIgnoreCase("Y")) {
					complete = true;
				}
				if (!complete) {
					messages.setMessage(getText("registration.confirmation.message.duplicate", new String[] { form.getEmail() }));
				} else {
					messages.setMessage(getText("registration.already.completed", new String[] { form.getEmail() }));
				}
				return MESSAGE;
			} else {
				if(form.getSubmitFlag().equals("Submit")) {
				messages.setMessage(getText("registration.not.confirm.message", new String[] { form.getEmail() }));
				Mailer.sendHTMLMessage("registration@flalottery.com", "Florida Lottery Registration - Verification Code", form.getEmail(), getEmailContent(otp));
				} else {
					messages.setMessage(getText("registration.continue.message.success", new String[] { form.getEmail() }));
				}
			}
			return "success";
		}
		return "success";
	}

	public String submitEmail() throws Exception {
		validate();
		if (this.hasErrors()) {
			return INPUT;
		}
		request.getSession().setAttribute("regType", "FULL");
		messages.setPageTitle(getText("registration.confirmation.pageTitle"));
		messages.setH1Title(getText("registration.confirmation.h1Title"));
		messages.setMessage(getText("registration.confirmation.message.failure", new String[] { form.getEmail() }));

		// validate email (is Complete Registartion?)
		String completeStatus = new AccountDAO().isRegCompleted(form);
		boolean complete = false;
		if(completeStatus != null  && completeStatus.equalsIgnoreCase("Y")) {
				complete = true;
		}
		
		if (!complete) {

			// set params
			form.setAccountWhatIsNew(Constants.OFF);
			form.setQuickCreate(Constants.NO);
			form.setQuickCreateConfirm(Constants.NO);
			form.setRegComplete(Constants.NO);

			final DatabaseStatusFlag status = new AccountDAO().newRegistration(form);
			
			int memberId = new AccountDAO().accountAlreadyExists(form.getEmail());
			
			if(completeStatus.equalsIgnoreCase("D")) {
	            messages.setMessage(getText("registration.unauthorizedAccount"));
	            return MESSAGE;
	        }
			
			if(form.getSubmitFlag().equals("Submit")) {
			// Make the entry into the MEMBER_PROFILE_SECURITY
			new LoginDAO().securityEncryptionCompleted(memberId,form.getEmail().toString(),"N","N");
			String otp = new AccountDAO().setOTP(memberId);
			Mailer.sendHTMLMessage("registration@flalottery.com", "Florida Lottery Registration - Verification Code", form.getEmail(), getEmailContent(otp));
			}
			messages.setMessage(getText("registration.continue.message.success", new String[] { form.getEmail() }));
			return "success";
		} 
				
		else {
			messages.setMessage(getText("registration.already.completed", new String[] { form.getEmail() }));
			return MESSAGE;
		}

	}

	public String registerOC() throws Exception {

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
		}
		
		request.getSession().setAttribute("email", form.getEmail());
		
		String forward = "success";
		if(request.getSession(false).getAttribute("regType") != null){
			String s = (String) request.getSession(false).getAttribute("regType");
			if(s.equals("FULL")) {
				forward = "success";
			} 
			
			if(s.equals("EMAIL")) {
				forward = "emailConfirm";
				int mId = new AccountDAO().checkConfirmed(form.getEmail());
				if(mId != 0) {
					form.setAccountWhatIsNew(Constants.ON);
					form.setQuickCreateConfirm(Constants.YES);
					new AccountDAO().confirmAccount(memberId, form);
					
					messages.setMessage(getText("registration.after.confirmation.message.success"));
					
				} else {
					messages.setMessage(getText("registration.already.confirmation.message"));
				}
				
				
			}
		} 
		
		return forward;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
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
	}

	private String ep;

	public String getEp() {
		return ep;
	}

	public void setEp(String ep) {
		this.ep = ep;
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

	private String getServerUrl(HttpServletRequest request) {
		int serverPort = request.getServerPort();
		String serverUrl;
		if ((serverPort == 80) || (serverPort == 443)) {
			serverUrl = String.format("%s://%s%s", request.getScheme(), request.getServerName(),
					request.getContextPath());
		} else {
			serverUrl = String.format("%s://%s:%d%s", request.getScheme(), request.getServerName(), serverPort,
					request.getContextPath());
		}
		return serverUrl;
	}

}
