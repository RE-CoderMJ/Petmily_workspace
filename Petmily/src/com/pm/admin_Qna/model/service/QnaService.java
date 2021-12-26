package com.pm.admin_Qna.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Qna.model.dao.QnaDao;
import com.pm.admin_Qna.model.vo.Qna;
import com.pm.common.model.vo.PageInfo;

public class QnaService {
	
	/* 1. qna 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new QnaDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Qna> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Qna> list = new QnaDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 3. qna 등록 */
	public int insertFaq(Qna q) {
		Connection conn = getConnection();
		int result = new QnaDao().insertQna(conn, q);
		close(conn);
		return result;
	
	}
	
	
	/* 4. qna 조회 */
	public Qna selectQna(int qnaNo) {
		Connection conn = getConnection();
		Qna q = new QnaDao().selectQna(conn, qnaNo);
		close(conn);
		return q;
	}
	
	/* 5. qna 수정 */
	public int updateQna(Qna q) {
		Connection conn = getConnection();
		int result = new QnaDao().updateQna(conn, q);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/* 6. qna 삭제 */
	public int deleteQna(int qnaNo) {
		Connection conn = getConnection();
		int result = new QnaDao().deleteQna(conn, qnaNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	

}
