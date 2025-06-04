package com.flalottery.secondchance.dataobject;

import com.flalottery.secondchance.domain.Name;

public final class ForgotPasswordDO {

	private final Integer playerId;
	private final Name name;
	private final String email;
	private final String password;

	public ForgotPasswordDO(final Integer playerId, final String fName, final String lName, final String email, final String password) {
		this.playerId = playerId;
		this.name = new Name(fName, lName);
		this.email = email;
		this.password = password;
	}

	private Integer getPlayerId() {
		return this.playerId;
	}

	private Name getName() {
		return this.name;
	}

	public String getEmail() {
		return this.email;
	}

	private String getPassword() {
		return this.password;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("MailerDO [getId()=").append(this.getPlayerId()).append(", getName()=").append(this.getName()).append(", getEmail()=").append(this.getEmail())
				.append(", getPassword()=").append(this.getPassword()).append("]");
		return builder.toString();
	}

	public String getMessage() {
		final StringBuilder bldr = new StringBuilder("Dear ");
		bldr.append(getName().getFullName()).append(",\n\n");
		bldr.append("Your email is: ").append(getEmail()).append("\n");
		bldr.append("Your password is: ").append(getPassword()).append("\n\n");
		bldr.append("Thank you,\n");
		bldr.append("Florida Lottery\n\n");
		return bldr.toString();
	}

}
