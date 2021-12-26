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

import com.pm.shop.model.vo.Cart;

public class CartDao {
	
	private Properties prop = new Properties();
	
	public CartDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(CartDao.class.getResource("/db/sql/shop/mp-cart-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Cart> selectList(Connection conn, int userNo){
		
		ArrayList<Cart> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Cart(rset.getString("product_name"),
								  rset.getString("product_op"),
								  rset.getInt("amount"),
								  rset.getInt("price")						
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
	
	
	public Cart selectSum(Connection conn, int userNo) {
		Cart c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSum");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = (new Cart(rset.getInt("pricesum"),
						       rset.getInt("amountsum")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return c;
	}
	
	
}


