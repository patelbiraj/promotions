package com.flalottery.secondchance.utility;

import org.apache.commons.lang3.Validate;
import org.jdom2.Attribute;
import org.jdom2.Element;

public enum Html {

	INSTANCE;

	private static final String SPACE = " ";
	private static final String CLASS = "class";

	public static Element tableHeaderRow(final String... headings) {
		Validate.notNull(headings);
		final Element tr = new Element("tr");
		for (int i = 0; i < headings.length; i++) {
			tr.addContent(new Element("th").setText(headings[i]).setAttribute(CLASS, "column".concat(Integer.toString(i + 1))));
		}
		return tr;
	}

	public static Element tableRow(final String... cellData) {
		Validate.notNull(cellData);
		final Element tr = new Element("tr");
		for (int i = 0; i < cellData.length; i++) {
			tr.addContent(new Element("td").setText(cellData[i]).setAttribute(CLASS, "column".concat(Integer.toString(i + 1))));
		}
		return tr;
	}

	public static Element addClass(final Element e, final String... classNames) {
		Validate.notNull(classNames);
		final Attribute a = e.getAttribute(CLASS);
		final StringBuilder newClasses = new StringBuilder();
		String prefix = "";
		for (final String s : classNames) {
			newClasses.append(prefix).append(s.trim());
			prefix = SPACE;
		}
		if (null == a) {
			e.setAttribute(CLASS, newClasses.toString());
		}
		else {
			final StringBuilder sbldr = new StringBuilder(a.getValue());
			if (!a.getValue().isEmpty() && 0 != newClasses.length()) {
				sbldr.append(SPACE);
			}
			sbldr.append(newClasses);
			a.setValue(sbldr.toString());
		}
		return e;
	}
}
