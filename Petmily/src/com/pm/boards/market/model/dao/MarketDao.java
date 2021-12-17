package com.pm.boards.market.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.boards.market.model.vo.Market;
import com.pm.common.model.vo.Attachment;

public class MarketDao {
	
	private Properties prop = new Properties();
	
	public MarketDao() {
		try {
			prop.loadFromXML(new FileInputStream(MarketDao.class.getResource("/db/sql/boards/market-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertMarket(Connection conn, Market m) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMarket");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(m.getMarketWriter()));
			pstmt.setInt(2, Integer.parseInt(m.getCategory()));
			pstmt.setInt(3, Integer.parseInt(m.getdCategory()));
			pstmt.setString(4, m.getMarketTitle());
			pstmt.setString(5, m.getMarketContent());
			pstmt.setInt(6, m.getPrice());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public int insertAttachmentList(Connection conn, ArrayList<Attachment> list) {
		
		if(list.isEmpty()) {
			return 1;
		}
		int result = 0;
	
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachmentList");
		
		try {
				
			for(Attachment at : list) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, at.getOriginName());
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
					
				result = pstmt.executeUpdate();
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public ArrayList<Market> selectMarketList(Connection conn){
		ArrayList<Market> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMarketList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Market m = new Market();
				
				m.setMarketNo(rset.getInt("market_no"));
				m.setCategory(rset.getString("category"));
				m.setdCategory(rset.getString("d_category"));
				m.setMarketTitle(rset.getString("market_title"));
				m.setMarketContent(rset.getString("market_content"));
				m.setPrice(rset.getInt("price"));
				m.setTitleImg(rset.getString("titleImg"));
				
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
}
