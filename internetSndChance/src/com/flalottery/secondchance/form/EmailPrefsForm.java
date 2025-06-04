package com.flalottery.secondchance.form;

import org.apache.commons.lang3.StringUtils;

import com.flalottery.secondchance.domain.Constants;

/**
 * The form bean for player email preferences.
 * 
 */
public class EmailPrefsForm implements Submittable, Deletable {

	/* submitFlag is a control variable that affects the action logic. */
	private String submitFlag = "";

	private Boolean lotto = Constants.OFF;
	private Boolean luckyMoney = Constants.OFF;
	private Boolean fantasy5 = Constants.OFF;
	private Boolean play4Evening = Constants.OFF;
	private Boolean cash3Evening = Constants.OFF;
	private Boolean powerball = Constants.OFF;
	private Boolean evening = Constants.OFF;
	private Boolean midday = Constants.OFF;
	private Boolean play4Midday = Constants.OFF;
	private Boolean cash3Midday = Constants.OFF;
	private Boolean whatIsNew = Constants.OFF;
	private Boolean megaMillions = Constants.OFF;
	private Boolean cash4life = Constants.OFF;
	private Boolean jackpotTriplePlay = Constants.OFF;
	private Boolean cashPopEvening = Constants.OFF;
	private Boolean cashPopMidday = Constants.OFF;
	private Boolean cashPopLateNight = Constants.OFF;
	private Boolean fantasy5midday = Constants.OFF;


	private Boolean recordExists = Constants.OFF;
	//private Boolean mmc = Constants.OFF;


	@Override
	public Boolean isDeleted() {
		return Constants.OFF.equals(this.getLotto()) && Constants.OFF.equals(this.getLuckyMoney()) && Constants.OFF.equals(this.getMegaMillions())
				&& Constants.OFF.equals(this.getCash4life()) && Constants.OFF.equals(this.getFantasy5()) && Constants.OFF.equals(this.getPlay4Evening()) &&  Constants.OFF.equals(this.getCash3Evening()) && Constants.OFF.equals(this.getEvening()) &&
				Constants.OFF.equals(this.getPowerball()) && Constants.OFF.equals(this.getPlay4Midday()) && Constants.OFF.equals(this.getCash3Midday())
				&& Constants.OFF.equals(this.getMidday()) && Constants.OFF.equals(this.getCashPopEvening()) && Constants.OFF.equals(this.getCashPopMidday()) && Constants.OFF.equals(this.getCashPopLateNight()) && Constants.OFF.equals(this.getWhatIsNew()) && Constants.OFF.equals(this.getJackpotTriplePlay())
				&& Constants.OFF.equals(this.getFantasy5Midday());
	}


	public void setSubmitFlag(final String submitFlag) {
		this.submitFlag = submitFlag;
	}

	@Override
	public Boolean isSubmitted() {
		return StringUtils.isNotEmpty(submitFlag);
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("EmailPrefsForm [isDeleted()=").append(this.isDeleted()).append(", isSubmitted()=").append(this.isSubmitted()).append(", getFantasy5Midday()=").append(this.getFantasy5Midday()).append(", getLotto()=")
		.append(this.getLotto()).append(", getMegaMoney()=").append(this.getLuckyMoney()).append(", getCash4life()=").append(this.getCash4life()).append(", getFantasy5()=").append(this.getFantasy5()).append(", getPlay4Evening()=").append(this.getPlay4Evening()).append(", getCash3Evening()=").append(this.getCash3Evening()).
		append(", getEvening()=").append(this.getEvening()).append(", getPowerball()=").append(this.getPowerball()).append(", getMidday()=").append(this.getMidday())
		.append(", getCashPopEvening()=").append(this.getCashPopEvening()).append(", getCashPopMidday()=").append(this.getCashPopMidday()).append(", getCashPopLateNight()=").append(this.getCashPopLateNight())
		.append(", getPlay4Midday()=").append(this.getPlay4Midday()).append(", getCash3Midday()=").append(this.getCash3Midday()).append(", getWhatIsNew()=").append(this.getWhatIsNew()).append(", getJackpotTriplePlay()=").append(this.getJackpotTriplePlay()).append(", getMegaMillions()=").append(this.getMegaMillions()).append(", getSubmitFlag()=")
		.append(this.getSubmitFlag()).append("]");
		return builder.toString();
	}


