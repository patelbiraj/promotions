package com.flalottery.secondchance.action;

import java.math.BigDecimal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.flalottery.secondchance.dao.CouponBarcodeDAO;
import com.flalottery.secondchance.dao.CouponBarcodeDAO.AccessCodeResult;
import com.flalottery.secondchance.dao.WhatIsNewPrefDAO;
import com.flalottery.secondchance.dataobject.CouponBarcodeDO;
import com.flalottery.secondchance.domain.Mailer;
import com.flalottery.secondchance.form.WhatIsNewPrefForm;



public class CouponAction extends SecondChanceAction implements ServletRequestAware {

	/**
	 * Coupon Action
	 */
	private static final long serialVersionUID = 6147764256109765195L;
	protected HttpServletRequest request;
	private WhatIsNewPrefForm form = new WhatIsNewPrefForm();
	protected String memberID, couponIncludeFile, thankYouIncludeFile;
	private HashMap<Integer, String> couponMap;
	private String tempAccessCode;
	
	public String getCouponIncludeFile(){
		return this.couponIncludeFile;
	}
	
	public void setCouponIncludeFile(String couponIncludeFile){
		this.couponIncludeFile = couponIncludeFile;
	}
	
	public String getThankYouInclude(){
		return this.thankYouIncludeFile;
	}
	
	public void setThankYouInclude(String thankYouIncludeFile){
		this.thankYouIncludeFile = thankYouIncludeFile;
	}
	
	public String getTempAccessCode() {
		return tempAccessCode;
	}

	public void setTempAccessCode(String tempAccessCode) {
		this.tempAccessCode = tempAccessCode;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public void prepare() throws Exception
	{
		super.prepare();
		setMemberID(request.getParameter("m"));		
	}
	
	public String execute() throws Exception
	{
		
		request.getSession().setAttribute("memberID", memberID);
		buildCouponMap();
		//CouponBarcodeDAO couponDAO = new CouponBarcodeDAO();

		if(couponMap ==null || couponMap.size() == 0) {
			couponMap = (HashMap<Integer, String>) request.getSession(false).getAttribute("couponMap");
		}
		
		boolean validDateRange = new CouponBarcodeDAO().isValidDate(couponMap.get(1));
		if(!validDateRange)
		{
			messages.setH1Title("Promotion has ended");
			messages.setMessage("Please check back with us soon for more exciting offers and promotions");
			return "expiredCoupon";
		}
		return getCoupon();
	}
	
    private int getRandomInteger(int maximum, int minimum){
        return ((int) (Math.random()*(maximum - minimum))) + minimum;
    }
	
	public String getCoupon() throws Exception
	{
	
		int serverPort = request.getServerPort();
		String serverUrl; 
		if((serverPort==80)||(serverPort==443)){
			serverUrl = String.format("%s://%s%s",request.getScheme(),request.getServerName(),request.getContextPath());
		}
		else{
			serverUrl = String.format("%s://%s:%d%s", request.getScheme(),request.getServerName(),serverPort,request.getContextPath());
		}
		
		if(couponMap ==null || couponMap.size() == 0) {
			couponMap = (HashMap<Integer, String>) request.getSession(false).getAttribute("couponMap");
		}
		
		if(memberID == null) {
			memberID = (String) request.getSession(false).getAttribute("memberID");
		}

		couponIncludeFile = null;
		thankYouIncludeFile = null;
		request.removeAttribute("couponInclude");
		request.removeAttribute("thankYouInclude");	
		for(int k : couponMap.keySet())
		{
			CouponBarcodeDO couponBarcodeDO = new CouponBarcodeDAO().getCouponBarcode(memberID, couponMap.get(k));
			try {
				request.setAttribute("barcode" + k, couponBarcodeDO.formatIMG(serverUrl));
				if(couponIncludeFile == null||thankYouIncludeFile==null){
					couponIncludeFile = couponBarcodeDO.getCouponIncludeFile();
					thankYouIncludeFile = couponBarcodeDO.getThankYouIncludeFile();
					request.setAttribute("couponInclude", couponIncludeFile);
					request.setAttribute("thankYouInclude", thankYouIncludeFile);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	public String printedCoupon()
	{
		request.setAttribute("couponPrinted", "true");
		return NONE;
		
	}
	
	private void buildCouponMap()
	{
		Enumeration<String> urlParams = request.getParameterNames();
		couponMap = new HashMap<Integer, String>();
		while(urlParams.hasMoreElements())
		{
			String param = urlParams.nextElement();
			Pattern couponPattern = Pattern.compile("c(\\d+)");
			Matcher m = couponPattern.matcher(param);
			while(m.find())
			{
				couponMap.put(Integer.parseInt(m.group(1)), request.getParameter(param));
			}
		}	
		
		request.getSession().setAttribute("couponMap", couponMap);
	}

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}

	
	
	
	

}
