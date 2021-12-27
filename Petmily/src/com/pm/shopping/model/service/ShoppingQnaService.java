package com.pm.shopping.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shopping.model.dao.ShoppingQnaDao;
import com.pm.shopping.model.vo.ShoppingQna;
import com.pm.common.model.vo.PageInfo;

public class ShoppingQnaService {


	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ShoppingQnaDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	

	public ArrayList<ShoppingQna> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<ShoppingQna> list = new ShoppingQnaDao().selectList(conn, pi);
		close(conn);
		return list;
	}

	public int insertShoppingQna(ShoppingQna s) {
		Connection conn = getConnection();
		int result1 = new ShoppingQnaDao().insertShoppingQna(conn, s);
		int result2 = 1;
		if(at != null) {
			
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result1 * result2;
	}
	
	public int increaseCount(int pinquiryNo) {
		Connection conn = getConnection();
		int result = new ShoppingQnaDao().increaseCount(conn, pinquiryNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public ShoppingQna selectShoppingQna(int pinquiryNo) {
		Connection conn = getConnection();
		ShoppingQna s = new ShoppingQnaDao().selectShoppingQna(conn, pinquiryNo);
		
		close(conn);
		return s;
	}

	public int updateShoppingQna(ShoppingQna s) {
		Connection conn = getConnection();
		
		int qResult = new ShoppingQnaDao().updateShoppingQna(conn, s);
		
		int atResult = 1;
				
		if(qResult * atResult > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return qResult * atResult;
	}
	
	public int deleteShoppingQna(int pinquiryNo) {
		Connection conn = getConnection();
		
		int result = new ShoppingQnaDao().deleteShoppingQna(conn, pinquiryNo);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}

}

