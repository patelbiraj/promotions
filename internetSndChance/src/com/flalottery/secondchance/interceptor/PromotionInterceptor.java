package com.flalottery.secondchance.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.flalottery.secondchance.utility.SecondChanceURL;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class PromotionInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -4487758719744326374L;

	/**
	 * This interceptor should be used for all promotions. If the ticket entry
	 * page for the promotion is requested, the LoginInterceptor will be
	 * returned.
	 */
	@Override
	public String intercept(final ActionInvocation invocation) throws Exception {

		final HttpServletRequest servletRequest = ServletActionContext.getRequest();
		if (SecondChanceURL.getRelativeUrl(servletRequest.getRequestURI()).startsWith("entry") || 
			SecondChanceURL.getRelativeUrl(servletRequest.getRequestURI()).startsWith("coupon")) {
			return new LoginRequiredInterceptor().intercept(invocation);
		}
		return invocation.invoke();
	}

}