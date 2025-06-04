package com.flalottery.secondchance.action;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.LoginDAO;
import com.flalottery.secondchance.dao.PropDAO;
import com.flalottery.secondchance.dataobject.AuthDO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.PTA;
import com.flalottery.secondchance.domain.PTAProp;
import com.flalottery.secondchance.form.AccountForm;
import com.flalottery.secondchance.form.LoginForm;
import com.flalottery.secondchance.utility.FieldValidation;
import com.flalottery.secondchance.utility.RunTimeEnv;
import com.flalottery.secondchance.utility.SecondChanceURL;
import com.google.gson.Gson;

/**
 * Action for logging into and out of the application.
 * 
 */
public class SessionAction extends SecondChanceAction implements ServletRequestAware {

	private static final long serialVersionUID = -2965310606116248111L;
	private static final Logger logger = LoggerFactory.getLogger(SessionAction.class.getName());

	/**
	 * Set of struts.xml actions that are not redirectable
	 */
	private static final Set<String> NON_REDIRECTABLE_PAGES = new HashSet<String>(Arrays.asList("logout", "login",
			"registrationSubmit", "forgotPassword", "updatePassword", "login_mmc_App"));


	private LoginForm form = new LoginForm();
	private HttpServletRequest servletRequest;
	private String refererUrl = "";
	private String redirectUrl = getText("default.redirect");
	private String ptaUrl = "";
	private String ptaRedirect = "";
	private boolean forbiddenAccount = false;
	/**
	 * @see com.flalottery.secondchance.action.SecondChanceAction#prepare()
	 */
	@Override
	public void prepare() throws Exception {
		super.prepare();
		refererUrl = servletRequest.getHeader("Referer");
		ptaUrl = (String) this.session.get("ptaUrl");
		if (ptaUrl == null) {
			ptaUrl = servletRequest.getParameter("PtaUrl");
			session.put("ptaUrl", ptaUrl);
		}

		ptaRedirect = (String) this.session.get("ptaRedirect");
		if (ptaRedirect == null) {
			ptaRedirect = servletRequest.getParameter("Redirect");
			session.put("ptaRedirect", ptaRedirect);
		}
		
		
	}

	/**
	 * Login to the Second Chance Application. Puts LoginDO into session. Redirects
	 * to the originally requested page or the PTA url as applicable.
	 * 
	 * @return INPUT if email or password is incorrect in the DB. HOME if refererUrl
	 *         is in NON_REDIRECTABLE_PAGES. REDIRECT for all other refererUrls.
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String login() throws SQLException {			
		/* Auto Login */
		if (null != this.session.get("autoLogin")) {
			AccountForm accountForm = new AccountDAO().getAccount((Integer) this.session.get("autoLogin"));
			if (accountForm != null) {
				
				if (new LoginDAO().isEncryptedUserByEmail(form.getEmail())) {
					return ENFORCE_PASSWORD_CHANGE;
				} else {
					LoginDO loginDO = new LoginDO((Integer) this.session.get("autoLogin"),
							accountForm.getName(), accountForm.getStreet1(),
							accountForm.getStreet2(), accountForm.getCity(),
							accountForm.getState(),
							accountForm.getPostalCode(),
							accountForm.getEmail(), accountForm.getCountry(),
							accountForm.getDayPhone(),
							accountForm.getEveningPhone());
					this.session.put("loginDO", loginDO);
					return HOME;
				}
			}
		}
			
			String forward = INPUT;
			
