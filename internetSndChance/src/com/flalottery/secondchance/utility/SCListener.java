package com.flalottery.secondchance.utility;

import java.sql.SQLException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

import com.flalottery.secondchance.dao.PromotionDAO;

public class SCListener implements ServletRequestListener {

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		
		
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
		if(request.getSession().getAttribute("extURL") == null) {
		try {
			int serverPort = request.getServerPort();
			String serverUrl; 
			if((serverPort==80)||(serverPort==443)){
				serverUrl = String.format("%s://%s%s",request.getScheme(),request.getServerName(),request.getContextPath());
			}
			else{
				serverUrl = String.format("%s://%s:%d%s", request.getScheme(),request.getServerName(),serverPort,request.getContextPath());
			}
			String s = new PromotionDAO().getRedirectURL();
			String url = serverUrl+"/login?PtaUrl="+s+"&Redirect="+s;
			request.getSession().setAttribute("extURL", url);
			request.getSession().setAttribute("redirectURL", s);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
		
	}


}