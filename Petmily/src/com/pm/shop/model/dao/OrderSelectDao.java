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
import com.pm.shop.model.vo.OrderSelect;

public class OrderSelectDao {

	private Properties prop = new Properties();
	
	public OrderSelectDao() {
		try {
			prop.loadFromXML(new FileInputStream(OrderSelectDao.class.getResource("/db/sql/shop/mp-order-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn, int userNo) {
		// select문 -> ResultSet(한개) -> int
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
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
	
	
	
	public ArrayList<OrderSelect> selectList(Connection conn, PageInfo pi, int userNo){
		// select문 => resultset(여러행) => ArrayList<Point>

		ArrayList<OrderSelect> list = new ArrayList<>();
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
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2,  startRow);
			pstmt.setInt(3,  endRow);
			
			rset = pstmt.executeQuery();
		
			while(rset.next()) {
				list.add(new OrderSelect(rset.getInt("order_no"),
										 rset.getString("product_name"),
								   		 rset.getString("order_se_poption"),
								   		 rset.getInt("order_se_pamount"),
								   		 rset.getInt("price"),
								   		 rset.getDate("order_date")
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
	
	
	public ArrayList<OrderSelect> selectDetailList(Connection conn, int orderNo, int userNo) {
		// select문 => resultset(여러행) => ArrayList<Point>

		ArrayList<OrderSelect> osdetail = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			pstmt.setInt(2, userNo);
			
			rset = pstmt.executeQuery();
		
			while(rset.next()) {
				osdetail.add(new OrderSelect(rset.getInt("order_no"),
										 rset.getString("product_name"),
								   		 rset.getString("order_se_poption"),
								   		 rset.getInt("order_se_pamount"),
								   		 rset.getInt("price"),
								   		 rset.getDate("order_date"),
								   		 rset.getInt("order_pnum")
										));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return osdetail;

		
	}
		
	
	public ArrayList<OrderSelect> selectSum(Connection conn, int userNo) {
		ArrayList<OrderSelect> sum = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSum");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sum.add(new OrderSelect(rset.getInt("pricesum"),
									   rset.getInt("amountsum")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return sum;
	}

	
	
	
	
	
	
	
	
	
	
}//service() 끝
	
