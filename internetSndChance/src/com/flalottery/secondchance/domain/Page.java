package com.flalottery.secondchance.domain;

public class Page {

	private Integer pageId;
	private Integer gameId;
	private Integer pageTypeId;
	private Integer drawId;
	private String pageContent;
	
	public Integer getPageId() {
		return pageId;
	}
	public void setPageId(Integer pageId) {
		this.pageId = pageId;
	}
	public Integer getGameId() {
		return gameId;
	}
	public void setGameId(Integer gameId) {
		this.gameId = gameId;
	}
	public Integer getPageTypeId() {
		return pageTypeId;
	}
	public void setPageTypeId(Integer pageTypeId) {
		this.pageTypeId = pageTypeId;
	}
	public Integer getDrawId() {
		return drawId;
	}
	public void setDrawId(Integer drawId) {
		this.drawId = drawId;
	}
	public String getPageContent() {
		return pageContent;
	}
	public void setPageContent(String pageContent) {
		this.pageContent = pageContent;
	}
	
}
