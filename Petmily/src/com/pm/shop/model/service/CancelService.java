package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.dao.CancelDao;
import com.pm.shop.model.dao.CartDao;
import com.pm.shop.model.dao.ExchangeDao;
import com.pm.shop.model.vo.Cancel;
import com.pm.shop.model.vo.Cart;
import com.pm.shop.model.vo.Exchange;

public class CancelService {
	public int selectListCount(int userNo) {
		Connection conn = getConnection();
		int listCount = new CancelDao().selectListCount(conn, userNo);

		close(conn);
		return listCount;
	}
	
	//전체 리스트
	public ArrayList<Cancel> selectList(PageInfo pi, int userNo){
		Connection conn = getConnection();
		ArrayList<Cancel> list = new CancelDao().selectList(conn, pi, userNo);
		
		close(conn);
		
		return list;		
	}
	
	
	// 기간별 조회리스트
	public ArrayList<Cancel> selectTermList(int search, PageInfo pi, int userNo){
		Connection conn = getConnection();
		ArrayList<Cancel> termList = new CancelDao().selectTermList(conn, search, pi, userNo);
		
		close(conn);
		return termList;
	}
	
	
	// 상세조회
	public Cancel selectDetailList(int orderNo, int userNo) {
		Connection conn = getConnection();
		Cancel c = new CancelDao().selectDetailList(conn, orderNo, userNo);
		
		close(conn);
		return c;
	}
	
	//주문취소창 조회
	public Cancel selectCancelApp(int userNo, int orderNo) {
		Connection conn = getConnection();
		Cancel ca1 = new CancelDao().selectCancelApp(conn, userNo, orderNo);
		
		close(conn);
		return ca1;
	}
	
	// 총개수, 총금액
	public Cancel selectSum(int userNo, int orderNo) {
		Connection conn = getConnection();
		Cancel sum = new CancelDao().selectSum(conn, userNo, orderNo);
		
		close(conn);
		return sum;
	}
	

	//주문취소신청
	public int insertCancel(Cancel cc) {
		Connection conn = getConnection();
		
		int result = new CancelDao().insertCancel(conn, cc);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
	
}
