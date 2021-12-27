package com.pm.admin_Mem.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.common.model.vo.PageInfo;
import com.pm.member.model.vo.Member;

public class AdminMemDao {
	
private Properties prop = new Properties();
	
	public AdminMemDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMemDao.class.getResource("/db/sql/admin/adminMember-mapper.xml").getPath()));
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
	
	public ArrayList<Member> selectList(Connection conn, PageInfo pi){
		// select문 => ResultSet (여러행) => ArrayList<Board>
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			/*
			 * currentPage : 1 => 시작값:1  | 끝값:10
			 * currentPage : 2 => 시작값:11 | 끝값:20
			 * currentPage : 3 => 시작값:21 | 끝값:30
			 * 
			 * 시작값 : (currentPage - 1) * boardLimit + 1
			 * 끝값 : 시작값 + boardLimit - 1
			 * 
			 */
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("Mem_no"),
								   rset.getString("Mem_name"),
								   rset.getString("Mem_email"),
								   rset.getString("Mem_tel"),
								   rset.getString("Nickname"),
								   rset.getInt("Ad_point")
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
	public Member selectMember(Connection conn, int memNo) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("Mem_no"),
							   rset.getString("Mem_name"),
							   rset.getString("Mem_email"),
							   rset.getString("Mem_tel"),
							   rset.getString("Nickname"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	public int memDelete(Connection conn, int memNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("memDelete");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int updateMem(Connection conn, Member m) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMem");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getMemEmail());
			pstmt.setString(3, m.getMemTel());
			pstmt.setString(4, m.getNickname());
			pstmt.setInt(5, m.getMemNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int updatePoint(Connection conn, Member mp) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePoint");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, mp.getAdPoint());
			pstmt.setInt(2, mp.getMemNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
