package com.pm.admin_Notify.model.dao;

import static com.pm.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Notify.model.vo.AdminNotify;

public class AdminNotifyDao {
	
	private Properties prop = new Properties();
	
	public AdminNotifyDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(AdminNotifyDao.class.getResource("/db/sql/admin/notify-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<AdminNotify> selectNotifyList(Connection conn) {
		
		ArrayList<AdminNotify> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNotifyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new AdminNotify(rset.getInt("report_No"),
						 				 rset.getString("client_Id"),
						 				 rset.getString("comments"),
						 				 rset.getString("board_Type"),
						 				 rset.getInt("board_No"),
						 				 rset.getString("report_Id"),
						 				 rset.getString("report_Reason"),
						 				 rset.getString("report_Content"),
						 				 rset.getDate("report_Date")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
		
	}

}