		/* If the Form is submitted by user */
		if (form.isSubmitted()) {
			validate();
			logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" - User trying to log-in}");
			if (!this.hasErrors()) {
				/* @SDS - Get Encrypted Value @Updated - 08/08/2022 */
				int memebrId = new AccountDAO().accountAlreadyExists(form.getEmail().toUpperCase());	//aa@aa.com				
					if (memebrId != 0) {
						/* validating the account is marked as deleted */
						if(memebrId == 999999999  || new AccountDAO().checkRemoved(memebrId)) { 
							forbiddenAccount = true;
							addFieldError("form.email",getText("login.unauthorizedAccount"));
							logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" Removed / Unauthorized user}");
							return forward;
						}
						if (!new LoginDAO().isEncryptedUserByEmail(form.getEmail().toUpperCase())) {	
							addActionMessage(getText("login.enforcePasswordChange"));		
							logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" Password Change Required}");
							forward = ENFORCE_PASSWORD_CHANGE;
						}
				   } 
					
					final LoginDO loginDO = new LoginDAO().login(form);//
					if (null == loginDO) {
						logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" Failed Log-in Attempt}");
						messages.setPageTitle(getText("login.pageTitle",new String[] { Constants.PAGE_TITLE_BASE }));
						messages.setH1Title(getText("login.h1Title"));
						
						if (isRedirectable()) {
							// to store the originally requested page in case of an incorrect email or pwd
							logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" Redirectable URL -"+refererUrl+"}");
							this.session.put("refererUrl", refererUrl);
						}
						if (DatabaseStatusFlag.PWD.equals(form.getStatus())) {
							addFieldError("form.password",getText("error.invalid"));
							logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" Password was wrong ");

						} else if (DatabaseStatusFlag.EMAIL.equals(form.getStatus())) {
							addFieldError("form.email",getText("error.invalid"));
							logger.debug("{"+servletRequest.getSession().getId()+"-"+form.getEmail().toUpperCase()+" Email was wrong ");
						} else if(DatabaseStatusFlag.PASSWORD_CHANGE_REQUIRED.equals(form.getStatus())) { 
							/* @SDS - Get Encrypted Value @Updated - 08/08/2022 */
							//addFieldError("form.email","Update your password - using the 'Forgot Passowrd ?' link");
						}
					} else {
						this.session.put("loginDO", loginDO);

						// check for enable token
						Boolean isTokenEnabled = (getText("enable.token") != null && getText("enable.token").equals("true")) ? true : false;

						if (isTokenEnabled) {
							servletRequest.getSession(false).setAttribute("promo-url", getToken(form));
						}
						/* if (isRedirectable()) { redirectUrl = refererUrl; forward = REDIRECT; } else */
						if (null != this.session.get("refererUrl")) {
							redirectUrl = (String) this.session.get("refererUrl");
							forward = REDIRECT;
						} else if (!StringUtils.isBlank(ptaUrl) && !StringUtils.isBlank(ptaRedirect)) {
							if (loginDO != null) {
								loginDO.setSessionId(servletRequest.getSession().getId());
							}
							redirectUrl = PTA.buildPtaRedirectUrl(loginDO,ptaUrl, ptaRedirect);
							logger.debug("Code Log 10/07/2022 - Statring the Login Process - PTA is build "+redirectUrl);
							System.out.println("Code Log 10/07/2022 - Statring the Login Process - PTA is build "+redirectUrl);
							session.remove("ptaUrl");
							session.remove("ptaRedirect");

							// for testing bug in their code:
							String theRedirect = redirectUrl;
							redirectUrl = "redirectToThirdParty.jsp?theRedirect="+ theRedirect;
							forward = REDIRECT;
						} else {
							forward = HOME;
						}
						this.session.remove("refererUrl");
					}
				 }
			  }
		  
		
		return forward;
	}

	/**
	 * Form validation
	 */
	@Override
	public void validate() {
		if (form.getEmail().isEmpty() || form.getPassword().isEmpty()) {
			if (form.getEmail().isEmpty()) {
				addFieldError("form.email", getText("error.email.required"));
			}
			if (form.getPassword().isEmpty()) {
				addFieldError("form.password", getText("error.password.required"));
			}
		} else if (form.getEmail().length() > 150) {
			addFieldError("form.email", getText("error.invalid"));
		} else if (!form.getEmail().matches(FieldValidation.EMAIL_PATTERN.toString())) {
			addFieldError("form.email", getText("error.invalid"));
		} else if (form.getPassword().length() > 16) {
			addFieldError("form.password", getText("error.invalid"));
		}
		
	}

	/**
	 * Login to the Second Chance Application in mmcApp brand. Puts LoginDO into
	 * session. Redirects to the originally requested page or the PTA url as
	 * applicable.
	 * 
	 * @return INPUT if email or password is incorrect in the DB. HOME if refererUrl
	 *         is in NON_REDIRECTABLE_PAGES. REDIRECT for all other refererUrls.
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String login_mmc_App() throws SQLException {
		String forward = INPUT;
		if (form.isSubmitted()) {
			validate();
			if (!this.hasErrors()) {
				final LoginDO loginDO = new LoginDAO().login(form);
				if (null == loginDO) {
					// messages.setPageTitle(getText("login.pageTitle", new String[] {
					// Constants.PAGE_TITLE_BASE }));
					// messages.setH1Title(getText("login.h1Title"));
					if (isRedirectable()) {
						// to store the originally requested page in case of an
						// incorrect email or pwd
						this.session.put("refererUrl", refererUrl);
					}
					if (DatabaseStatusFlag.PWD.equals(form.getStatus())) {
						addFieldError("form.password", getText("error.invalid"));
					} else if (DatabaseStatusFlag.EMAIL.equals(form.getStatus())) {
						addFieldError("form.email", getText("error.invalid"));
					}
				} else {
					this.session.put("loginDO", loginDO);

					if (isRedirectable()) {
						redirectUrl = refererUrl;
						forward = REDIRECT;
					} else if (null != this.session.get("refererUrl")) {
						redirectUrl = (String) this.session.get("refererUrl");
						forward = REDIRECT;
					} else if (!StringUtils.isBlank(ptaUrl) && !StringUtils.isBlank(ptaRedirect)) {
						if (loginDO != null) {
							loginDO.setSessionId(servletRequest.getSession().getId());
						}
						redirectUrl = PTA.buildPtaRedirectUrl(loginDO, ptaUrl, ptaRedirect);
						session.remove("ptaUrl");
						session.remove("ptaRedirect");
						forward = REDIRECT;
					} else {
						forward = HOME;
					}
					this.session.remove("refererUrl");
				}
			}
		}
		return forward;
	}

	/**
	 * Logs the player out. Clears session.
	 * 
	 * @return MESSAGE - the message page telling the player they have been logged
	 *         out.
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	@SkipValidation
	public String logout() throws Exception {
		session.clear();
		messages.setPageTitle(getText("logout.pageTitle", new String[] { Constants.PAGE_TITLE_BASE }));
		messages.setH1Title(getText("logout.h1Title"));
		messages.setMessage(getText("logout.message"));
		if (!StringUtils.isBlank(ptaRedirect)) {
			logger.info("ptaRedirect: " + ptaRedirect);
			redirectUrl = ptaRedirect;
		}
		if (!getRedirectUrl().equals(getText("default.redirect"))) {
			return REDIRECT;
		}
		return MESSAGE;
	}

	public LoginForm getForm() {
		return this.form;
	}

	public void setForm(final LoginForm form) {
		this.form = form;
	}

	/**
	 * Note: This method is used by the struts.xml
	 * 
	 * @return the redirectUrl
	 */
	public String getRedirectUrl() {
		return redirectUrl;
	}

	public String getRefererUrl() {
		return this.refererUrl;
	}

	/**
	 * Returns true if the original page that was requested is not in
	 * {@link com.flalottery.secondchance.action.SessionAction#NON_REDIRECTABLE_PAGES
	 * NON_REDIRECTABLE_PAGES}
	 * 
	 * @return - true if page is redirectable, false otherwise.
	 */
	private Boolean isRedirectable() {
		return !NON_REDIRECTABLE_PAGES.contains(SecondChanceURL.getRelativeUrl(getRefererUrl()));
	}

	@Override
	public void setServletRequest(final HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public void setRedirectUrl(final String redirectUrl) {
		this.redirectUrl = redirectUrl;
	}

	public String getPtaUrl() {
		return ptaUrl;
	}

	public void setPtaUrl(String ptaUrl) {
		this.ptaUrl = ptaUrl;
	}

	public String getPtaRedirect() {
		return ptaRedirect;
	}

	public void setPtaRedirect(String ptaRedirect) {
		this.ptaRedirect = ptaRedirect;
	}

	private String getToken(LoginForm form) {

		String rUrl = "";
		try {
			String url = "/1.0/account/login";

			String envType = RunTimeEnv.getEnvType();
			if (envType.equals(RunTimeEnv.PROD)) {
				url = getText("api.prod.url") + url;
			} else if (envType.equals(RunTimeEnv.QA)) {
				url = getText("api.test.url") + url;
			} else {
				url = getText("api.test.url") + url;
			}
			
			System.out.println("Session Action getToken is going to Mobile URL  : - "+url);
			logger.debug("Session Action getToken is going to Mobile URL  : - "+url);
			
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Content-Type", "application/json");
			String postJsonData = "{\"email\": \"" + form.getEmail() + "\",\"password\":\"" + form.getPassword()
					+ "\"}";

			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(postJsonData);
			wr.flush();
			wr.close();

			int responseCode = con.getResponseCode();

			if (responseCode == 200) {

				BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
				String output;
				StringBuffer response = new StringBuffer();

				while ((output = in.readLine()) != null) {
					response.append(output);
				}
				in.close();

				Gson gson = new Gson();

				AuthDO loginDO = gson.fromJson(response.toString(), AuthDO.class);

				String value = "{\"token\":\"" + loginDO.getToken() + "\",\"playerId\":\""
						+ loginDO.getLoginDO().getPlayerId() + "\"}";

				PTAProp ptaProp = new PropDAO().getPTAKey(getText("pta.key"));
				final byte[] aesKeyBytes = javax.xml.bind.DatatypeConverter.parseHexBinary(ptaProp.getKeyAes());
				final SecretKeySpec key = new SecretKeySpec(aesKeyBytes, PTA.ENCRYPT_ALGORITHM);
				final Cipher cipher = Cipher.getInstance(PTA.ENCRYPT_TRANSFORMATION);
				final SecureRandom rnd = SecureRandom.getInstance(PTA.SECURE_RANDOM_ALGORITHM);
				cipher.init(Cipher.ENCRYPT_MODE, key, rnd);
				final byte[] encrypted = cipher.doFinal(PTA.addZeroBytePadding(value, cipher.getBlockSize()));
				rUrl = "&Hash=" + PTA.calculateHmac(Base64.encodeBase64String(encrypted), ptaProp.getKeyHmac()) + "&Iv="
						+ URLEncoder.encode(Base64.encodeBase64String(cipher.getIV()), PTA.CHARACTER_ENCODING)
						+ "&Data=" + URLEncoder.encode(Base64.encodeBase64String(encrypted), PTA.CHARACTER_ENCODING);
				logger.debug("PTA sessionAction decoded:::: "+ ptaProp + " Final URL::::: "+ rUrl);
				System.out.println("PTA sessionAction decoded:::: "+ ptaProp + " Final URL::::: "+ rUrl);		
			
			}
		} catch (MalformedURLException e) {
			logger.error("MalformedURLException: " + e.getMessage());
			e.printStackTrace();
		} catch (ProtocolException e) {
			logger.error("ProtocolException: " + e.getMessage());
			e.printStackTrace();
		} catch (IOException e) {
			logger.error("IOException: " + e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			logger.error("Exception: " + e.getMessage());
			e.printStackTrace();
		}
		return rUrl;

	}

}
