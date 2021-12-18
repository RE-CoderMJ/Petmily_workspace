package com.pm.admin_Faq.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Faq.model.vo.Faq;
import com.pm.admin_Notice.model.vo.Notice;
import com.pm.common.model.vo.PageInfo;

public class FaqDao {

	private Properties prop = new Properties();
	
	public FaqDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(FaqDao.class.getResource("/db/sql/admin/faq-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
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
	
	public int insertFaq(Connection conn, Faq f) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, f.getFaqTitle());
			pstmt.setString(2, f.getFaqContent());
			pstmt.setString(3, f.getFaqCate());
			pstmt.setString(4, f.getManagerNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
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
}
