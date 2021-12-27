package com.pm.admin_Inquiry.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;


import com.pm.admin_Inquiry.model.dao.InquiryDao;
import com.pm.admin_Inquiry.model.vo.Inquiry;
import com.pm.common.model.vo.PageInfo;

public class InquiryService {
	
	/* 1. inquiry 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new InquiryDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Inquiry> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Inquiry> list = new InquiryDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 3. 상품문의 등록 */
	public int insertInquiry(Inquiry i) {
		Connection conn = getConnection();
		int result = new InquiryDao().insertInquiry(conn, i);
		close(conn);
		return result;
	
	}
	
	
	/* 4. 상품문의 조회 */
	public Inquiry selectInquiry(int pinquiryNo) {
		Connection conn = getConnection();
		Inquiry i = new InquiryDao().selectInquiry(conn, pinquiryNo);
		close(conn);
		return i;
	}
	
	/* 5. 상품문의 수정 */
	public int updateInquiry(Inquiry i) {
		Connection conn = getConnection();
		int result = new InquiryDao().updateInquiry(conn, i);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/* 6. 상품문의 삭제 */
	public int deleteInquiry(int pinquiryNo) {
		Connection conn = getConnection();
		int result = new InquiryDao().deleteInquiry(conn, pinquiryNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	

}