	public Boolean getFantasy5Midday() {
		return this.fantasy5midday;
	}
	
	public void setFantasy5Midday(final Boolean fantasy5midday) {
		this.fantasy5midday = fantasy5midday;
	}
	
	public Boolean getLotto() {
		return this.lotto;
	}
	
	public void setLotto(final Boolean lotto) {
		this.lotto = lotto;
	}

	public Boolean getLuckyMoney() {
		return this.luckyMoney;
	}

	public void setLuckyMoney(final Boolean luckyMoney) {
		this.luckyMoney = luckyMoney;
	}

	public Boolean getCash4life() {
		return this.cash4life;
	}

	public void setCash4life(final Boolean cash4life) {
		this.cash4life = cash4life;
	}

	public Boolean getFantasy5() {
		return this.fantasy5;
	}

	public void setFantasy5(final Boolean fantasy5) {
		this.fantasy5 = fantasy5;
	}
	public Boolean getPlay4Evening() {
		return play4Evening;
	}


	public void setPlay4Evening(Boolean play4Evening) {
		this.play4Evening = play4Evening;
	}


	public Boolean getCash3Evening() {
		return cash3Evening;
	}


	public void setCash3Evening(Boolean cash3Evening) {
		this.cash3Evening = cash3Evening;
	}
	public Boolean getEvening() {
		return evening;
	}


	public void setEvening(Boolean evening) {
		this.evening = evening;
	}


	public Boolean getMidday() {
		return midday;
	}


	public void setMidday(Boolean midday) {
		this.midday = midday;
	}


	public Boolean getPowerball() {
		return this.powerball;
	}

	public void setPowerball(final Boolean powerball) {
		this.powerball = powerball;
	}
	public Boolean getPlay4Midday() {
		return play4Midday;
	}


	public void setPlay4Midday(Boolean play4Midday) {
		this.play4Midday = play4Midday;
	}


	public Boolean getCash3Midday() {
		return cash3Midday;
	}


	public void setCash3Midday(Boolean cash3Midday) {
		this.cash3Midday = cash3Midday;
	}



	public Boolean getWhatIsNew() {
		return this.whatIsNew;
	}

	public void setWhatIsNew(final Boolean whatIsNew) {
		this.whatIsNew = whatIsNew;
	}

	public Boolean getMegaMillions() {
		return this.megaMillions;
	}

	public void setMegaMillions(final Boolean megaMillions) {
		this.megaMillions = megaMillions;
	}
	
	public Boolean getCashPopEvening() {
		return this.cashPopEvening;
	}

	public void setCashPopEvening(final Boolean cashPopEvening) {
		this.cashPopEvening = cashPopEvening;
	}
	
	public Boolean getCashPopMidday() {
		return this.cashPopMidday;
	}

	public void setCashPopMidday(final Boolean cashPopMidday) {
		this.cashPopMidday = cashPopMidday;
	}
	
	public Boolean getCashPopLateNight() {
		return this.cashPopLateNight;
	}

	public void setCashPopLateNight(final Boolean cashPopLateNight) {
		this.cashPopLateNight = cashPopLateNight;
	}
	
	public Boolean getJackpotTriplePlay() {
		return this.jackpotTriplePlay;
	}

	public void setJackpotTriplePlay(final Boolean jackpotTriplePlay) {
		this.jackpotTriplePlay = jackpotTriplePlay;
	}	

	//public Boolean getmmc() {
	//	return this.mmc;
	//}

	//public void setmmc(final Boolean mmc) {
	//	this.mmc = mmc;
	//}

	public String getSubmitFlag() {
		return this.submitFlag;
	}


	public Boolean getRecordExists() {
		return recordExists;
	}


	public void setRecordExists(Boolean recordExists) {
		this.recordExists = recordExists;
	}
	
	
}
