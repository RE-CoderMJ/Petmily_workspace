package com.pm.shop.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.pm.shop.model.vo.Exchange;

public class ExchangeDao {
	
	private Properties prop = new Properties();
	
	public ExchangeDao() {
		try {
			prop.loadFromXML(new FileInputStream( PointDao.class.getResource("/db/sql/shop/mp-exchange-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Exchange select(Connection conn) {
		// select문 -> ResultSet(한행) ->Exchange
		Exchange e = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("select");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			r
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}
	
	
	
	
	
	
}
