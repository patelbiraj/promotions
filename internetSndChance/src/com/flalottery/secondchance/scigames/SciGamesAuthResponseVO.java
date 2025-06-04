package com.flalottery.secondchance.scigames;

public class SciGamesAuthResponseVO extends SciGamesResponseVO{
	private static final long serialVersionUID = 3449273490383279141L;
	private String token;

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	@Override
	public String toString() {
		return "SciGamesAuthResponseVO [token=" + token + "]";
	}
	
	

}
