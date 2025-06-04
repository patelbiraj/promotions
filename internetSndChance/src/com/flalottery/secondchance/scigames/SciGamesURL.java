package com.flalottery.secondchance.scigames;

import org.json.simple.JSONObject;

import com.flalottery.secondchance.domain.Constants;

public class SciGamesURL {

	public String sciGamesURLInvoker(String gamesURL, String EnvironmentType, String token, int numberOfEnteries) {
		String input = null;
		String gameURLToForward = null;
		gamesURL = gamesURL.concat("/api/games/url");
		SciGamesClient sciGamesClient = new SciGamesClient();

		if (EnvironmentType.equalsIgnoreCase("DEV")) {
			input = "{\"token\":\"" + token + "\",\"options\":{\"gameId\":\"" + Constants.SCI_GAMES_ID + "\",\"serverType\":\"Static\",\"outcomeData\":{\"winner\":true ,\"entryValue\":\""+numberOfEnteries + "\"}}}";
		} else if (EnvironmentType.equalsIgnoreCase("QA")) {
			input = "{\"token\":\"" + token + "\",\"options\":{\"gameId\":\"" + Constants.SCI_GAMES_ID + "\",\"serverType\":\"Static\",\"outcomeData\":{\"winner\":true ,\"entryValue\":\""+numberOfEnteries + "\"}}}";
			
			
		}
		JSONObject gamesURLVO = sciGamesClient.sciGamesAPICall(gamesURL, input, "POST");
		if (gamesURLVO.get("success").toString().equalsIgnoreCase("true")) {
			gameURLToForward = gamesURLVO.get("gameUrl").toString();
		}
		return gameURLToForward;
	}

}


