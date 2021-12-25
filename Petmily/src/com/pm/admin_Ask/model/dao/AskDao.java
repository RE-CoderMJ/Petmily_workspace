package com.pm.admin_Ask.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Ask.model.vo.Ask;
import com.pm.common.model.vo.PageInfo;

public class AskDao {

	private Properties prop = new Properties();
	
	public AskDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(AskDao.class.getResource("/db/sql/admin/ask-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	/* 1. <궁금해요> 전체게시글 수 */
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
	public ArrayList<Ask> selectList(Connection conn, PageInfo pi) {
		ArrayList<Ask> list = new ArrayList<>();
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
				list.add(new Ask(rset.getInt("ask_no"),
								 rset.getString("ask_writer"),
								 rset.getString("category"),
								 rset.getString("ask_title"),
								 rset.getString("enroll_date")));
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return  list;
		
	}
	
	
	/* 4. <궁금해요> 조회*/
	public Ask selectAsk(Connection conn, int askNo) {
		Ask a = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAsk");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, askNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				a = new Ask(rset.getInt("ask_no"),
							rset.getString("ask_writer"),
							rset.getString("category"),
							rset.getString("ask_title"),
							rset.getString("enroll_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return a;
	}
	
	/* 6. <궁금해요> 삭제 */
	public int deleteAsk(Connection conn, int askNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteAsk");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, askNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
