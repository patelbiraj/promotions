package com.flalottery.secondchance.utility;

import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;
import org.jdom2.Element;
import org.jdom2.filter.AbstractFilter;

/**
 * This class is specifically designed for operations involving the attribute
 * class for JDom elements.
 */
public class ElementClassFilter extends AbstractFilter<Element> {

	private static final long serialVersionUID = 200L;
	private static final String CLASS = "class";

	private final List<String> tagNames;
	private final Pattern classPattern;

	public ElementClassFilter(final String htmlClass, final String... tagNames) {
		Validate.notNull(tagNames);
		this.tagNames = Arrays.asList(tagNames);
		classPattern = Pattern.compile("\\b".concat(htmlClass).concat("\\b"));
	}

	@Override
	public Element filter(final Object content) {
		if (content instanceof Element) {
			final Element el = (Element) content;
			String attrValue = StringUtils.defaultString(el.getAttributeValue(CLASS));
			if (!attrValue.isEmpty()) {
				final Matcher classMatcher = classPattern.matcher(attrValue);
				if (!tagNames.isEmpty()) {
					if (classMatcher.find() && tagNames.contains(el.getName())) {
						return el;
					}
				}
				else if (classMatcher.find()) {
					return el;
				}
			}
		}
		return null;
	}
}