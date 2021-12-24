package com.pm.admin_Boards.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Boards.model.dao.BoardsDao;
import com.pm.common.model.vo.PageInfo;

public class BoardsService {

	/* 1. Boards 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new BoardsDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Boards> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Boards> list = new BoardsDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 4. Boards 조회 */
	public Boards selectBoards(int No) {
		Connection conn = getConnection();
		Boards b = new BoardsDao().selectBoards(conn, No);
		close(conn);
		return b;
	}
	
	/* 6. Boards 삭제 */
	public int deleteBoards(int No) {
		Connection conn = getConnection();
		int result = new BoardsDao().deleteBoards(conn, No);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
