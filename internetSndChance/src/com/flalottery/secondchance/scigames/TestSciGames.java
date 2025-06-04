package com.flalottery.secondchance.scigames;

public class TestSciGames {
	
	public static void main(String args[]) {
		SciGamesAPIConsumer sciGamesAPIConsumer = new SciGamesAPIConsumer();
		System.out.println(sciGamesAPIConsumer.getGameURL(5));
	}

}
