package com.pm.shop.model.dao;

import static com.pm.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.pm.shop.model.vo.OrderProduct;

public class ExchangeDao {
	
	private Properties prop = new Properties();
	
	public ExchangeDao() {
		try {
			prop.loadFromXML(new FileInputStream( PointDao.class.getResource("/db/sql/shop/mp-exchange-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public OrderProduct selectOrderProduct(Connection conn, int orderPnum) {
		// select문 -> ResultSet(한행) ->OrderProduct
		OrderProduct op = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrderProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderPnum);
						
			rset = pstmt.executeQuery();
			
			op = new OrderProduct(rset.getString("order_poption")
					            , rset.getInt("order_pamount")
					            , rset.getInt("price")
					            , rset.getString("product_name"));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		 return op;
		
		
	}
	
	
	
	/*
	public Exchange select(Connection conn) {
		// select문 -> ResultSet(한행) ->Exchange
		Exchange ec = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("select");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ec.add(new rset)
			}
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}
	
	*/
	
	
	
	
}
