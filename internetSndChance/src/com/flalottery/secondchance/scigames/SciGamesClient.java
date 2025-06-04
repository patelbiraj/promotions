package com.flalottery.secondchance.scigames;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class SciGamesClient {

	public JSONObject sciGamesAPICall(String httpURL, String requestString, String protocol) {		
		JSONObject jsonResponseObject = null;		
		try {			
			System.out.println("Test Success");
			URL url = new URL(httpURL);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			JSONParser parse = new JSONParser();
			httpURLConnection.setDoOutput(true);
			httpURLConnection.setRequestMethod(protocol);
			httpURLConnection.setRequestProperty("Content-Type", "application/json");		
			OutputStream oStream = httpURLConnection.getOutputStream();
			oStream.write(requestString.getBytes());
			oStream.flush();
			
			if (httpURLConnection.getResponseCode() != 200) {
				System.out.println(" -- Call to Sci Games API Have Failed --" + "  Message "+httpURLConnection.getResponseMessage() + "-- "+ httpURLConnection.getResponseCode());
				throw new Exception("Http Error Code: " + httpURLConnection.getResponseCode());
			}
			
			if (httpURLConnection.getResponseCode() == 403) {
				System.out.println(" -- Call to Sci Games API Have Failed as Forbidden--" + "  Message "+httpURLConnection.getResponseMessage() + "-- "+ httpURLConnection.getResponseCode());
				throw new Exception("Http Error Code: " + httpURLConnection.getResponseCode());
			}
			
			BufferedReader br = new BufferedReader(new InputStreamReader((httpURLConnection.getInputStream())));
			String output = br.readLine();
			jsonResponseObject = (JSONObject) parse.parse(output);

		} catch (Exception exception) {
			exception.printStackTrace();
			jsonResponseObject = null;
		}		
		return jsonResponseObject;
	}
}
