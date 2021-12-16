package com.pm.admin_Login.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.pm.common.JDBCTemplate.*;
import com.pm.admin_Login.model.vo.AdminMember;

public class AdminMemberDao {
	
	private Properties prop = new Properties();
	
	public AdminMemberDao() {
		
		String filePath = AdminMemberDao.class.getResource("/db/sql/admin/adminMember-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public AdminMember loginAdmin(Connection conn, String managerId, String managerPwd) {
		
		AdminMember m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginAdmin");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, managerId);
			pstmt.setString(2, managerPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new AdminMember(
									rset.getInt("manager_no"),
									rset.getString("manager_id"),
									rset.getString("manager_pwd")
									);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return m;
	}
	
	

}
