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
import com.pm.common.model.vo.Reply;

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

	public int updateQna(Qna q, Attachment at) {
		Connection conn = getConnection();
		
		int qResult = new QnaDao().updateQna(conn, q);
		
		int atResult = 1;
		if(at != null) {
			
			if(at.getAttachmentNo() != 0) { // 기존 첨부파일 있을 경우 => UPDATE				
				atResult = new QnaDao().updateAttachment(conn, at);
			} else { // 없을 경우 => INSERT
				atResult = new QnaDao().insertNewAttachment(conn, at);
			}
		}
		
		if(qResult * atResult > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return qResult * atResult;
	}

	public int deleteQna(int qnaNo) {
		Connection conn = getConnection();
		
		int result = new QnaDao().deleteQna(conn, qnaNo);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}

	public ArrayList<Reply> selectReplyList(/*PageInfo pi, */int qnaNo) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new QnaDao().selectReplyList(conn, /*pi, */qnaNo);
		
		close(conn);
		return list;
	}

	
	


}
