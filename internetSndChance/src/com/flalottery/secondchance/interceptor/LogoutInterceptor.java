package com.flalottery.secondchance.interceptor;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * This interceptor checks if the user already has a logged in session. If the
 * user is already logged in, a message page is displayed or the player is
 * redirected to the PTA url as appropriate.
 * 
 */
public class LogoutInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -4487758719744326374L;

	private static final Logger logger = LoggerFactory.getLogger(LogoutInterceptor.class.getName());

	@Override
	public String intercept(final ActionInvocation invocation) throws Exception {
		final Map<String, Object> session = ActionContext.getContext().getSession();
		final HttpServletRequest servletRequest = ServletActionContext.getRequest();

		final String ptaRedirect = servletRequest.getParameter("Redirect");
		if (!StringUtils.isBlank(ptaRedirect)) {
			String decodedPtaRedirect = null;
			try {
				decodedPtaRedirect = URLDecoder.decode(ptaRedirect, "UTF-8");
				session.put("ptaRedirect", decodedPtaRedirect);
			} catch (final UnsupportedEncodingException e) {
				logger.warn("Could not decode the PtaRedirect");
			}
		}
		return invocation.invoke();
	}
	
	private String ptaRedirect = "";

	public String getPtaRedirect() {
		return ptaRedirect;
	}
	public void setPtaRedirect(String ptaRedirect) {
		this.ptaRedirect = ptaRedirect;
	}

}