package com.flalottery.secondchance.domain;

public final class Name {

	private String first = "";
	private String last = "";

	public Name() {
	}

	public Name(final String first, final String last) {
		this.first = first;
		this.last = last;
	}

	public String getFirst() {
		return this.first;
	}

	public String getLast() {
		return this.last;
	}

	/**
	 * Concatenates "first" with "last" separated with a single space.
	 * 
	 * @return first + " " + last
	 */
	public String getFullName() {
		StringBuilder bldr = new StringBuilder();
		bldr.append(this.getFirst());
		bldr.append(" ");
		bldr.append(this.getLast());
		return bldr.toString();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Name [getFirst()=").append(this.getFirst()).append(", getLast()=").append(this.getLast()).append(", getFullName()=").append(this.getFullName()).append("]");
		return builder.toString();
	}

	public void setFirst(final String first) {
		this.first = first.trim();
	}

	public void setLast(final String last) {
		this.last = last.trim();
	}
}
