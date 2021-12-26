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
	
	public ArrayList<Like> selectList(Connection conn, int userNo){
		
		ArrayList<Like> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
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
	
	// 찜한 상품 삭제
	public int deleteLike(Connection conn, Like l) {
		// delete문 -> 처리된 행수 -> 트랜잭션 처리
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,l.getProductNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
}
