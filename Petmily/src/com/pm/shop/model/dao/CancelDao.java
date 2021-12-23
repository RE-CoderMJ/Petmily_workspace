package com.pm.shop.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.vo.Cancel;

public class CancelDao {
private Properties prop = new Properties();
	
	public CancelDao() {
		try {
			prop.loadFromXML(new FileInputStream(CancelDao.class.getResource("/db/sql/shop/mp-cancel-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		// select문 -> ResultSet(한개) -> int
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCount");
		
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
	
	
	
	public ArrayList<Cancel> selectList(Connection conn, PageInfo pi){
		// select문 => resultset(여러행) => ArrayList<Point>

		ArrayList<Cancel> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			/*
			 * 시작값 : (currentPage - 1) * boardLimit + 1
			 * 끝값 : 시작값 + boardLimit - 1
			 *  
			 */
			int startRow = (pi.getCurrentPage() -1 ) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1,  startRow);
			pstmt.setInt(2,  endRow);
			
			rset = pstmt.executeQuery();
		
			while(rset.next()) {
				list.add(new Cancel(rset.getInt("cancel_ono"),
								 rset.getString("cancel_pname"),
						   		 rset.getString("cancel_opoption"),
						   		 rset.getInt("cancel_opamount"),
						   		 rset.getInt("cancel_price"),
						   		 rset.getDate("order_date"),
						   		 rset.getString("cc_sledding"),
						   		 rset.getString("cc_payment")
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
	
	
	public ArrayList<Cancel> selectTermList(Connection conn, int search){
		// select문 -> ResultSet(여러행) -> ArrayList<Cancel>
		ArrayList<Cancel> termList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		if(search == 7) {
			String sql = prop.getProperty("selectTermListA");
		} else if(search == 1) {
			String sql = prop.getProperty("selectTermListB");
		}else if(search == 3) {
			String sql = prop.getProperty("selectTermListC");
		}else {
			String sql = prop.getProperty("selectTermListD");
		}

		
		try {
			pstmt = conn.prepareStatement(sql);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}
