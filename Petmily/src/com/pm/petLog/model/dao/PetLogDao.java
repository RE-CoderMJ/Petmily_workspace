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
			pstmt.setString(1, pl.getMemNo());
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
				
				list.add(pl);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
} 
