package com.pm.admin_Faq.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Faq.model.dao.FaqDao;
import com.pm.admin_Faq.model.vo.Faq;
import com.pm.common.model.vo.PageInfo;

public class FaqService {
	
	/* 1. faq 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new FaqDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Faq> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 3. faq 등록 */
	public int insertFaq(Faq f) {
		Connection conn = getConnection();
		int result = new FaqDao().insertFaq(conn, f);
		close(conn);
		return result;
	
	}
	
	
	/* 4. faq 조회 */
	public Faq selectFaq(int faqNo) {
		Connection conn = getConnection();
		Faq f = new FaqDao().selectFaq(conn, faqNo);
		close(conn);
		return f;
	}
	

}
