package com.pm.shop.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.pm.shop.model.vo.Exchange;
import com.pm.shop.model.vo.OrderSelect;

public class ExchangeDao {
	
	private Properties prop = new Properties();
	
	public ExchangeDao() {
		try {
			prop.loadFromXML(new FileInputStream( PointDao.class.getResource("/db/sql/shop/mp-exchange-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public OrderSelect selectOrderProduct(Connection conn, int orderPnum) {
		// select문 -> ResultSet(한행) ->OrderSelect
		OrderSelect o = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderPnum);
						
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				o = new OrderSelect(rset.getString("order_poption")
								  , rset.getInt("order_pamount")
								  , rset.getInt("price")
								  , rset.getString("product_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		 return o;
		
		
	}
	
	
	
	public OrderSelect selectOrderDelivery(Connection conn, int orderNo) {
		// select문 -> ResultSet(한행) ->OrderSelect
		OrderSelect od = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderDelivery");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				od = new OrderSelect(rset.getString("mem_name")
								  , rset.getString("phone")
								  , rset.getString("address")
								  , rset.getString("delivery_memo"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return od;
	}


	public int insertBoard(Connection conn, Exchange ec) {

		
		
		
		
		
		
	}
	
	
	
	
}
