package com.pm.myPage.model.dao;

import static com.pm.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.common.model.vo.PageInfo;
import com.pm.myPage.model.vo.MyPost;

public class MyPageDao {
	
	private Properties prop = new Properties();
	
	public MyPageDao() {
		try {
			prop.loadFromXML(new FileInputStream(MyPageDao.class.getResource("/db/sql/myPage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MyPost> selectList(Connection conn, PageInfo pi, int userNo) {
		ArrayList<MyPost> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new MyPost(rset.getString("title"),
									rset.getDate("enroll_date"),
									rset.getInt("count"),
									rset.getInt("mem_no"),
									rset.getString("category")
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
