package com.flalottery.secondchance.interceptor;

import java.util.Map;

import com.flalottery.secondchance.action.SecondChanceAction;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * This interceptor forces the user to login if not already logged in.
 * 
 */
public class LoginRequiredInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -4487758719744326374L;

	@Override
	public String intercept(final ActionInvocation invocation) throws Exception {

		final Map<String, Object> session = ActionContext.getContext().getSession();
		final LoginDO loginDO = (LoginDO) session.get("loginDO");
		if (loginDO != null) {
			return invocation.invoke();
		}
		final SecondChanceAction scAction = (SecondChanceAction) invocation.getAction();
		scAction.getMessages().setMessage(scAction.getText("login.message"));
		return "login";
	}

}