package com.flalottery.secondchance.utility;

import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.action.RegisterEmailAction;
import com.flalottery.secondchance.dao.UtilDAO;
import com.ibm.disthub2.impl.client.Logger;

public class RunTimeEnv {

	private static String envType; 
	public static final String PROD = "PROD";
	public static final String QA = "QA";
	public static final String TEST = "TEST";
	public static final String DEV = "DEV";
	
	static {
		String url = new UtilDAO().getURL();
		if(url.endsWith("devoltp")) {
			envType = DEV;
		} else if(url.endsWith("qaoltp")) {
			envType = QA;
		} else {
			envType = PROD;
		}
    }

	public static String getEnvType() {
		System.out.println(" DB RunTimeEnv ="+envType.toString());
		return envType;
	}	
}
