package com.flalottery.secondchance.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.flalottery.secondchance.utility.SecondChanceURL;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class PageNotFoundInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -4487758719744326374L;

	/**
	 * This interceptor intercepts requests for pages not found. If the the
	 * requested page is the root, the home page will be returned.
	 */
	@Override
	public String intercept(final ActionInvocation invocation) throws Exception {
		final HttpServletRequest servletRequest = ServletActionContext.getRequest();
		if (SecondChanceURL.getRelativeUrl(servletRequest.getRequestURI()).isEmpty()) {
			return "home";
		}
		return invocation.invoke();
	}

}