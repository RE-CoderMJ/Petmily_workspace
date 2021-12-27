package com.pm.boards.missing.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.boards.missing.model.vo.Missing;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;
public class MissingDao {
	
	private Properties prop = new Properties();
	
	public MissingDao() {
		try {
			prop.loadFromXML(new FileInputStream(MissingDao.class.getResource("/db/sql/boards/missing-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertMissing(Connection conn, Missing mi) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMissing");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mi.getMissingWriter());
			pstmt.setInt(2, mi.getCategory());
			pstmt.setInt(3, mi.getdCategory());
			pstmt.setString(4, mi.getpName());
			pstmt.setString(5, mi.getpGender());
			pstmt.setString(6, mi.getMissingDate());
			pstmt.setInt(7, mi.getpAgeFrom());
			pstmt.setInt(8, mi.getpAgeTo());
			pstmt.setString(9, mi.getLocation());
			pstmt.setString(10, mi.getFeature());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertAttachmentList(Connection conn, ArrayList<Attachment> list) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachmentList");
		
		try {
			
			for(Attachment att : list) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, att.getOriginName());
				pstmt.setString(2, att.getChangeName());
				pstmt.setString(3, att.getFilePath());
				
				result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public ArrayList<Missing> selectMissingList(Connection conn, PageInfo pi){
		ArrayList<Missing> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMissingList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Missing mi = new Missing();
				mi.setMissingNo(rset.getInt("missing_no"));
				mi.setMissingWriter(String.valueOf(rset.getInt("missing_writer")));
				mi.setCategory(rset.getInt("category"));
				mi.setdCategory(rset.getInt("d_category"));
				mi.setpName(rset.getString("pname"));
				mi.setpGender(rset.getString("gender"));
				mi.setMissingDate(rset.getString("mi_date"));
				mi.setpAgeFrom(rset.getInt("age_from"));
				mi.setLocation(rset.getString("location"));
				mi.setFeature(rset.getString("feature"));
				mi.setTitleImg(rset.getString("titleimg"));
				
				list.add(mi);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int increaseCount(Connection conn, int miNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, miNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public Missing selectMissing(Connection conn, int miNo) {
		Missing mi = new Missing();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMissing");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, miNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mi.setMissingNo(rset.getInt("missing_no"));
				mi.setMissingWriter(rset.getString("nickname"));
				mi.setCategory(rset.getInt("category"));
				mi.setdCategory(rset.getInt("d_category"));
				mi.setpName(rset.getString("pname"));
				mi.setpGender(rset.getString("gender"));
				mi.setMissingDate(rset.getString("mi_date"));
				mi.setpAgeFrom(rset.getInt("age_from"));
				mi.setpAgeTo(rset.getInt("age_to"));
				mi.setLocation(rset.getString("location"));
				mi.setFeature(rset.getString("feature"));
				mi.setCount(rset.getInt("count"));
				mi.setEnrollDate((rset.getString("enroll_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return mi;
	}
	
	public ArrayList<Attachment> selectAttachmentList(Connection conn, int miNo){
		ArrayList<Attachment> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachmentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, miNo);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Attachment att = new Attachment();
				att.setAttachmentNo(rset.getInt("attachment_no"));
				att.setOriginName(rset.getString("origin_name"));
				att.setChangeName(rset.getString("change_name"));
				att.setFilePath(rset.getString("file_path"));
				
				list.add(att);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int updateMissing(Connection conn, Missing mi) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMissing");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mi.getCategory());
			pstmt.setInt(2, mi.getdCategory());
			pstmt.setString(3, mi.getpName());
			pstmt.setString(4, mi.getpGender());
			pstmt.setString(5, mi.getMissingDate());
			pstmt.setInt(6, mi.getpAgeFrom());
			pstmt.setInt(7, mi.getpAgeTo());
			pstmt.setString(8, mi.getLocation());
			pstmt.setString(9, mi.getFeature());
			pstmt.setInt(10, mi.getMissingNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int updateAttachment(Connection conn, Attachment att) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, att.getOriginName());
			pstmt.setString(2, att.getChangeName());
			pstmt.setString(3, att.getFilePath());
			pstmt.setInt(4, att.getAttachmentNo());
			System.out.println(att);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertNewAttachment(Connection conn, Attachment att) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNewAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, att.getOriginName());
			pstmt.setString(2, att.getChangeName());
			pstmt.setInt(3, att.getRefNo());
			pstmt.setString(4, att.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int deleteMissing(Connection conn, int miNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMissing");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, miNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectMissingCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMissingCount");
		
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

	public int insertReply(Connection conn, Reply r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getReplyWriter());
			pstmt.setInt(2, r.getContentNo());
			pstmt.setString(3, r.getReplyContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectReplyCount(Connection conn, int miNo) {

		int replyCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReplyCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, miNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				replyCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return replyCount;

	}

	public ArrayList<Reply> selectReplyList(Connection conn, PageInfo pi, int miNo) {
		ArrayList<Reply> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReplyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, miNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Reply r = new Reply();
				r.setReplyNo(rset.getInt("reply_no"));
				r.setWriterNickname(rset.getString("nickname"));
				r.setWriterImg(rset.getString("mem_img"));
				r.setReplyContent(rset.getString("reply_content"));
				r.setModifyDate(rset.getString("modify_date"));
				
				list.add(r);
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
