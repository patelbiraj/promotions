package com.flalottery.secondchance.interceptor;

import java.io.BufferedReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.action.SecondChanceAction;
import com.flalottery.secondchance.dataobject.AuthDO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.PTA;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.config.entities.ActionConfig;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * This interceptor checks if the user already has a logged in session. If the
 * user is already logged in, a message page is displayed or the player is
 * redirected to the PTA url as appropriate.
 * 
 */
public class CheckSessionInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -4487758719744326374L;

	private static final Logger logger = LoggerFactory.getLogger(CheckSessionInterceptor.class.getName());

	@Override
	public String intercept(final ActionInvocation invocation) throws Exception {
		final Map<String, Object> session = ActionContext.getContext().getSession();
		final HttpServletRequest servletRequest = ServletActionContext.getRequest();
		final LoginDO loginDO = (LoginDO) session.get("loginDO");
		String ptaUrl = servletRequest.getParameter("PtaUrl");
		String ptaRedirect = servletRequest.getParameter("Redirect");
		String data = servletRequest.getParameter("Data");
		String iv = servletRequest.getParameter("Iv");
		if(data != null) {
			
			String dData = PTA.decrypt(data, iv);
				logger.debug("dData:"+dData);
				dData = dData.replace("\0", "");
			try {
			AuthDO authDO = new Gson().fromJson(dData, AuthDO.class);
			session.put("autoLogin", authDO.getPlayerId());
			} catch (Exception ex) {
				logger.debug("ex:"+ex.getMessage());
				ex.printStackTrace();
			}
		}
		if (!StringUtils.isBlank(ptaUrl) && !StringUtils.isBlank(ptaRedirect)) {
			session.put("ptaUrl", ptaUrl);
			session.put("ptaRedirect", ptaRedirect);
		}
		ptaUrl = StringUtils.defaultString((String) session.get("ptaUrl"));
		ptaRedirect = StringUtils.defaultString((String) session.get("ptaRedirect"));
		if(loginDO != null) {
			loginDO.setSessionId(servletRequest.getSession().getId());
		}
		String finalPtaRedirectUrl = PTA.buildPtaRedirectUrl(loginDO, ptaUrl, ptaRedirect);
		if (loginDO == null) {
			return invocation.invoke();
		}
		else if (!finalPtaRedirectUrl.isEmpty()) {
			// for testing bug in their code:
			String theRedirect = finalPtaRedirectUrl;
			finalPtaRedirectUrl = "redirectToThirdParty.jsp?theRedirect=" + theRedirect;
			
			ServletActionContext.getResponse().sendRedirect(finalPtaRedirectUrl);
			session.remove("ptaUrl");
			session.remove("ptaRedirect");
			return null;
		}
		final ActionConfig config = invocation.getProxy().getConfig();
		final SecondChanceAction scAction = (SecondChanceAction) invocation.getAction();
		scAction.getMessages().setH1Title(scAction.getText(config.getName() + ".loggedin.h1"));
		scAction.getMessages().setMessage(scAction.getText(config.getName() + ".loggedin.message", new String[] { config.getName() }));

		return "message";
	}

	private String ptaUrl = "";
	private String ptaRedirect = "";

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
	
}