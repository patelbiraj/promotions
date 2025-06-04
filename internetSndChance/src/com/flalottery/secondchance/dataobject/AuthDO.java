package com.flalottery.secondchance.dataobject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.Name;

public class AuthDO {

	private static final Logger logger = LoggerFactory.getLogger(AuthDO.class.getName());

	private LoginDO loginDO;
	private String token;
	private Integer playerId;
	
	public LoginDO getLoginDO() {
		return loginDO;
	}
	public void setLoginDO(LoginDO loginDO) {
		this.loginDO = loginDO;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public Integer getPlayerId() {
		return playerId;
	}
	public void setPlayerId(Integer playerId) {
		this.playerId = playerId;
	}
	
	
}
