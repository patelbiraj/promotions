package com.flalottery.secondchance.scigames;


import org.json.simple.JSONObject;


public class SciGamesResponseVO extends JSONObject{
	
	private static final long serialVersionUID = -3452080793061728980L;
	private String success;
	private String message;
	
	public String getSuccess() {
		return success;
	}
	public void setSuccess(String success) {
		this.success = success;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "SciGamesResponseVO [success=" + success + ", message=" + message + "]";
	}
	
	
	
}
