package com.flalottery.secondchance.domain;

import java.util.Date;

public class Draw {

	private Integer drawId;
	private Integer gameId;
	private Integer drawNumber;
	private Date startDate;
	private Date endDate;
	private Date drawDate;
	
	public Integer getDrawId() {
		return drawId;
	}
	public void setDrawId(Integer drawId) {
		this.drawId = drawId;
	}
	public Integer getGameId() {
		return gameId;
	}
	public void setGameId(Integer gameId) {
		this.gameId = gameId;
	}
	public Integer getDrawNumber() {
		return drawNumber;
	}
	public void setDrawNumber(Integer drawNumber) {
		this.drawNumber = drawNumber;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Date getDrawDate() {
		return drawDate;
	}
	public void setDrawDate(Date drawDate) {
		this.drawDate = drawDate;
	}	
}
