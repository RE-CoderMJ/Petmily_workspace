package com.pm.admin_Missing.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Missing.model.dao.MissingDao;
import com.pm.admin_Missing.model.vo.Missing;
import com.pm.common.model.vo.PageInfo;

public class MissingService {
	
	/* 1. <찾고있어요> 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new MissingDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Missing> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Missing> list = new MissingDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 4. <찾고있어요> 조회 */
	public Missing selectMissing(int missingNo) {
		Connection conn = getConnection();
		Missing m = new MissingDao().selectMissing(conn, missingNo);
		close(conn);
		return m;
	}
	
	/* 6. <찾고있어요> 삭제 */
	public int deleteMissing(int missingNo) {
		Connection conn = getConnection();
		int result = new MissingDao().deleteMissing(conn, missingNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	

}
