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

}
