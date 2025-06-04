package com.flalottery.secondchance.domain;

public class GameStyle {

	private Integer gameStyleId;
	private Integer gameId;
	private Integer styleTypeId;
	private String styleInfo;
	
	public Integer getGameStyleId() {
		return gameStyleId;
	}
	public void setGameStyleId(Integer gameStyleId) {
		this.gameStyleId = gameStyleId;
	}
	public Integer getGameId() {
		return gameId;
	}
	public void setGameId(Integer gameId) {
		this.gameId = gameId;
	}
	public Integer getStyleTypeId() {
		return styleTypeId;
	}
	public void setStyleTypeId(Integer styleTypeId) {
		this.styleTypeId = styleTypeId;
	}
	public String getStyleInfo() {
		return styleInfo;
	}
	public void setStyleInfo(String styleInfo) {
		this.styleInfo = styleInfo;
	}	
}
