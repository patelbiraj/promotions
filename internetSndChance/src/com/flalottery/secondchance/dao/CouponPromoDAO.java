package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.Validate;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import oracle.jdbc.OracleTypes;

import com.flalottery.secondchance.dataobject.CouponPromoDO;



public class CouponPromoDAO extends BaseDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(TicketEntryDAO.class);
	
	public List<CouponPromoDO> getCouponPromo(final Integer playerID, final Integer promotionID) throws SQLException{
		List<CouponPromoDO> CouponDOs = new ArrayList<CouponPromoDO>(10);		
		
		try {
			cStmnt = getConnection().prepareCall("{call WEB_SECOND_CHANCE.get_coupon_by_promo(?,?,?)}");
			cStmnt.setInt(1, playerID);
			cStmnt.setInt(2, promotionID);			
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(3));
			
			if(rs != null) {
				while (rs.next()) {					
					CouponDOs.add(new CouponPromoDO(rs.getInt(1), rs.getString(5), rs.getString(6), rs.getInt(4), rs.getString(3), rs.getInt(2), rs.getString(7), new DateTime(rs.getDate(8)),new DateTime(rs.getDate(9))));
					
				}
			}
		} finally {
			finalBlock();
		}
		
		return CouponDOs;
	}
	
	public String getCouponFilename(final Integer playerID, final Integer promotionID, final Integer couponID) throws SQLException{
	
		String result = "";
		try {
			cStmnt = getConnection().prepareCall("{call WEB_SECOND_CHANCE.get_coupon_filename(?,?,?,?)}");
			cStmnt.setInt(1, playerID);
			cStmnt.setInt(2, promotionID);
			cStmnt.setInt(3, couponID);
			cStmnt.registerOutParameter(4, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(4));
			
			if(rs.next())
				result = rs.getString(1);
			System.out.println("\nprinting coupon filename: " + result);
		} finally {
			finalBlock();
		}
		System.out.println("\nprinting coupon filename: " + result);
		return result;
	}
	
	public List<CouponPromoDO> getCouponPromoMobile(final Integer playerID, final Integer promotionID) throws SQLException {
		System.out.println("Coupon Mobile::::playerId = " + playerID + ", promotionId = " + promotionID);
		
		Validate.notNull(playerID);
		Validate.notNull(promotionID);
		final List<CouponPromoDO> CouponMobileDOs = new ArrayList<CouponPromoDO>(10);
		try {
			cStmnt = getConnection().prepareCall("{call WEB_SECOND_CHANCE.get_coupon_by_promo(?,?,?)}");
			cStmnt.setInt(1, playerID);
			cStmnt.setInt(2, promotionID.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			setRs((ResultSet) cStmnt.getObject(3));			
			if(rs != null) {
				while (rs.next()) {
					CouponMobileDOs.add(new CouponPromoDO(rs.getInt(1), rs.getString(5), rs.getString(6), rs.getInt(4), rs.getString(3), rs.getInt(2), rs.getString(7), new DateTime(rs.getDate(8)), new DateTime(rs.getDate(9))));				
				}
			}
			return CouponMobileDOs;
		} finally {
			finalBlock();
		}
	}	
	
}