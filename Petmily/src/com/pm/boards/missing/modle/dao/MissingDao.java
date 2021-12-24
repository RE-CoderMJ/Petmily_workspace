package com.pm.boards.missing.modle.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.boards.missing.modle.vo.Missing;
import com.pm.common.model.vo.Attachment;
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
}
