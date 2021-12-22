package com.pm.admin_Petlog.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.admin_Petlog.model.vo.Petlog;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;

public class PetlogDao {
	
	private Properties prop = new Properties();
	
	public PetlogDao() {
		
		try {
			prop.loadFromXML(new FileInputStream( PetlogDao.class.getResource("/db/sql/admin/petlog-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	/* 1. petlog 전체게시글 수 */
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
	
	public ArrayList<Petlog> selectList(Connection conn, PageInfo pi) {
		ArrayList<Petlog> list = new ArrayList<>();
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
				list.add(new Petlog(rset.getInt("petlog_no"),
								    rset.getString("mem_no"),
								    rset.getString("enroll_date"),
								    rset.getString("petlog_content"),
								    rset.getString("status")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return  list;
		
	}
	
	public Petlog selectPetlog(Connection conn, int petlogNo) {
		Petlog p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPetlog");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, petlogNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Petlog(rset.getInt("petlog_no"),
							   rset.getString("mem_no"),
							   rset.getString("enroll_date"),
							   rset.getString("petlog_content"),
							   rset.getString("status"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return p;
		
	}
	
	public Attachment selectAttachment(Connection conn, int petlogNo) {
		Attachment at = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, petlogNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				at = new Attachment();
				at.setAttachmentNo(rset.getInt("attachment_no"));
				at.setOriginName(rset.getString("origin_name"));
				at.setChangeName(rset.getString("change_name"));
				at.setFilePath(rset.getString("file_path"));
				at.setFileLevel(rset.getInt("file_level"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return at;

	}
	/**/
	public ArrayList<Petlog> selectThumbnailList(Connection conn){
		ArrayList<Petlog> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectThumbnailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Petlog p = new Petlog();
				p.setMemNo(rset.getString("mem_no"));
				p.setTitleImg(rset.getString("titleimg"));
				p.setFileLevel(rset.getInt("file_level"));
				
				list.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	public ArrayList<Attachment> selectAttachmentList(Connection conn, int petlogNo) {
		ArrayList<Attachment> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, petlogNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Attachment at = new Attachment();
				at.setChangeName(rset.getString("change_name"));
				at.setFilePath(rset.getString("file_path"));
				
				list.add(at);

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
