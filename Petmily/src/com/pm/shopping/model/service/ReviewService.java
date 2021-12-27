package com.pm.shopping.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shopping.model.dao.ReviewDao;
import com.pm.shopping.model.vo.Review;
import com.pm.boards.qna.model.dao.QnaDao;
import com.pm.boards.qna.model.vo.Qna;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;

public class ReviewService {

	public ArrayList<Review> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Review> list = new ReviewDao().selectList(conn, pi);
		
		close(conn);
		return list;
	}	
	
	public int insertReview(Review r, Attachment at) {
		Connection conn = getConnection();
		int result1 = new ReviewDao().insertReview(conn, q);
		int result2 = 1;
		if(at != null) {
			result2 = new ReviewDao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result1 * result2;
	}
	
	public Qna selectReview(int reviewNo) {
		Connection conn = getConnection();
		Review r = new ReviewDao().selectReview(conn, reviewNo);
		
		close(conn);
		return r;
	}
	
	public Attachment selectAttachment(int reviewNo) {
		Connection conn = getConnection();
		Attachment at = new ReviewDao().selectAttachment(conn, reviewNo);
		
		close(conn);
		return at;
	}

	public int updateQna(Review r, Attachment at) {
		Connection conn = getConnection();
		
		int rResult = new ReviewDao().updateReview(conn, q);
		
		int atResult = 1;
		if(at != null) {
			
			if(at.getAttachmentNo() != 0) { // 기존 첨부파일 있을 경우 => UPDATE				
				atResult = new ReviewDao().updateAttachment(conn, at);
			} else { // 없을 경우 => INSERT
				atResult = new ReviewDao().insertNewAttachment(conn, at);
			}
		}
		
		if(rResult * atResult > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return rResult * atResult;
	}
	
		
	
	
}
