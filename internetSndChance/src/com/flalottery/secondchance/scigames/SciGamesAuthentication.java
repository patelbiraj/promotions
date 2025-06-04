package com.flalottery.secondchance.scigames;

import org.json.simple.JSONObject;

import com.flalottery.secondchance.domain.Constants;

public class SciGamesAuthentication {

	public String sciGamesAuthenticationInvoker(String gamesURL, String EnvironmentType) {
		SciGamesClient sciGamesClient = null;
		String input = null;
		String token = null;
		try {

			gamesURL = gamesURL.concat("/api/authenticate");
			sciGamesClient = new SciGamesClient();

			if (EnvironmentType.equalsIgnoreCase("DEV") || EnvironmentType.equalsIgnoreCase("QA")) {
				System.out.println(" DEV or QA enviroment - Authentication Credentials");
				input = "{\"name\": \"" + Constants.SCI_GAMES_QA_USER_ID + "\",\"password\": \"" + Constants.SCI_GAMES_QA_USER_KEY + "\" }";
			} else {
				System.out.println(" UAT or PROD enviroment - Authentication Credentials");
				input = "{\"name\": \"" + Constants.SCI_GAMES_UAT_PROD_USER_ID + "\",\"password\": \"" + Constants.SCI_GAMES_UAT_PROD_USER_KEY + "\" }";
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}

		JSONObject authenticationVO = sciGamesClient.sciGamesAPICall(gamesURL, input, "POST");
		if (authenticationVO.get("success").toString().equalsIgnoreCase("true")) {
			token = authenticationVO.get("token").toString();
		}
		return token;
	}
}
