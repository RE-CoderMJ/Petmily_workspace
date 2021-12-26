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

import com.pm.shop.model.vo.Like;

public class LikeDao {
private Properties prop = new Properties();
	
	public LikeDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(CartDao.class.getResource("/db/sql/shop/mp-like-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Like> selectList(Connection conn){
		
		ArrayList<Like> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1, user_no);
			
			rset = pstmt.executeQuery();
						
			while(rset.next()) {
				list.add(new Like(rset.getInt("product_no"),
								  rset.getString("product_name"),
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
}
