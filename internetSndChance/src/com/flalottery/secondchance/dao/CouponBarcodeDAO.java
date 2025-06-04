package com.flalottery.secondchance.dao;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.Validate;

import oracle.jdbc.OracleTypes;

import com.flalottery.secondchance.dataobject.CouponBarcodeDO;
import com.flalottery.secondchance.dataobject.CouponDO;
import com.flalottery.secondchance.domain.Page;



public class CouponBarcodeDAO extends BaseDAO 
{
	public CouponBarcodeDO getCouponBarcode(final String memberID, final String couponId) throws SQLException
	{
		CouponBarcodeDO couponDO = null;
		String statusFlag = null;
		try
		{						
				cStmnt = getConnection().prepareCall(StoredProcs.GET_COUPON_BARCODE);
				cStmnt.setString(1, couponId);
				cStmnt.setString(2, memberID);
				cStmnt.registerOutParameter(3, java.sql.Types.NUMERIC);
				cStmnt.registerOutParameter(4, OracleTypes.VARCHAR);
				cStmnt.registerOutParameter(5, OracleTypes.VARCHAR);
				cStmnt.registerOutParameter(6, OracleTypes.VARCHAR);
				cStmnt.execute();
				statusFlag = cStmnt.getString(4);
				if(statusFlag.equalsIgnoreCase("successful_coupon_retrieval")){
					couponDO = new CouponBarcodeDO(cStmnt.getBigDecimal(3).toPlainString(),cStmnt.getString(5),cStmnt.getString(6));
				} else if(statusFlag.equalsIgnoreCase("duplicate_index_detected")){
					return getCouponBarcode(memberID,couponId);
				}		
		}
		finally
		{
			finalBlock();
		}
		return couponDO;		
	}
	
	public CouponBarcodeDO getCouponBarcodeNE(final Integer memberID, final String couponId) throws SQLException
	{
		CouponBarcodeDO couponDO = null;
		String statusFlag = null;
		try
		{						
				cStmnt = getConnection().prepareCall(StoredProcs.GET_COUPON_BARCODE_NE);
				cStmnt.setString(1, couponId);
				cStmnt.setInt(2, memberID);
				cStmnt.registerOutParameter(3, java.sql.Types.NUMERIC);
				cStmnt.registerOutParameter(4, OracleTypes.VARCHAR);
				cStmnt.execute();
				statusFlag = cStmnt.getString(4);
				if(statusFlag.equalsIgnoreCase("successful_coupon_retrieval")){
					couponDO = new CouponBarcodeDO(cStmnt.getBigDecimal(3).toPlainString());
				} else if(statusFlag.equalsIgnoreCase("duplicate_index_detected")){
					return getCouponBarcodeNE(memberID,couponId);
				}		
		}
		finally
		{
			finalBlock();
		}
		return couponDO;		
	}

	
	public String getMemberEmail(final BigDecimal memberId) throws SQLException
	{
		String email = null;
		try
		{		
			cStmnt = getConnection().prepareCall(StoredProcs.GET_COUPON_EMAIL);
			cStmnt.setBigDecimal(2, memberId);
			cStmnt.registerOutParameter(1, OracleTypes.VARCHAR);
			cStmnt.execute();
			email = cStmnt.getString(1);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		finally
		{
			finalBlock();
		}
		return email;		
	}
	

	private boolean setBoolean(String varcharBoolean)
	{
		return varcharBoolean.equalsIgnoreCase("true")?true:false;
	}
	
	public class AccessCodeResult{
		private int attemptsRemaining;
		private boolean validCode;
		
		public AccessCodeResult(int numberOfattempts, boolean validCode)
		{
			this.setAttemptsRemaining(4-numberOfattempts);
			this.setValidCode(validCode);
		}

		public int getAttemptsRemaining() {
			return attemptsRemaining;
		}

		public void setAttemptsRemaining(int attemptsRemaining) {
			this.attemptsRemaining = attemptsRemaining;
		}

		public boolean isValidCode() {
			return validCode;
		}

		public void setValidCode(boolean validCode) {
			this.validCode = validCode;
		}
		
		
	}
	public boolean isValidDate(String couponID) throws SQLException 
	{
		boolean validDate=false;
		try{
		cStmnt = getConnection().prepareCall(StoredProcs.IS_VALID_DATE);
		cStmnt.registerOutParameter(1,OracleTypes.VARCHAR);
		cStmnt.setString(2, couponID);
		cStmnt.execute();	
		validDate =  cStmnt.getNString(1).equalsIgnoreCase("true");
		}
		finally{
			finalBlock();
		}
		return validDate;
	}

	public boolean isValidDateNE(String couponID) throws SQLException 
	{
		boolean validDate=false;
		try{
		cStmnt = getConnection().prepareCall(StoredProcs.IS_VALID_DATE_NE);
		cStmnt.registerOutParameter(1,OracleTypes.VARCHAR);
		cStmnt.setString(2, couponID);
		cStmnt.execute();	
		validDate =  cStmnt.getNString(1).equalsIgnoreCase("true");
		}
		finally{
			finalBlock();
		}
		return validDate;
	}
	
	public List<CouponDO> getCurrentCoupons() throws SQLException {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_CURRENT_COUPONS);
			cStmnt.registerOutParameter(1, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(1);
			List<CouponDO> list = new ArrayList<CouponDO>();
			while (rs.next()) {
				CouponDO couponDO = new CouponDO();
				couponDO.setCouponId(String.valueOf(rs.getInt(1)));
				couponDO.setCouponDesc(rs.getString(2));
				couponDO.setCouponStartDate(rs.getDate(3));
				couponDO.setCouponEndDate(rs.getDate(4));
				list.add(couponDO);
			}
			return list;
		} finally {
			finalBlock();
		}
	}
	
	public CouponDO getCouponContent(Integer couponId) throws SQLException {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_COUPON_CONTENT);
			cStmnt.setInt(1, couponId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			CouponDO couponDO = new CouponDO();
			if (rs.next()) {
				couponDO.setCouponId(String.valueOf(rs.getInt(1)));
				couponDO.setCouponDesc(rs.getString(2));
				couponDO.setCouponStartDate(rs.getDate(3));
				couponDO.setCouponEndDate(rs.getDate(4));
				couponDO.setCouponContent(rs.getString(5));
			}
			return couponDO;
		} finally {
			finalBlock();
		}
	}
	
	public List<CouponDO> getMemberCoupons(Integer memberId) throws SQLException {
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.GET_MEMBER_COUPONS);
			cStmnt.setInt(1, memberId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			List<CouponDO> list = new ArrayList<CouponDO>();
			while (rs.next()) {
				CouponDO couponDO = new CouponDO();
				couponDO.setCouponBarCode(rs.getString(1));
				couponDO.setMemberId(rs.getInt(2));
				couponDO.setInitDateRequest(rs.getDate(3));
				couponDO.setNoOfRequest(rs.getInt(4));
				couponDO.setCouponDesc(rs.getString(5));
				couponDO.setCouponStartDate(rs.getDate(6));
				couponDO.setCouponEndDate(rs.getDate(7));
				couponDO.setCouponId(String.valueOf(rs.getInt(8)));
				list.add(couponDO);
			}
			return list;
		} finally {
			finalBlock();
		}
	}
	
}
