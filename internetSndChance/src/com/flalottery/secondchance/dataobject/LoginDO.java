package com.flalottery.secondchance.dataobject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.DatabaseStatusFlag;
import com.flalottery.secondchance.domain.Name; 
 
public class LoginDO {

	private static final Logger logger = LoggerFactory.getLogger(LoginDO.class.getName());

	private final Integer playerId;
	private Name name;
	private final String street1;
	private final String street2;
	private final String city;
	private final String state;
	private final String postalCode;
	private final String email;
	private final String country;
	private final String dayPhone;
	private final String eveningPhone;
	private String sessionId;
	private DatabaseStatusFlag status = DatabaseStatusFlag.NOT_SET;

	public LoginDO() {
		this.playerId = null;
		this.street1 = "";
		this.street2 = "";
		this.city = "";
		this.state = "";
		this.postalCode = "";
		this.email = "";
		this.country = "";
		this.dayPhone = "";
		this.eveningPhone = "";		
	}
	
	public LoginDO(final Integer playerId, final Name name, final String street1, final String street2, final String city, final String state, final String postalCode,
			final String email, final String country, final String dayPhone, final String eveningPhone) {
		super();
		this.playerId = playerId;
		this.name = name;
		this.street1 = street1;
		this.street2 = street2;
		this.city = city;
		this.state = state;
		this.postalCode = postalCode;
		this.email = email;
		this.country = country;
		this.dayPhone = dayPhone;
		this.eveningPhone = eveningPhone;
	}

	public Name getName() {
		return this.name;
	}

	public void setName(final Name name) {
		this.name = name;
	}

	public Integer getPlayerId() {
		return this.playerId;
	}

	public String getStreet1() {
		return street1;
	}

	public String getStreet2() {
		return street2;
	}

	public String getCity() {
		return city;
	}

	public String getState() {
		return state;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public String getEmail() {
		return email;
	}

	public String getCountry() {
		return country;
	}

	public String getDayPhone() {
		return dayPhone;
	}

	public String getEveningPhone() {
		return eveningPhone;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public DatabaseStatusFlag getStatus() {
		return status;
	}

	public void setStatus(DatabaseStatusFlag status) {
		this.status = status;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("LoginDO [getName()=");
		builder.append(getName());
		builder.append(", getPlayerId()=");
		builder.append(getPlayerId());
		builder.append(", getStreet1()=");
		builder.append(getStreet1());
		builder.append(", getStreet2()=");
		builder.append(getStreet2());
		builder.append(", getCity()=");
		builder.append(getCity());
		builder.append(", getState()=");
		builder.append(getState());
		builder.append(", getPostalCode()=");
		builder.append(getPostalCode());
		builder.append(", getEmail()=");
		builder.append(getEmail());
		builder.append(", getCountry()=");
		builder.append(getCountry());
		builder.append(", getDayPhone()=");
		builder.append(getDayPhone());
		builder.append(", getEveningPhone()=");
		builder.append(getEveningPhone());
		builder.append("]");
		return builder.toString();
	}
}
