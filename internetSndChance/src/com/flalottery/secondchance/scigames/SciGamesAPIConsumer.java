package com.flalottery.secondchance.scigames;

import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.utility.RunTimeEnv;

public class SciGamesAPIConsumer {

	public String ENV_TYPE = null;
	public String games_URL_To_FORWARD = null;

	public String getGameURL(int numberOfenteries) {
		SciGamesAuthentication sgAPIAuth = new SciGamesAuthentication();
		String token = sgAPIAuth.sciGamesAuthenticationInvoker(getEnvironmentSpecificURL(), ENV_TYPE);
		if (!token.isEmpty() && token.length() > 0) {
			SciGamesURL sciGamesURL = new SciGamesURL();
			games_URL_To_FORWARD = sciGamesURL.sciGamesURLInvoker(getEnvironmentSpecificURL(), ENV_TYPE, token,numberOfenteries);
		}

		return games_URL_To_FORWARD;
	}

	public String getEnvironmentSpecificURL() {
		String envType = RunTimeEnv.getEnvType();
		//String envType = "DEV";
		String sciGamesURL = "";

		if (envType.equals(RunTimeEnv.PROD)) {
			sciGamesURL = Constants.SCI_GAMES_PROD_URL;
			ENV_TYPE = "PROD";
		} else if (envType.equals(RunTimeEnv.QA)) {
			sciGamesURL = Constants.SCI_GAMES_QA_URL;
			ENV_TYPE = "QA";
		} else if (envType.equals(RunTimeEnv.DEV)) {
			sciGamesURL = Constants.SCI_GAMES_QA_URL;
			ENV_TYPE = "DEV";
		} else {
			sciGamesURL = Constants.SCI_GAMES_QA_URL;
			ENV_TYPE = "STAGE";
		}

		System.out.println(" --- Environment Details from Sci Games" + ENV_TYPE + "--- URL " + sciGamesURL);
		return sciGamesURL;

	}

}
