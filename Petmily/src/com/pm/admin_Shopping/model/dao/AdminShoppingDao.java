package com.pm.admin_Shopping.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.sql.ResultSet;

import static com.pm.common.JDBCTemplate.*;

import com.pm.admin_Shopping.model.vo.AdminShopping;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;

public class AdminShoppingDao {
	
private Properties prop = new Properties();
	
	public AdminShoppingDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminShoppingDao.class.getResource("/db/sql/admin/adminShopping-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertShoppingPd(Connection conn, AdminShopping as) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertShoppingPd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(as.getCategory()));
			pstmt.setString(2, as.getProductName());
			pstmt.setString(3, as.getProductOp());
			pstmt.setInt(4, as.getPrice());
			pstmt.setString(5, as.getExplain());
			pstmt.setString(6, as.getDetail());
			pstmt.setInt(7, as.getAmount());
			pstmt.setInt(8,as.getManagerNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertAttachmentList(Connection conn, ArrayList<Attachment> list) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachmentList");
		
		try {
			
			for(Attachment at : list) {
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, at.getOriginName()); 
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
				pstmt.setInt(4, at.getFileLevel());
				
				result = pstmt.executeUpdate();
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
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
	
	public ArrayList<AdminShopping> selectList(Connection conn, PageInfo pi){
		// select문 => ResultSet (여러행) => ArrayList<Board>
		ArrayList<AdminShopping> aslist = new ArrayList<>();
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
				aslist.add(new AdminShopping(rset.getInt("product_No"),
								   rset.getString("category"),
								   rset.getString("product_Name"),
								   rset.getInt("price"),
								   rset.getInt("amount")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return aslist;
		
	}
	public AdminShopping selectProduct(Connection conn, int ProductNo) {
			
			AdminShopping as = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectProduct");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ProductNo);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					as = new AdminShopping(rset.getInt("product_no"),
									       rset.getString("category"),
									       rset.getString("product_name"),
									       rset.getString("product_op"),
									       rset.getInt("price"),
									       rset.getString("explain"),
									       rset.getString("detail"),
									       rset.getInt("amount")
									       );
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			//System.out.println(as);
			return as;
		}
	
	public ArrayList<Attachment> selectAttachmentList(Connection conn, int ProductNo){
		
		System.out.println(ProductNo);
		ArrayList<Attachment> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachmentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ProductNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Attachment at = new Attachment();
				at.setAttachmentNo(rset.getInt("attachment_no"));
				at.setOriginName(rset.getString("origin_name"));
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
	public int updateProduct(Connection conn, AdminShopping as) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(as.getCategory()));
			pstmt.setString(2, as.getProductName());
			pstmt.setString(3, as.getProductOp());
			pstmt.setInt(4, as.getPrice());
			pstmt.setString(5, as.getExplain());
			pstmt.setString(6, as.getDetail());
			pstmt.setInt(7, as.getAmount());
			pstmt.setInt(8, as.getProductNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	public int updateAttachment(Connection conn, Attachment at2) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at2.getOriginName());
			pstmt.setString(2, at2.getChangeName());
			pstmt.setString(3, at2.getFilePath());
			pstmt.setInt(4, at2.getAttachmentNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int insertNewAttachment(Connection conn, Attachment at2) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNewAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at2.getOriginName());
			pstmt.setString(2, at2.getChangeName());
			pstmt.setInt(3, at2.getRefNo());
			pstmt.setString(4, at2.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}
	public int spDelete(Connection conn, int productNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("spDelete");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, productNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	
}
