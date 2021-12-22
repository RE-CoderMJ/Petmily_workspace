package com.pm.admin_Shopping.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Shopping.model.dao.AdminShoppingDao;
import com.pm.admin_Shopping.model.vo.AdminShopping;
import com.pm.boards.market.model.dao.MarketDao;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;

public class AdminShoppingService {
	
	public int insertShoppingPd(AdminShopping as, ArrayList<Attachment> list) {

		Connection conn = getConnection();
		
		int result1 = new AdminShoppingDao().insertShoppingPd(conn, as);
		int result2 = new AdminShoppingDao().insertAttachmentList(conn, list);
		
		if(result1 >0 && result2 >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2;
	}
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new AdminShoppingDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	public ArrayList<AdminShopping> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<AdminShopping> aslist = new AdminShoppingDao().selectList(conn, pi);
		close(conn);
		return aslist;
	}
	public AdminShopping selectProduct(int ProductNo) {
		Connection conn = getConnection();
		AdminShopping as = new AdminShoppingDao().selectProduct(conn, ProductNo);
		close(conn);
		return as;
	}
	
	public ArrayList<Attachment> selectAttachmentList(int ProductNo) {
		Connection conn = getConnection();
		ArrayList<Attachment> list = new MarketDao().selectAttachmentList(conn, ProductNo);
		close(conn);
		return list;
	}
	public int updateProduct(AdminShopping as, ArrayList<Attachment> list) {
		
		Connection conn = getConnection();
		int result1 = new AdminShoppingDao().updateProduct(conn, as);
		
		int result2 = 1;
		
		if(list != null) { // 새로운 첨부파일이 있었을 경우
			
			for(Attachment at2: list) {
				
				if(at2.getAttachmentNo()!= 0) { // 기존의 첨부파일이 있었을 경우
					result2 = new AdminShoppingDao().updateAttachment(conn, at2);
				}else { // => Attachment Insert
					result2 = new AdminShoppingDao().insertNewAttachment(conn, at2);
				}
			}
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2;
		
	}
}
