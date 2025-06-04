package com.flalottery.secondchance.domain;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Timer;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.PromotionDAO;

public class SecondChanceContextListener implements ServletContextListener {

	private static final Logger logger = LoggerFactory.getLogger(SecondChanceContextListener.class.getName());

	@Override
	public void contextDestroyed(final ServletContextEvent event) {
		// empty
	}

	@Override
	public void contextInitialized(final ServletContextEvent event) {
		logger.debug("SecondChanceContextListener: context Initialized");
		final ServletContext sc = event.getServletContext();
		final PromotionDAO dao = new PromotionDAO();
		int delay = 1000;
		Timer servletTimer = new Timer();
		servletTimer.scheduleAtFixedRate(new TimerTask(){
			public void run(){
				Map<Integer, Promotion> promotions = null;
				try {					
					promotions = dao.getAllPromotions();
				} catch (final SQLException e) {
					logger.warn("SQLEXCEPTION getAllPromotions(): " + e);
				}
				sc.setAttribute(Constants.ATTRIBUTE_PROMOTIONS, promotions);
			}
		}, delay, 60000*30);
	}
}
