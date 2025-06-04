package com.flalottery.secondchance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.domain.Draw;
import com.flalottery.secondchance.domain.GameImage;
import com.flalottery.secondchance.domain.GameStyle;
import com.flalottery.secondchance.domain.Page;

import oracle.jdbc.OracleTypes;

public class PromoContentDAO extends BaseDAO {

	private static final Logger logger = LoggerFactory.getLogger(PromoContentDAO.class);

	public Page getPage(final Integer gameId, final Integer pageTypeId) throws SQLException {
		Validate.notNull(gameId);
		Validate.notNull(pageTypeId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.PAGE_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.setInt(2, pageTypeId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(3);
			final Page page = new Page();
			if (rs.next()) {
				page.setGameId(rs.getInt(1));
				page.setPageTypeId(rs.getInt(2));
				page.setPageContent(rs.getString(3));
			}
			return page;
		} finally {
			finalBlock();
		}
	}

	public Page getWinnersPage(final Integer gameId, final Integer drawId) throws SQLException {
		Validate.notNull(gameId);
		Validate.notNull(drawId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.PAGE_WINNERS_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.setInt(2, drawId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(3);
			final Page page = new Page();
			if (rs.next()) {
				page.setGameId(rs.getInt(1));
				page.setPageTypeId(rs.getInt(2));
				page.setPageContent(rs.getString(3));
			}
			return page;
		} finally {
			finalBlock();
		}
	}

	public List<Page> getWinnersPages(final Integer gameId) throws SQLException {
		Validate.notNull(gameId);
		List<Page> list = new ArrayList<Page>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.PAGES_WINNERS_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			while (rs.next()) {
				Page page = new Page();
				page.setGameId(rs.getInt(1));
				page.setPageTypeId(rs.getInt(2));
				page.setPageContent(rs.getString(3));
				page.setDrawId(rs.getInt(4));
				list.add(page);
			}
			return list;
		} finally {
			finalBlock();
		}
	}

	public GameImage getImage(final Integer gameId, final Integer imageTypeId) throws SQLException {
		Validate.notNull(gameId);
		Validate.notNull(imageTypeId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.IMAGE_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.setInt(2, imageTypeId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(3);
			final GameImage gameImage = new GameImage();
			if (rs.next()) {
				gameImage.setGameId(rs.getInt(1));
				gameImage.setImageTypeId(rs.getInt(2));
				gameImage.setImageName(rs.getString(3));
				gameImage.setAltText(rs.getString(4));
			}
			return gameImage;
		} finally {
			finalBlock();
		}
	}

	public List<GameImage> getImages(final Integer gameId) throws SQLException {
		Validate.notNull(gameId);
		List<GameImage> list = new ArrayList<GameImage>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.IMAGES_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			while (rs.next()) {
				GameImage gameImage = new GameImage();
				gameImage.setGameId(rs.getInt(1));
				gameImage.setImageTypeId(rs.getInt(2));
				gameImage.setImageName(rs.getString(3));
				gameImage.setAltText(rs.getString(4));
				list.add(gameImage);
			}
			return list;
		} finally {
			finalBlock();
		}
	}
	
	public List<Draw> getDraws(final Integer gameId) throws SQLException {
		Validate.notNull(gameId);
		List<Draw> list = new ArrayList<Draw>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.DRAWS_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			while (rs.next()) {
				Draw draw = new Draw();
				draw.setGameId(rs.getInt(1));
				draw.setDrawNumber(rs.getInt(2));
				draw.setStartDate(rs.getDate(3));
				draw.setEndDate(rs.getDate(4));
				draw.setDrawDate(rs.getDate(5));
				draw.setDrawId(rs.getInt(6));
				list.add(draw);
			}
			return list;
		} finally {
			finalBlock();
		}
	}
	
	
	public GameStyle getStyle(final Integer gameId, final Integer styleTypeId) throws SQLException {
		Validate.notNull(gameId);
		Validate.notNull(styleTypeId);
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.STYLE_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.setInt(2, styleTypeId.intValue());
			cStmnt.registerOutParameter(3, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(3);
			final GameStyle gameStyle = new GameStyle();
			if (rs.next()) {
				gameStyle.setGameId(rs.getInt(1));
				gameStyle.setStyleTypeId(rs.getInt(2));
				gameStyle.setStyleInfo(rs.getString(3));
			}
			return gameStyle;
		} finally {
			finalBlock();
		}
	}

	public List<GameStyle> getStyles(final Integer gameId) throws SQLException {
		Validate.notNull(gameId);
		List<GameStyle> list = new ArrayList<GameStyle>();
		try {
			cStmnt = getConnection().prepareCall(StoredProcs.STYLES_GET);
			cStmnt.setInt(1, gameId.intValue());
			cStmnt.registerOutParameter(2, OracleTypes.CURSOR);
			cStmnt.execute();
			rs = (ResultSet) cStmnt.getObject(2);
			while (rs.next()) {
				GameStyle gameStyle = new GameStyle();
				gameStyle.setGameId(rs.getInt(1));
				gameStyle.setStyleTypeId(rs.getInt(2));
				gameStyle.setStyleInfo(rs.getString(3));
				list.add(gameStyle);
			}
			return list;
		} finally {
			finalBlock();
		}
	}
	
}
