package com.pm.admin_Boards.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Boards.model.vo.Ask;
import com.pm.admin_Boards.model.vo.Missing;
import com.pm.admin_Faq.model.dao.FaqDao;
import com.pm.admin_Faq.model.vo.Faq;
import com.pm.admin_Boards.model.vo.Market;
import com.pm.common.model.vo.PageInfo;


public class BoardsDao {

	private Properties prop = new Properties();
	
	public BoardsDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(BoardsDao.class.getResource("/db/sql/admin/boards-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	// 여기 밑으로는 복붙만 해둠
	/* 1. faq 전체게시글 수 */
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
	public ArrayList<Faq> selectList(Connection conn, PageInfo pi) {
		ArrayList<Faq> list = new ArrayList<>();
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
				list.add(new Faq(rset.getInt("faq_no"),
								 rset.getString("faq_title"),
								 rset.getString("faq_content"),
							 	 rset.getString("faq_cate"),
							 	 rset.getString("status"),
								 rset.getString("manager_id")));
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return  list;
		
	}
	
	
	/* 4. faq 조회*/
	public Faq selectFaq(Connection conn, int faqNo) {
		Faq f = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				f = new Faq(rset.getInt("faq_no"),
							rset.getString("faq_title"),
							rset.getString("faq_content"),
							rset.getString("faq_cate"),
							rset.getString("manager_no"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return f;
	}
	
	/* 6. faq 삭제 */
	public int deleteFaq(Connection conn, int faqNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
}
