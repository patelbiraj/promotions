package com.flalottery.secondchance.utility;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.flalottery.secondchance.dataobject.ESAResponseDO;

public class ESAClient {
	
	ESAResponseDO esaResponseDO;
	
	public  ESAResponseDO validate(String esaURL, String ticketNumber, String pin, Integer  playerId, Integer gameNumber ) throws ParseException, IOException {
        boolean acceptedStatus = false;
        esaResponseDO = new ESAResponseDO();
        try {        	
        	URL url = new URL(esaURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            JSONParser parse = new JSONParser();
            conn.setDoOutput(true);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            String input = "{\"ticketNumber\": \"" + ticketNumber + "\",\"pin\": \"" + pin + "\",\"method\": \"manual\",\"playerId\":\""+playerId+"\",\"gameNumber\":\""+gameNumber+"\" }";

            OutputStream os = conn.getOutputStream();
            os.write(input.getBytes());
            os.flush();
            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP Error code : " + conn.getResponseCode());
            }
            BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
            String output = br.readLine();

            JSONObject esaResponseJsonObject = (JSONObject)parse.parse(output);
            esaResponseDO.setResponseMessage(esaResponseJsonObject.get("responseMessage").toString());
            esaResponseDO.setResponseStatus(esaResponseJsonObject.get("responseStatus").toString());
            
            if(null != esaResponseJsonObject && esaResponseJsonObject.get("responseStatus") != null) {
                if (esaResponseJsonObject.get("responseStatus").equals("ACCEPTED")) {
                    if(esaResponseJsonObject.get("ticketPrice") != null) {
                    	esaResponseDO.setTicketPrice(esaResponseJsonObject.get("ticketPrice").toString());
                    } else {
                    	esaResponseDO.setTicketPrice("0");
                    }
                    esaResponseDO.setAccepted(true);
                } else if (esaResponseJsonObject.get("responseStatus").equals("REJECTED")){
                    esaResponseDO.setAccepted(false);
                } else { /*Invalid ticket detail or Unknown error*/
                    esaResponseDO.setAccepted(false);
                }
            }
            conn.disconnect();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return esaResponseDO;
    }

}
