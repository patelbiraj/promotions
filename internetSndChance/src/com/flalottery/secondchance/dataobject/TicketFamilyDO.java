package com.flalottery.secondchance.dataobject;

import org.joda.time.DateTime;

import com.flalottery.secondchance.utility.SecondChanceDates;

public class TicketFamilyDO implements Comparable<TicketFamilyDO> {
	
	private String gameName;
	private String dateCreateDisplay;
	private String dateDrawDisplay;
	private String ticketNumber;
	private DateTime createDate;
	private DateTime drawDate;
	private Integer ticketWeight;
	
	public TicketFamilyDO(final Integer p_ticketWeight, final DateTime p_createDate, final DateTime p_drawDate, final String p_ticketNumber ) {
		setTicketWeight(p_ticketWeight);
		setTicketNumber(p_ticketNumber);
		
		if(getTicketWeight() == 0)
			this.dateDrawDisplay = "";
		else
			setDrawDate(p_drawDate);
		setCreateDate(p_createDate);
		
	}
	
	public TicketFamilyDO(final Integer p_ticketWeight, final String p_ticketNumber, final String p_createDate, final String p_drawDate) {
		setTicketWeight(p_ticketWeight);
		setTicketNumber(p_ticketNumber);
		this.dateCreateDisplay = p_createDate;
		this.dateDrawDisplay = p_drawDate;
	}
	
	public void setGameName(final String p_gameName) {
		this.gameName = p_gameName;
	}
	
	public String getGameName() {
		return this.gameName;
	}
	
	public void setTicketNumber(final String p_ticketNumber) {
		this.ticketNumber = p_ticketNumber.substring(0 , 14);
	}
	
	public String getTicketNumber() {
		return this.ticketNumber;
	}
	
	public void setCreateDate(final DateTime p_createDate) {
		this.createDate = p_createDate;
		this.dateCreateDisplay = SecondChanceDates.formatDate(this.createDate, SecondChanceDates.SHORT_DATE);
	}
	
	public String getCreateDate() {
		return this.dateCreateDisplay;
	}
	
	public void setDrawDate(final DateTime p_drawDate) {
		this.drawDate = p_drawDate;
		this.dateDrawDisplay = SecondChanceDates.formatDate(this.drawDate, SecondChanceDates.SHORT_DATE);
	}
	
	public String getDrawDate() {
		return this.dateDrawDisplay;
	}
	
	public void setTicketWeight(final Integer p_ticketWeight) {
		this.ticketWeight = p_ticketWeight;
	}
	
	public Integer getTicketWeight() {
		return this.ticketWeight;
	}
	
	@Override
	public int compareTo(final TicketFamilyDO o) {
		return 0;
	}
	
	public String getDateDrawDisplay() {
		return this.dateDrawDisplay;
	}
	
	public String getDateCreateDisplay() {
		return this.dateCreateDisplay;
	}
}