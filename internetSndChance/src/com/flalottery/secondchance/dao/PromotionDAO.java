package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;

import oracle.jdbc.OracleTypes;

import org.apache.commons.lang3.Validate;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.PTAProp;
import com.flalottery.secondchance.domain.PromoDraw;
import com.flalottery.secondchance.domain.PromoGame;
import com.flalottery.secondchance.domain.PromoPrizeLevel;
import com.flalottery.secondchance.domain.Promotion;
import com.flalottery.secondchance.domain.PromotionType;
import com.flalottery.secondchance.domain.TicketType;
import com.flalottery.secondchance.domain.VariableWeightType;
import com.flalottery.secondchance.utility.SecondChanceDates;

public class PromotionDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(PromotionDAO.class);

	public Map<Integer, Promotion> getAllPromotions() throws SQLException {
		final Map<Integer, Promotion> promotions = getPromotions();
		final List<PromoGame> games = getAllPromoGames();
		final List<PromoDraw> draws = getAllPromoDraws();
		final List<PromoPrizeLevel> prizeLevels = getAllPromoPrizeLevels();

		for (final PromoGame g : games) {
			if (promotions.containsKey(g.getPromotionId())) {
				promotions.get(g.getPromotionId()).addPromoGame(g);
			}
		}
		for (final PromoDraw d : draws) {
			final ListIterator<PromoPrizeLevel> plli = prizeLevels.listIterator();
			while (plli.hasNext()) {
				final PromoPrizeLevel pl = plli.next();
				if (d.getPromotionId().equals(pl.getPromotionId())) {
					d.addPromoPrizeLevel(pl);
					plli.remove();
				}
			}
			if (promotions.containsKey(d.getPromotionId())) {
				promotions.get(d.getPromotionId()).addPromoDraw(d);
			}
		}

		return Collections.unmodifiableMap(promotions);
	}

	private Map<Integer, Promotion> getPromotions() throws SQLException {
		final Map<Integer, Promotion> promotions = new TreeMap<Integer, Promotion>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_ALL_PROMOTIONS);
			cStmnt.registerOutParameter(1, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(1));
			while (rs.next()) {
				promotions.put(
						Integer.valueOf(rs.getInt(1)),
						new Promotion(Integer.valueOf(rs.getInt(1)), rs.getString(2), SecondChanceDates.getDaysInclusiveInterval(new DateTime(rs.getDate(3)),
								new DateTime(rs.getDate(4))), PromotionType.convertToPromotionType(rs.getString(5)), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
			}
			
			Promotion promotion = promotions.get(107);
			promotions.remove(107);
			promotions.put(999, promotion); 
			
			return promotions;
		} finally {
			finalBlock();
		}
	}


	private List<PromoGame> getAllPromoGames() throws SQLException {
		final List<PromoGame> games = new ArrayList<PromoGame>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_ALL_PROMO_GAMES);
			cStmnt.registerOutParameter(1, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(1));
			while (rs.next()) {
				games.add(new PromoGame(Integer.valueOf(rs.getInt(2)), rs.getString(3), Integer.valueOf(rs.getInt(4)), VariableWeightType.convertToVariableWeightType(rs
						.getString(5)), TicketType.convertToTicketType(rs.getString(6), Integer.valueOf(rs.getInt(7)))));
			}
			return games;
		} finally {
			finalBlock();
		}
	}

	private List<PromoDraw> getAllPromoDraws() throws SQLException {
		final List<PromoDraw> draws = new ArrayList<PromoDraw>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_ALL_PROMO_DRAWS);
			cStmnt.registerOutParameter(1, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(1));
			while (rs.next()) {
				draws.add(new PromoDraw(Integer.valueOf(rs.getInt(2)), Integer.valueOf(rs.getInt(3)), SecondChanceDates.getDaysInclusiveInterval(new DateTime(rs.getDate(4)),
						new DateTime(rs.getDate(5))), new DateTime(rs.getDate(6))));
			}
			return draws;
		} finally {
			finalBlock();
		}
	}

	private List<PromoPrizeLevel> getAllPromoPrizeLevels() throws SQLException {
		final List<PromoPrizeLevel> prizeLevels = new ArrayList<PromoPrizeLevel>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_ALL_PROMO_PRIZE_LEVELS);
			cStmnt.registerOutParameter(1, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(1));
			while (rs.next()) {
				prizeLevels.add(new PromoPrizeLevel(Integer.valueOf(rs.getInt(2)), Integer.valueOf(rs.getInt(3)), Integer.valueOf(rs.getInt(4)), rs.getString(5)));
			}
			return prizeLevels;
		} finally {
			finalBlock();
		}
	}
	
	public DatabaseStatusFlag validatePromo(final Integer promoId) throws SQLException {
		Validate.notNull(promoId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.VALIDATE_PROMO);
			cStmnt.setInt(1, promoId);
			cStmnt.registerOutParameter(2, OracleTypes.VARCHAR);
			cStmnt.execute();
			DatabaseStatusFlag databaseStatusFlag = DatabaseStatusFlag.convertToStatusFlag(cStmnt.getString(2));
			return databaseStatusFlag;
		} finally {
			finalBlock();
		}
	}
	
	public String getRedirectURL() throws SQLException {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_EXT_URL);
			cStmnt.setInt(1, 107);
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			String url = "";
			if (rs.next()) {
				url = rs.getString(1);
			}
			return url;
		} finally {
			finalBlock();
		}
	}
	
	
	
}
