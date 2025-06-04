package com.flalottery.secondchance.dataobject;



public class TicketFamilyMobileDO implements Comparable<TicketFamilyMobileDO> {
	
	private Integer gameNumber;
	private Integer weight;
	private Integer count;
	
	public TicketFamilyMobileDO(final String p_gameNum, final int p_weight, final int p_count) {
		setWeight(Integer.valueOf(p_weight));
		setCount(Integer.valueOf(p_count));
		setGameNumber(Integer.valueOf(p_gameNum));
	}
	
	@Override
	public int compareTo(final TicketFamilyMobileDO o) {
		return 0;
	}
	
	public Integer getGameNumber() {
		return this.gameNumber;
	}
	
	public Integer getWeight() {
		return this.weight;
	}
	
	public Integer getCount() {
		return this.count;
	}
	
	public void setGameNumber(final Integer p_gameNum) {
		this.gameNumber = p_gameNum;
	}

	public void setWeight(final Integer p_weight) {
		this.weight = p_weight;
	}
	public void setCount(final Integer p_count) {
		this.count = p_count;
	}
}