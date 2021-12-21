package com.pm.boards.qna.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.qna.model.dao.QnaDao;
import com.pm.boards.qna.model.vo.Qna;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;

public class QnaService {

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new QnaDao().selectListCount(conn);
		
		close(conn);
		return listCount;
	}

	public ArrayList<Qna> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Qna> list = new QnaDao().selectList(conn, pi);
		
		close(conn);
		return list;
	}

	public int insertQna(Qna q, Attachment at) {
		Connection conn = getConnection();
		int result1 = new QnaDao().insertQna(conn, q);
		int result2 = 1;
		if(at != null) {
			result2 = new QnaDao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result1 * result2;
	}

	public int increaseCount(int qnaNo) {
		Connection conn = getConnection();
		int result = new QnaDao().increaseCount(conn, qnaNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public Qna selectQna(int qnaNo) {
		Connection conn = getConnection();
		Qna q = new QnaDao().selectQna(conn, qnaNo);
		
		close(conn);
		return q;
	}

	public Attachment selectAttachment(int qnaNo) {
		Connection conn = getConnection();
		Attachment at = new QnaDao().selectAttachment(conn, qnaNo);
		
		close(conn);
		return at;
	}


}
