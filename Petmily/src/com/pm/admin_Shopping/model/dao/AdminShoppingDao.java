package com.pm.admin_Shopping.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.pm.common.JDBCTemplate.*;

import com.pm.admin_Shopping.model.vo.AdminShopping;
import com.pm.boards.market.model.dao.MarketDao;
import com.pm.common.model.vo.Attachment;

public class AdminShoppingDao {
	
private Properties prop = new Properties();
	
	public AdminShoppingDao() {
		try {
			prop.loadFromXML(new FileInputStream(MarketDao.class.getResource("/db/sql/boards/adminShopping-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertShoppingPd(Connection conn, AdminShopping as) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertShoppingPd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(as.getCategory()));
			pstmt.setString(2, as.getProductName());
			pstmt.setString(3, as.getProductOp());
			pstmt.setInt(4, as.getPrice());
			pstmt.setString(5, as.getExplain());
			pstmt.setString(6, as.getDetail());
			pstmt.setInt(7, as.getAmount());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertAttachmentList(Connection conn, ArrayList<Attachment> list) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachmentList");
		
		try {
			
			for(Attachment at : list) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, at.getOriginName());
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
					
				result = pstmt.executeUpdate();
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
}
