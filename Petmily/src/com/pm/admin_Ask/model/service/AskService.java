package com.pm.admin_Ask.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Ask.model.dao.AskDao;
import com.pm.admin_Ask.model.vo.Ask;
import com.pm.common.model.vo.PageInfo;


public class AskService {

	/* 1. <궁금해요> 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new AskDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Ask> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Ask> list = new AskDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 4. <궁금해요> 조회 */
	public Ask selectAsk(int askNo) {
		Connection conn = getConnection();
		Ask a = new AskDao().selectAsk(conn, askNo);
		close(conn);
		return a;
	}
	
	/* 6. <궁금해요> 삭제 */
	public int deleteAsk(int askNo) {
		Connection conn = getConnection();
		int result = new AskDao().deleteAsk(conn, askNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
