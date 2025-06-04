package com.flalottery.secondchance.domain;

/**
 * Contains dropdowns for the UI: including countries, commonwealth territories, states, and provinces
 *
 */
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public enum DropDowns {

	INSTANCE;

	private static Map<String, String> countries = Collections.emptyMap();
	private static Map<String, String> usStates = Collections.emptyMap();
	private static Map<String, String> usTerritories = Collections.emptyMap();
	private static Map<String, String> canadianProvinces = Collections.emptyMap();
	private static Map<String, String> canadianTerritories = Collections.emptyMap();

	public static final Map<String, String> getCountries() {
		if (0 == countries.size()) {
			countries = initCountries();
		}
		return countries;
	}

	public static final Map<String, String> getUsTerritories() {
		if (0 == usTerritories.size()) {
			usTerritories = initUSTerritories();
		}
		return usTerritories;
	}

	public static final Map<String, String> getCanadianTerritories() {
		if (0 == canadianTerritories.size()) {
			canadianTerritories = initCanadianTerritories();
		}
		return canadianTerritories;
	}

	public static final Map<String, String> getUsStates() {
		if (0 == usStates.size()) {
			usStates = initStates();
		}
		return usStates;
	}

	public static final Map<String, String> getCanadianProvinces() {
		if (0 == canadianProvinces.size()) {
			canadianProvinces = initCanadianProvinces();
		}
		return canadianProvinces;
	}

	private static final Map<String, String> initUSTerritories() {
		final Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("AS", "American Samoa");
		map.put("GU", "Guam");
		map.put("MP", "Northern Mariana Islands");
		map.put("PR", "Puerto Rico");
		map.put("VI", "Virgin Islands");
		return Collections.unmodifiableMap(map);
	}

	private static final Map<String, String> initCountries() {
		final Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("AFG", "Afghanistan");
		map.put("ALB", "Albania");
		map.put("DZA", "Algeria");
		map.put("AND", "Andorra");
		map.put("AGO", "Angola");
		map.put("ATG", "Antigua and Barbuda");
		map.put("ARG", "Argentina");
		map.put("ARM", "Armenia");
		map.put("AUS", "Australia");
		map.put("AUT", "Austria");
		map.put("AZE", "Azerbaijan");
		map.put("BHS", "Bahamas, The");
		map.put("BHR", "Bahrain");
		map.put("BGD", "Bangladesh");
		map.put("BRB", "Barbados");
		map.put("BLR", "Belarus");
		map.put("BEL", "Belgium");
		map.put("BLZ", "Belize");
		map.put("BEN", "Benin");
		map.put("BTN", "Bhutan");
		map.put("BOL", "Bolivia");
		map.put("BIH", "Bosnia and Herzegovina");
		map.put("BWA", "Botswana");
		map.put("BRA", "Brazil");
		map.put("BRN", "Brunei");
		map.put("BGR", "Bulgaria");
		map.put("BFA", "Burkina Faso");
		map.put("MMR", "Burma");
		map.put("BDI", "Burundi");
		map.put("CPV", "Cabo Verde");
		map.put("KHM", "Cambodia");
		map.put("CMR", "Cameroon");
		map.put("CAN", "Canada");
		map.put("CAF", "Central African Republic");
		map.put("TCD", "Chad");
		map.put("CHL", "Chile");
		map.put("CHN", "China");
		map.put("COL", "Colombia");
		map.put("COM", "Comoros");
		map.put("COG", "Congo (Brazzaville) ");
		map.put("COD", "Congo (Kinshasa)");
		map.put("CRI", "Costa Rica");
		map.put("CIV", "Côte d'Ivoire");
		map.put("HRV", "Croatia");
		map.put("CUB", "Cuba");
		map.put("CYP", "Cyprus");
		map.put("CZE", "Czech Republic");
		map.put("DNK", "Denmark");
		map.put("DJI", "Djibouti");
		map.put("DMA", "Dominica");
		map.put("DOM", "Dominican Republic");
		map.put("ECU", "Ecuador");
		map.put("EGY", "Egypt");
		map.put("SLV", "El Salvador");
		map.put("GNQ", "Equatorial Guinea");
		map.put("ERI", "Eritrea");
		map.put("EST", "Estonia");
		map.put("ETH", "Ethiopia");
		map.put("FJI", "Fiji");
		map.put("FIN", "Finland");
		map.put("FRA", "France");
		map.put("GAB", "Gabon");
		map.put("GMB", "Gambia, The");
		map.put("GEO", "Georgia");
		map.put("DEU", "Germany");
		map.put("GHA", "Ghana");
		map.put("GRC", "Greece");
		map.put("GRD", "Grenada");
		map.put("GTM", "Guatemala");
		map.put("GIN", "Guinea");
		map.put("GNB", "Guinea-Bissau");
		map.put("GUY", "Guyana");
		map.put("HTI", "Haiti");
		map.put("VAT", "Holy See");
		map.put("HND", "Honduras");
		map.put("HUN", "Hungary");
		map.put("ISL", "Iceland");
		map.put("IND", "India");
		map.put("IDN", "Indonesia");
		map.put("IRN", "Iran");
		map.put("IRQ", "Iraq");
		map.put("IRL", "Ireland");
		map.put("ISR", "Israel");
		map.put("ITA", "Italy");
		map.put("JAM", "Jamaica");
		map.put("JPN", "Japan");
		map.put("JOR", "Jordan");
		map.put("KAZ", "Kazakhstan");
		map.put("KEN", "Kenya");
		map.put("KIR", "Kiribati");
		map.put("PRK", "Korea, North");
		map.put("KOR", "Korea, South");
		map.put("XK", "Kosovo");
		map.put("KWT", "Kuwait");
		map.put("KGZ", "Kyrgyzstan");
		map.put("LAO", "Laos");
		map.put("LVA", "Latvia");
		map.put("LBN", "Lebanon");
		map.put("LSO", "Lesotho");
		map.put("LBR", "Liberia");
		map.put("LBY", "Libya");
		map.put("LIE", "Liechtenstein");
		map.put("LTU", "Lithuania");
		map.put("LUX", "Luxembourg");
		map.put("MKD", "Macedonia");
		map.put("MDG", "Madagascar");
		map.put("MWI", "Malawi");
		map.put("MYS", "Malaysia");
		map.put("MDV", "Maldives");
		map.put("MLI", "Mali");
		map.put("MLT", "Malta");
		map.put("MHL", "Marshall Islands");
		map.put("MRT", "Mauritania");
		map.put("MUS", "Mauritius");
		map.put("MEX", "Mexico");
		map.put("FSM", "Micronesia, Federated States of");
		map.put("MDA", "Moldova");
		map.put("MCO", "Monaco");
		map.put("MNG", "Mongolia");
		map.put("MNE", "Montenegro");
		map.put("MAR", "Morocco");
		map.put("MOZ", "Mozambique");
		map.put("NAM", "Namibia");
		map.put("NRU", "Nauru");
		map.put("NPL", "Nepal");
		map.put("NLD", "Netherlands");
		map.put("NZL", "New Zealand");
		map.put("NIC", "Nicaragua");
		map.put("NER", "Niger");
		map.put("NGA", "Nigeria");
		map.put("NOR", "Norway");
		map.put("OMN", "Oman");
		map.put("PAK", "Pakistan");
		map.put("PLW", "Palau");
		map.put("PAN", "Panama");
		map.put("PNG", "Papua New Guinea");
		map.put("PRY", "Paraguay");
		map.put("PER", "Peru");
		map.put("PHL", "Philippines");
		map.put("POL", "Poland");
		map.put("PRT", "Portugal");
		map.put("QAT", "Qatar");
		map.put("ROU", "Romania");
		map.put("RUS", "Russia");
		map.put("RWA", "Rwanda");
		map.put("KNA", "Saint Kitts and Nevis");
		map.put("LCA", "Saint Lucia");
		map.put("VCT", "Saint Vincent and the Grenadines");
		map.put("WSM", "Samoa");
		map.put("SMR", "San Marino");
		map.put("STP", "São Tomé and Príncipe");
		map.put("SAU", "Saudi Arabia");
		map.put("SEN", "Senegal");
		map.put("SRB", "Serbia");
		map.put("SYC", "Seychelles");
		map.put("SLE", "Sierra Leone");
		map.put("SGP", "Singapore");
		map.put("SVK", "Slovakia");
		map.put("SVN", "Slovenia");
		map.put("SLB", "Solomon Islands");
		map.put("SOM", "Somalia");
		map.put("ZAF", "South Africa");
		map.put("SSD", "South Sudan");
		map.put("ESP", "Spain");
		map.put("LKA", "Sri Lanka");
		map.put("SDN", "Sudan");
		map.put("SUR", "Suriname");
		map.put("SWZ", "Swaziland");
		map.put("SWE", "Sweden");
		map.put("CHE", "Switzerland");
		map.put("SYR", "Syria");
		map.put("TJK", "Tajikistan");
		map.put("TZA", "Tanzania");
		map.put("THA", "Thailand");
		map.put("TLS", "Timor-Leste");
		map.put("TGO", "Togo");
		map.put("TON", "Tonga");
		map.put("TTO", "Trinidad and Tobago");
		map.put("TUN", "Tunisia");
		map.put("TUR", "Turkey");
		map.put("TKM", "Turkmenistan");
		map.put("TUV", "Tuvalu");
		map.put("UGA", "Uganda");
		map.put("UKR", "Ukraine");
		map.put("ARE", "United Arab Emirates");
		map.put("GBR", "United Kingdom");
		map.put("USA", "United States");
		map.put("URY", "Uruguay");
		map.put("UZB", "Uzbekistan");
		map.put("VUT", "Vanuatu");
		map.put("VEN", "Venezuela");
		map.put("VNM", "Vietnam");
		map.put("YEM", "Yemen");
		map.put("ZMB", "Zambia");
		map.put("ZWE", "Zimbabwe");
		return Collections.unmodifiableMap(map);
	}

	private static Map<String, String> initStates() {
		final Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("AL", "Alabama");
		map.put("AK", "Alaska");
		map.put("AZ", "Arizona");
		map.put("AR", "Arkansas");
		map.put("CA", "California");
		map.put("CO", "Colorado");
		map.put("CT", "Connecticut");
		map.put("DE", "Delaware");
		map.put("DC", "District of Columbia");
		map.put("FL", "Florida");
		map.put("GA", "Georgia");
		map.put("HI", "Hawaii");
		map.put("ID", "Idaho");
		map.put("IL", "Illinois");
		map.put("IN", "Indiana");
		map.put("IA", "Iowa");
		map.put("KS", "Kansas");
		map.put("KY", "Kentucky");
		map.put("LA", "Louisiana");
		map.put("ME", "Maine");
		map.put("MD", "Maryland");
		map.put("MA", "Massachusetts");
		map.put("MI", "Michigan");
		map.put("MN", "Minnesota");
		map.put("MS", "Mississippi");
		map.put("MO", "Missouri");
		map.put("MT", "Montana");
		map.put("NE", "Nebraska");
		map.put("NV", "Nevada");
		map.put("NH", "New Hampshire");
		map.put("NJ", "New Jersey");
		map.put("NM", "New Mexico");
		map.put("NY", "New York");
		map.put("NC", "North Carolina");
		map.put("ND", "North Dakota");
		map.put("OH", "Ohio");
		map.put("OK", "Oklahoma");
		map.put("OR", "Oregon");
		map.put("PA", "Pennsylvania");
		map.put("RI", "Rhode Island");
		map.put("SC", "South Carolina");
		map.put("SD", "South Dakota");
		map.put("TN", "Tennessee");
		map.put("TX", "Texas");
		map.put("UT", "Utah");
		map.put("VT", "Vermont");
		map.put("VA", "Virginia");
		map.put("WA", "Washington");
		map.put("WV", "West Virginia");
		map.put("WI", "Wisconsin");
		map.put("WY", "Wyoming");
		return Collections.unmodifiableMap(map);
	}

	private static final Map<String, String> initCanadianProvinces() {
		final Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("AB", "Alberta");
		map.put("BC", "British Columbia");
		map.put("MB", "Manitoba");
		map.put("NB", "New Brunswick");
		map.put("NL", "Newfoundland and Labrador");
		map.put("NS", "Nova Scotia");
		map.put("ON", "Ontario");
		map.put("PE", "Prince Edward Island");
		map.put("QC", "Quebec");
		map.put("SK", "Saskatchewan");
		return Collections.unmodifiableMap(map);
	}

	private static final Map<String, String> initCanadianTerritories() {
		final Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("NT", "Northwest Territories");
		map.put("NU", "Nunavut");
		map.put("YT", "Yukon");
		return Collections.unmodifiableMap(map);
	}

}
