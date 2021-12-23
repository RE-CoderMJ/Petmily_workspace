package com.pm.petLog.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.common.model.vo.Attachment;
import com.pm.petLog.model.vo.PetLog;
import com.pm.petLog.model.vo.PetsRoom;

public class PetLogDao {
	
	private Properties prop = new Properties();
	
	public PetLogDao() {
		try {
			prop.loadFromXML(new FileInputStream(PetLogDao.class.getResource("/db/sql/petLog/petLog-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertPetLog(Connection conn, PetLog pl) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPetLog");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(pl.getMemNo()));
			pstmt.setString(2, pl.getPetLogContent());
			
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
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public ArrayList<PetLog> selectPetLogList(Connection conn, int memNo){
		ArrayList<PetLog> list = new ArrayList<>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectPetLogList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				PetLog pl = new PetLog();
				pl.setPetLogNo(rset.getInt("petlog_no"));
				pl.setMemNo(rset.getString("mem_no"));
				pl.setEnrollDate(rset.getString("enroll_date"));
				pl.setRoomName(rset.getString("room_name"));
				pl.setTitleImg(rset.getString("titleimg"));
				
				list.add(pl);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public PetsRoom selectPetsRoom(Connection conn, int memNo) {
		PetsRoom pr = new PetsRoom();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectPetsRoom");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				pr.setMemNo(rset.getInt("mem_no"));
				pr.setRoomName(rset.getString("room_name"));
				pr.setBio(rset.getString("bio"));
				pr.setpProfileImg(rset.getString("p_profile_img"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return pr;
	}
	
	public PetLog selectPetLog(Connection conn, int petLogNo) {
		PetLog pl = new PetLog();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectPetLog");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, petLogNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				pl.setPetLogNo(rset.getInt("petlog_no"));
				pl.setEnrollDate(rset.getString("enroll_date"));
				pl.setPetLogContent(rset.getString("petlog_content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return pl;
	}
	
	public ArrayList<Attachment> selectAttachmentList(Connection conn, int petLogNo){
		ArrayList<Attachment> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachmentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, petLogNo);
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
	
	
	public int updatePetLog(Connection conn, PetLog pl) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePetLog");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pl.getPetLogContent());
			pstmt.setInt(2, pl.getPetLogNo());
			
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
			pstmt.setInt(3, 6);
			pstmt.setInt(4, att.getRefNo());
			pstmt.setString(5, att.getFilePath());
			
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
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, att.getOriginName());
			pstmt.setString(2, att.getChangeName());
			pstmt.setString(3, att.getFilePath());
			pstmt.setInt(4, att.getAttachmentNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	 
	public int updatePetsRoom(Connection conn, PetsRoom pr) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePetsRoom");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pr.getRoomName());
			pstmt.setString(2, pr.getBio());
			pstmt.setInt(3, pr.getMemNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertPfNewAttachment(Connection conn, Attachment att) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNewAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, att.getOriginName());
			pstmt.setString(2, att.getChangeName());
			pstmt.setInt(3, 7);
			pstmt.setInt(4, att.getRefNo());
			pstmt.setString(5, att.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}
	/*
	public int updatePfAttachment(Connection conn, Attachment att) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, att.getOriginName());
			pstmt.setString(2, att.getChangeName());
			pstmt.setString(3, att.getFilePath());
			pstmt.setInt(4, att.getAttachmentNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	*/
	
	public Attachment selectAttachment(Connection conn, int memNo) {
		Attachment att = new Attachment();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				att.setAttachmentNo(rset.getInt("attachment_no"));
				att.setOriginName(rset.getString("origin_name"));
				att.setChangeName(rset.getString("change_name"));
				att.setFilePath(rset.getString("file_path"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return att;
	}
	
	public int deletePetLog(Connection conn, int petLogNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deletePetLog");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, petLogNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

} 
