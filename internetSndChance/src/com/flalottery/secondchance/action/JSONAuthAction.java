package com.flalottery.secondchance.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.util.ServletContextAware;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;

import com.flalottery.secondchance.dao.AccountDAO;
import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.dao.LoginDAO;
import com.flalottery.secondchance.dao.TicketEntryDAO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Promotion;
import com.opensymphony.xwork2.Action;

public class JSONAuthAction extends SecondChanceAction implements
		ServletContextAware, ServletRequestAware {
	protected HttpServletRequest request;
	//protected Integer promotionId = 0;
	private String testJNDI = "";
//	protected Promotion promotion = null;

	public static final String HEADER_AUTH = "Authorization";
	//public static final String HEADER_VOU_NBR = "voucherNumber";
	public static final String AUTH_TYPE = "Basic";
	public static final String ENCODING = "UTF-8";

	public JSONAuthAction() {

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
	public Object getPlayerProfile() throws SQLException {

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
		int memberId = 0;
		if(testJNDI != null && !testJNDI.equals("")) {
			memberId = new AccountDAO().accountAlreadyExists(username, testJNDI);
		} else {
			memberId = new AccountDAO().accountAlreadyExists(username);
		}
		JSONObject json = new JSONObject();
		String message = "";
		boolean isError = false;		
		if (memberId == 0) {
			// account does not exist
			isError = true;
			message = getText("json.message.user.not.exist");
		} else {
			LoginDO loginDO = null;
			
			if(testJNDI != null && !testJNDI.equals("")) {
				loginDO = new LoginDAO().login(username, password, testJNDI);
			} else {
				loginDO = new LoginDAO().login(username, password);
			}
			
			boolean authenticationStatus = loginDO == null ? false : true;

			if (authenticationStatus) {
				//populate member profile properties...
				json.put("status", "success");
				json.put("code", "200");
				json.put("message", "");
				
//				ObjectMapper mapper = new ObjectMapper();
//				try {
//					String jsonInString = mapper.writer().writeValueAsString(loginDO);
//					json.put("data", jsonInString);
//				} catch (JsonGenerationException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (JsonMappingException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
				json.put("playerId", loginDO.getPlayerId());
				json.put("firstName", loginDO.getName().getFirst());
				json.put("lastName", loginDO.getName().getLast());
				json.put("street1", loginDO.getStreet1());
				json.put("street2", loginDO.getStreet2());
				json.put("city", loginDO.getCity());
				json.put("state", loginDO.getState());
				json.put("postalCode", loginDO.getPostalCode());
				json.put("country", loginDO.getCountry());
				json.put("email", loginDO.getEmail());
				json.put("dayPhone", loginDO.getDayPhone());
				json.put("eveningPhone", loginDO.getEveningPhone());
				

			} else {
				isError = true;
				message = getText("json.message.invalid.login.credential");
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
	
	
/*	
	 returns 1, 3 or 7 number for valid voucher entry 
	public Object getVoucherEntryStatus() throws SQLException {

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
		int memberId = 0;
		if(testJNDI != null && !testJNDI.equals("")) {
			memberId = new AccountDAO().accountAlreadyExists(username, testJNDI);
		} else {
			memberId = new AccountDAO().accountAlreadyExists(username);
		}
		JSONObject json = new JSONObject();
		String message = "";
		boolean isError = false;
		String number = "";
		if (memberId == 0) {
			// account does not exist
			isError = true;
			message = getText("json.message.user.not.exist");
		} else {
			LoginDO loginDO = null;
			
			if(testJNDI != null && !testJNDI.equals("")) {
				loginDO = new LoginDAO().login(username, password, testJNDI);
			} else {
				loginDO = new LoginDAO().login(username, password);
			}
			
			boolean authenticationStatus = loginDO == null ? false : true;

			if (authenticationStatus) {

				// get Number and validate it
				String voucherNumber = httpServletRequest
						.getHeader(HEADER_VOU_NBR);
				if (voucherNumber == null || voucherNumber.equals("")) {
					isError = true;
					message = getText("json.message.missing.voucher.number");
				} else {
					int[] ia = new int[] { 1, 3, 7 }; // default pool of valid
														// values
					int rnd = new Random().nextInt(ia.length);

					 DatabaseStatusFlag status = DatabaseStatusFlag.UNKNOWN;
					
						if(testJNDI != null && !testJNDI.equals("")) {
							status = new TicketEntryDAO()
							.newVoucherEntry(loginDO.getPlayerId(),
									promotionId, voucherNumber,
									Integer.valueOf(ia[rnd]), testJNDI);
						} else {
							status = new TicketEntryDAO()
							.newVoucherEntry(loginDO.getPlayerId(),
									promotionId, voucherNumber,
									Integer.valueOf(ia[rnd]));
						}
							
							
					if (DatabaseStatusFlag.SUCCESSFUL_VOUCHER.equals(status)) {
						number = String.valueOf(ia[rnd]);
					} else if (DatabaseStatusFlag.DUPLICATE_VOUCHER
							.equals(status)) {
						isError = true;
						message = getText("json.message.duplicate.voucher");
					} else if (DatabaseStatusFlag.DISQUALIFIED_VOUCHER
							.equals(status)) {
						isError = true;
						message = getText("json.message.disqualified.voucher");
					} else if (DatabaseStatusFlag.INVALID_VOUCHER
							.equals(status)) {
						isError = true;
						message = getText("json.message.invalid.voucher");
					} else {
						isError = true;
						message = getText("json.message.error.during.voucher.entry");
					}
				}
			} else {
				isError = true;
				message = getText("json.message.invalid.login.credential");
			}
		}

		// set values
		if (isError) {
			json.put("status", "failure");
			json.put("code", "201");
			json.put("message", message);
			json.put("number", "");
			response.setStatus(201);
		} else {
			json.put("status", "success");
			json.put("code", "200");
			json.put("message", "");
			json.put("number", number);
		}
		
		return json.toString();
	}
*/
//	public void setPromotionId(final Integer promotionId) {
//		this.promotionId = promotionId;
//		this.promotion = getAllPromotions().get(promotionId);
//		if (null != this.promotion) {
//			promotion.getPromotionInterval();
//		}
//	}

	public void setTestJNDI(String testJNDI) {
		this.testJNDI = testJNDI;
	}
	
	
}