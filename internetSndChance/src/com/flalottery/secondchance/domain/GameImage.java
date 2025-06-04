package com.flalottery.secondchance.domain;

public class GameImage {

	private Integer gameImageId;
	private Integer gameId;
	private Integer imageTypeId;
	private String imageName;
	private String altText;
	
	public Integer getGameImageId() {
		return gameImageId;
	}
	public void setGameImageId(Integer gameImageId) {
		this.gameImageId = gameImageId;
	}
	public Integer getGameId() {
		return gameId;
	}
	public void setGameId(Integer gameId) {
		this.gameId = gameId;
	}
	public Integer getImageTypeId() {
		return imageTypeId;
	}
	public void setImageTypeId(Integer imageTypeId) {
		this.imageTypeId = imageTypeId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getAltText() {
		return altText;
	}
	public void setAltText(String altText) {
		this.altText = altText;
	}
	
}
