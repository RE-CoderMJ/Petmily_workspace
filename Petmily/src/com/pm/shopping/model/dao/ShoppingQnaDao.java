package com.pm.shopping.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.shopping.model.vo.ShoppingQna;
import com.pm.common.model.vo.PageInfo;

public class ShoppingQnaDao {
	
	private Properties prop = new Properties();
	
	public ShoppingQnaDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(ShoppingQnaDao.class.getResource("/db/sql/shopping/shopping-qna-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
}

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


public ArrayList<ShoppingQna> selectList(Connection conn, PageInfo pi) {
	ArrayList<ShoppingQna> list = new ArrayList<>();
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
			list.add(new ShoppingQna(rset.getInt("pinquiry_no"),
					 rset.getString("membernick"),
					 rset.getString("pinquiry_title"),
					 rset.getString("pinquiry_date"),
					 rset.getInt("count")
					 ));		
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(rset);
		close(pstmt);
	}
	return list;
}

		public int insertShoppingQna(Connection conn, ShoppingQna s) {
			int result = 0;
			PreparedStatement pstmt = null;
						
			String sql = prop.getProperty("insertShoppingQna");
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, s.getMemberNick());
				pstmt.setString(2, s.getPinquiryTitle());
				pstmt.setString(3, s.getPinquiryContent());	
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
		}

		public int increaseCount(Connection conn, int pinquiryNo) {
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("increaseCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pinquiryNo);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}
				
		public ShoppingQna selectShoppingQna(Connection conn, int pinquiryNo) {
			Qna q = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectShoppingQna");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pinquiryNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					q = new Qna(rset.getInt("pinquiry_no"),
								rset.getString("membernick"),
								rset.getString("pinquiry_title"),
								rset.getString("pinquiry_content"),
								rset.getString("pinquiry_date"),
								rset.getInt("count")
							    );
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return q;
		}
		
		public int updateShoppingQna(Connection conn, ShoppingQna s) {
			int qResult = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("updateShoppingQna");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, s.getPinquiryTitle());
				pstmt.setString(2, s.getPinquiryContent());
				pstmt.setInt(3, s.getPinquiryNo());
				
				qResult = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally { 
				close(pstmt);
			}
			
			return qResult;
		}
		
		public int deleteShoppingQna(Connection conn, int pinquiryNo) {
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("deleteShoppingQna");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pinquiryNo);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}
}

