package com.pm.admin_Market.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Market.model.vo.Market;
import com.pm.common.model.vo.PageInfo;

public class MarketDao {
	
	private Properties prop = new Properties();
	
	public MarketDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MarketDao.class.getResource("/db/sql/admin/market-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	/* 1. <중고거래> 전체게시글 수 */
	public int selectListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Market> selectList(Connection conn, PageInfo pi) {
		ArrayList<Market> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Market(rset.getInt("market_no"),
								 	rset.getString("market_writer"),
								 	rset.getString("category"),
								 	rset.getString("d_category"),
								 	rset.getString("market_title"),
								 	rset.getString("price"),
								 	rset.getString("enroll_date")));
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return  list;
		
	}
	
	
	/* 4. <중고거래> 조회*/
	public Market selectMarket(Connection conn, int marketNo) {
		Market m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMarket");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, marketNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Market(rset.getInt("market_no"),
							   rset.getString("market_writer"),
							   rset.getString("category"),
							   rset.getString("d_category"),
							   rset.getString("market_title"),
							   rset.getString("price"),
							   rset.getString("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	
	/* 6. <중고거래> 삭제 */
	public int deleteMarket(Connection conn, int marketNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMarket");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, marketNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
