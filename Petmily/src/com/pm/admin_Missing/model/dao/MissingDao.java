package com.pm.admin_Missing.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Missing.model.vo.Missing;
import com.pm.common.model.vo.PageInfo;

public class MissingDao {
	
	private Properties prop = new Properties();
	
	public MissingDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MissingDao.class.getResource("/db/sql/admin/missing-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	/* 1. <찾고있어요> 전체게시글 수 */
	public int selectListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Missing> selectList(Connection conn, PageInfo pi) {
		ArrayList<Missing> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Missing(rset.getInt("missing_no"),
								 	 rset.getString("missing_writer"),
								 	 rset.getString("category"),
								 	 rset.getString("missing_writer"),
								 	 rset.getString("enroll_date"),
								 	 rset.getString("location")));
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return  list;
		
	}
	
	
	/* 4. <찾고있어요> 조회*/
	public Missing selectMissing(Connection conn, int missingNo) {
		Missing m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMissing");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, missingNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Missing(rset.getInt("missing_no"),
								rset.getString("missing_writer"),
								rset.getString("category"),
								rset.getString("d_category"),
								rset.getString("enroll_date"),
								rset.getString("location"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	
	/* 6. <찾고있어요> 삭제 */
	public int deleteMissing(Connection conn, int missingNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMissing");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, missingNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	

}
