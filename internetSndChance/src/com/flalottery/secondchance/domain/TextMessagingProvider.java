package com.flalottery.secondchance.domain;

import java.util.LinkedHashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TextMessagingProvider {

	private static final Logger logger = LoggerFactory.getLogger(TextMessagingProvider.class.getName());
	private static final Map<String, String> providers = new LinkedHashMap<String, String>();
	public static final String OTHER = "Other";

	static {
		providers.put("- Select -", "-1");
		providers.put("AT&T", "txt.att.net");
		providers.put("C Spire", "cspire1.com");
		providers.put("Cricket", "mms.mycricket.com");
		providers.put("MetroPCS", "mymetropcs.com");
		providers.put("Page Plus", "vtext.com");
		providers.put("T-Mobile", "tmomail.net");
		providers.put("Tracfone", "mmst5.tracfone.com");
		providers.put("Verizon", "vtext.com");
		providers.put(OTHER, "");
	}

	public static final Map<String, String> getTextMessagingProviders() {
		return providers;
	}

}
