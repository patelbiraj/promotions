package com.flalottery.secondchance.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.util.ServletContextAware;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.LoginDAO;
import com.flalottery.secondchance.dao.TicketEntryDAO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Name;
import com.flalottery.secondchance.domain.Promotion;
import com.flalottery.secondchance.form.AccountForm;
import com.opensymphony.xwork2.Action;

public class JSONRegisterAction extends SecondChanceAction implements
		ServletContextAware, ServletRequestAware {
	protected HttpServletRequest request;
	//protected Integer promotionId = 0;
	private String testJNDI = "";
	protected Promotion promotion = null;

	public static final String HEADER_AUTH = "Authorization";
	public static final String AUTH_TYPE = "Basic";
	public static final String ENCODING = "UTF-8";
	public static final String USER = "restuser";
	public static final String PASSWORD = "L0ttery$";
	
	public static final String HEADER_VOU_NBR = "voucherNumber";

	public JSONRegisterAction() {

	}

	public String execute() {
		return Action.SUCCESS;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		ServletActionContext.setServletContext(arg0);
	}

	
	/* returns 1, 3 or 7 number for valid voucher entry */
	public Object getCreateAccount() throws SQLException {

		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse response = ServletActionContext.getResponse();
		String authCredentials = httpServletRequest.getHeader(HEADER_AUTH);

		if (null == authCredentials)
			return false;
		final String encodedUserPassword = authCredentials.replaceFirst(
				AUTH_TYPE + " ", "");
		String usernameAndPassword = null;
		try {
			byte[] decodedBytes = DatatypeConverter
					.parseBase64Binary(encodedUserPassword);
			usernameAndPassword = new String(decodedBytes, ENCODING);
		} catch (IOException e) {
			e.printStackTrace();
		}
		final StringTokenizer tokenizer = new StringTokenizer(
				usernameAndPassword, ":");
		final String username = tokenizer.nextToken();
		final String password = tokenizer.nextToken();
		JSONObject json = new JSONObject();
		String message = "";
		boolean isError = false;	
		if(username == null || username.equals("") || password == null || password.equals("") || !username.equals(USER) || !password.equals(PASSWORD)) {
			message = getText("json.message.invalid.login.credential");
			isError = true;
		} else {
			//create an account	
				
				String firstName = httpServletRequest
						.getHeader("firstName");
				String lastName = httpServletRequest
						.getHeader("lastName");
				String street1 = httpServletRequest
						.getHeader("street1");
				String street2 = httpServletRequest
						.getHeader("street2");
				String city = httpServletRequest
						.getHeader("city");
				String state = httpServletRequest
						.getHeader("state");
				String postalCode = httpServletRequest
						.getHeader("postalCode");
				String country = httpServletRequest
						.getHeader("country");
				String dayPhone = httpServletRequest
						.getHeader("dayPhone");
				String eveningPhone = httpServletRequest
						.getHeader("eveningPhone");
				String email = httpServletRequest
						.getHeader("email");
				String pwd = httpServletRequest
						.getHeader("pwd");
						
				if (firstName == null || firstName.equals("") || 
						lastName == null || lastName.equals("") ||
								street1 == null || street1.equals("") ||
												city == null || city.equals("") ||
														state == null || state.equals("") ||
																postalCode == null || postalCode.equals("") ||
																		country == null || country.equals("") ||
																				dayPhone == null || dayPhone.equals("") ||
																						eveningPhone == null || eveningPhone.equals("") ||
																								email == null || email.equals("") ||
																										pwd == null || pwd.equals("") 
						) {
					isError = true;
					message = getText("json.message.missing.reqd.data");
				} else {
				
				
				
	
				AccountForm accountForm = new AccountForm();
				Name name = new Name();
				name.setFirst(firstName);
				name.setLast(lastName);
				accountForm.setName(name);
				accountForm.setAccountWhatIsNew(Boolean.TRUE);
				accountForm.setStreet1(street1);
				accountForm.setStreet2(street2 == null ? "" : street2);
				accountForm.setCity(city);
				accountForm.setState(state);
				accountForm.setPostalCode(postalCode);
				accountForm.setCountry(country);
				accountForm.setDayPhone(dayPhone);
				accountForm.setEveningPhone(eveningPhone);
				accountForm.setEmail(email);
				accountForm.setPassword(pwd);
				accountForm.setQuickCreate("N");
				accountForm.setQuickCreateConfirm("N");
				accountForm.setRegComplete("Y");
				DatabaseStatusFlag status = DatabaseStatusFlag.UNKNOWN;
				DatabaseStatusFlag databaseStatusFlag = null;
				if(testJNDI != null && !testJNDI.equals("")) {
					databaseStatusFlag = new AccountDAO().newRegistration(accountForm, testJNDI);
				} else {
					databaseStatusFlag = new AccountDAO().newRegistration(accountForm);
				}
				
				
				if (databaseStatusFlag.SUCCESS.equals(status)) {
					isError = false;
					json.put("status", "success");
					json.put("code", "200");
					json.put("message", "");
					
				} else if (databaseStatusFlag.DUPLICATE
						.equals(status)) {
					isError = true;
					message = getText("json.message.duplicate.account");
				} else {
					isError = true;
					message = getText("json.message.error.during.account.create");
				}
				
//				try {
//					String jsonString = IOUtils.toString(request.getInputStream());
//					System.out.println("*******************************************OUT jsonString ---> :"+jsonString);
//					ObjectMapper mapper = new ObjectMapper();
//					AccountForm accountForm = mapper.readValue(jsonString, AccountForm.class);
//					
//					System.out.println("OUT ---> :"+accountForm.getEmail());
//					
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}

				  // Work with the data using methods like...
				  // int someInt = jsonObject.getInt("intParamName");
				  // String someString = jsonObject.getString("stringParamName");
				  // JSONObject nestedObj = jsonObject.getJSONObject("nestedObjName");
				  // JSONArray arr = jsonObject.getJSONArray("arrayParamName");
				  // etc...
				}
		}

		// set values
		if (isError) {
			json.put("status", "failure");
			json.put("code", "201");
			json.put("message", message);
			response.setStatus(201);
		} 
		
		return json.toString();
	}

	public void setTestJNDI(String testJNDI) {
		this.testJNDI = testJNDI;
	}
	
	
}