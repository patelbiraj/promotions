package com.flalottery.secondchance.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.flalottery.secondchance.dao.WhatIsNewPrefDAO;
import com.flalottery.secondchance.form.WhatIsNewPrefForm;



public class WhatIsNewPrefAction extends CouponAction implements ServletRequestAware
{

	/**
	 * Used for toggling the what is new preference on/off with Coupon Emails--jch-20150416 
	 */
	private static final long serialVersionUID = 5137426437231241423L;
	private WhatIsNewPrefForm form = new WhatIsNewPrefForm();
	private boolean whatIsNewPref;
	private final WhatIsNewPrefDAO dao = new WhatIsNewPrefDAO();
//	private String whatIsNewFlag, memberID;

	
	@Override
	public void setServletRequest(HttpServletRequest request) 
	{
		// TODO Auto-generated method stub
		super.setServletRequest(request);
	}


	public void prepare() throws Exception
	{
		super.prepare();		
	}
	
	public String display() throws SQLException 
	{	
		dao.updateWhatIsNewPref(form.getWhatIsNew()?"on":"off", request.getSession(false).getAttribute("memberID").toString());
		request.setAttribute("preferenceUpdated", form.getWhatIsNew());
		request.setAttribute("couponPrinted", "true");
		return NONE;
	}

	public boolean isWhatisNewPref(){
		return whatIsNewPref;
	}
	
	public void setWhatisNewPref(boolean whatIsNewPref) throws SQLException
	{
		this.whatIsNewPref=whatIsNewPref;
//		new WhatIsNewPrefDAO().updateWhatIsNewPref(this.whatIsNewPref?"on":"off", request.getSession(false).getAttribute("memberID").toString());
		
	}

	public WhatIsNewPrefForm getForm() {
		return form;
	}

	public void setForm(WhatIsNewPrefForm form) {
		this.form = form;
	}
	
}
