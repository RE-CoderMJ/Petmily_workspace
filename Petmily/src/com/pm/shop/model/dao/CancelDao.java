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
import com.pm.shop.model.vo.Cart;

public class CancelDao {
private Properties prop = new Properties();
	
	public CancelDao() {
		try {
			prop.loadFromXML(new FileInputStream(CancelDao.class.getResource("/db/sql/shop/mp-cancel-mapper.xml").getPath() ));
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
	
	
	
	public ArrayList<Cancel> selectList(Connection conn, PageInfo pi, int userNo){
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
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2,  startRow);
			pstmt.setInt(3,  endRow);
			
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
	
	
	public ArrayList<Cancel> selectTermList(Connection conn, int search, PageInfo pi, int userNo){
		// select문 -> ResultSet(여러행) -> ArrayList<Cancel>
		ArrayList<Cancel> termList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(search == 7) {
			sql = prop.getProperty("selectTermListA");
		} else if(search == 1) {
			sql = prop.getProperty("selectTermListB");
		}else if(search == 3) {
			sql = prop.getProperty("selectTermListC");
		}else {
			sql = prop.getProperty("selectTermListD");
		}

		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1 ) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2,  startRow);
			pstmt.setInt(3,  endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				termList.add(new Cancel(rset.getInt("cancel_ono"),
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
		return termList;
	}
	
	
	public Cancel selectDetailList(Connection conn, int orderNo, int userNo) {
		// select문 -> ResultSet(한행) -> Cancel
		Cancel c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			pstmt.setInt(2, userNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				
				c = new Cancel(rset.getInt("cancel_ono"),
								 rset.getString("cancel_pname"),
								 rset.getInt("order_pnum"),
								 rset.getString("cancel_opoption"),
								 rset.getInt("cancel_opamount"),
								 rset.getInt("cancel_price"),
								 rset.getString("cancel_name"),
								 rset.getString("cancel_phone"),
								 rset.getString("cancel_address"),
								 rset.getString("payment"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return c;
	}
	
	// 주문취소 신청 페이지 조회할 것들
	public Cancel selectCancelApp(Connection conn, int userNo, int orderNo) {
		// select문 -> ResultSet(한행) -> Cancel
		Cancel ca1 = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCancelApp");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, orderNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				
				ca1 = new Cancel(rset.getInt("CANCEL_ONO"),
								 rset.getDate("ORDER_DATE"),
								 rset.getString("MEM_NAME"),
								 rset.getString("PHONE"),
								 rset.getString("ADDRESS"),
								 rset.getString("DELMEMO"),
								 rset.getInt("PRICE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return ca1;
		
	}
	
	public Cancel selectSum(Connection conn, int userNo, int orderNo) {
		Cancel sum = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSum");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, orderNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				sum = (new Cancel(rset.getInt("pricesum"),
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
	
	
	public int insertCancel(Connection conn, Cancel cc) {
		
		// insert문 => 처리된행수 => 트랜잭션처리
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCancel");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cc.getOrderNo());
			pstmt.setString(2, cc.getCcReason());
			pstmt.setString(3, cc.getCcPayment());
			pstmt.setInt(4, cc.getOrderPnum());
			pstmt.setString(5, cc.getDeliveryMemo());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
}
