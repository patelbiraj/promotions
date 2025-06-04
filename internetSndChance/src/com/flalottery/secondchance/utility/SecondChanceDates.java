package com.flalottery.secondchance.utility;

import java.util.SortedMap;
import java.util.TreeMap;

import org.apache.commons.lang3.Validate;
import org.joda.time.DateTime;
import org.joda.time.DateTimeConstants;
import org.joda.time.Interval;
import org.joda.time.MonthDay;
import org.joda.time.Period;
import org.joda.time.ReadablePeriod;
import org.joda.time.Years;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.Constants;

public enum SecondChanceDates {

	INSTANCE;

	private static final Logger logger = LoggerFactory.getLogger(SecondChanceDates.class.getName());

	public static final MonthDay NEW_YEARS_DAY = new MonthDay(DateTimeConstants.JANUARY, 1);
	public static final DateTimeFormatter SHORT_DATE = DateTimeFormat.forPattern("MM/dd/yyyy");
	public static final DateTime UNIX_EPOCH = new DateTime(0L);
	public static final Period DAYS_30 = Period.days(30);
	public static final Period DAYS_60 = Period.days(60);
	public static final Period DAYS_90 = Period.days(90);

	/**
	 * Formats a dateTime with the given formatter and optional default text if
	 * formatting is not possible.
	 * 
	 * @param dateTime
	 *            - DateTime to be formatted.
	 * @param formatter
	 *            - formatter to be applied.
	 * @param defaultText
	 *            - Optional text to be displayed if the dateTime cannot be
	 *            properly formatted.
	 * @return - the formatted dateTime. Returns Not Available or the
	 *         defaultText if the dateTime cannot be formatted.
	 */
	public static final String formatDate(final DateTime dateTime, final DateTimeFormatter formatter, final String... defaultText) {
		Validate.notNull(defaultText);
		String string = 0 < defaultText.length ? defaultText[0] : Constants.NOT_AVAILABLE;
		if (null != dateTime && !dateTime.equals(UNIX_EPOCH)) {
			string = formatter.print(dateTime);
		}
		return string;
	}

	/**
	 * The calendar year interval for the given 4-digit year.
	 * 
	 * @param year
	 *            - a 4-digit year.
	 * @return - a year long interval.
	 */
	public static Interval calendarYearInterval(final Integer year) {
		return new Interval(NEW_YEARS_DAY.toLocalDate(year).toDateTimeAtStartOfDay(), Years.ONE);
	}

	/**
	 * The calendar year interval that includes the given date.
	 * 
	 * @param date
	 *            - the date to determine the year interval.
	 * @return - A year long interval.
	 */
	public static Interval calendarYearInterval(final DateTime date) {
		return new Interval(NEW_YEARS_DAY.toLocalDate(date.getYear()).toDateTimeAtStartOfDay(), Years.ONE);
	}

	/**
	 * Gets the years that Second Chance has been offered (Starting in 2008, and
	 * every year since).
	 * 
	 * @return a SortedMap whose keys are the 4-digit year and the value is the
	 *         key's year long interval beginning January 1 and ending December
	 *         31.
	 */
	public static SortedMap<Integer, Interval> getYears() {
		final SortedMap<Integer, Interval> years = new TreeMap<Integer, Interval>(java.util.Collections.reverseOrder());
		final int currentYear = new DateTime().getYear();
		if (!years.containsKey(Integer.valueOf(currentYear))) {
			for (int startYear = 2008; startYear <= currentYear; startYear++) {
				years.put(Integer.valueOf(startYear), calendarYearInterval(startYear));
			}
		}
		return years;
	}

	/**
	 * Constructs an interval from the start instant of now and a time period.
	 * 
	 * @param period
	 *            - the period of this interval, null means zero length
	 * @return - an Interval with the start instant of now
	 */
	public static Interval latestInterval(final ReadablePeriod period) {
		return new Interval(null, period);
	}

	/**
	 * Constructs an Interval with the start instant of 00:00:00.000 on the
	 * startDate and an end instant of 23:59:59.999 on the endDate. If the
	 * startDate is after the endDate the interval will be between the endDate
	 * and the startDate.
	 * 
	 * @param startDate
	 *            - first day
	 * @param endDate
	 *            - last day
	 * @return the days inclusive interval
	 */
	public static Interval getDaysInclusiveInterval(final DateTime startDate, final DateTime endDate) {
		DateTime start = startDate;
		DateTime end = endDate;
		if (startDate.isAfter(endDate)) {
			start = endDate;
			end = startDate;
		}
		return new Interval(new DateTime(start).withTimeAtStartOfDay(), new DateTime(end).withTime(23, 59, 59, 999));
	}

	public static final DateTime toDateTime(final String dateIn) {
		DateTime date = UNIX_EPOCH;
		try {
			date = SHORT_DATE.parseDateTime(dateIn);
		} catch (final IllegalArgumentException e) {
			logger.debug("Could not convert to DateTime " + dateIn + "\n" + e);
		}
		return date;
	}
}
