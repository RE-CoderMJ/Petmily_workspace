package com.pm.boards.missing.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.ask.model.dao.AskDao;
import com.pm.boards.missing.model.dao.MissingDao;
import com.pm.boards.missing.model.vo.Missing;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

public class MissingService {
	
	public int enrollMissing(Missing mi, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new MissingDao().insertMissing(conn, mi);
		int result2 = new MissingDao().insertAttachmentList(conn, list);
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public ArrayList<Missing> selectMissingList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Missing> list = new MissingDao().selectMissingList(conn, pi);
		close(conn);
		
		return list;
	}
	
	public int increaseCount(int miNo) {
		Connection conn = getConnection();
		int result = new MissingDao().increaseCount(conn, miNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	public Missing selectMissing(int miNo) {
		Connection conn = getConnection();
		
		Missing mi = new MissingDao().selectMissing(conn, miNo);
		close(conn);
		
		return mi;
	}
	
	public ArrayList<Attachment> selectAttachmentList(int miNo){
		Connection conn = getConnection();
		
		ArrayList<Attachment> list = new MissingDao().selectAttachmentList(conn, miNo);
		close(conn);
		
		return list;
	}
	
	public int updateMissing(Missing mi, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new MissingDao().updateMissing(conn, mi);
		
		int result2 = 1;
		if(!list.isEmpty()) {
			for(Attachment att:list) {
				if(att.getAttachmentNo()!=0) {
					result2 = new MissingDao().updateAttachment(conn, att);
				}else {
					result2 = new MissingDao().insertNewAttachment(conn, att);
				}
				
				if(!(result2>0)) {
					result2 = 0;
					break;
				}
			}
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public int deleteMissing(int miNo) {
		Connection conn = getConnection();
		
		int result = new MissingDao().deleteMissing(conn, miNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int selectMissingCount() {
		Connection conn = getConnection();
		int listCount = new MissingDao().selectMissingCount(conn);
		close(conn);
		return listCount;
	}

	public int insertReply(Reply r) {
		Connection conn = getConnection();
		int result = new MissingDao().insertReply(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public int selectReplyCount(int miNo) {
		Connection conn = getConnection();
		int replyCount = new MissingDao().selectReplyCount(conn, miNo);
		close(conn);
		return replyCount;
	}

	public ArrayList<Reply> selectReplyList(PageInfo pi, int miNo) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new MissingDao().selectReplyList(conn, pi, miNo);
		close(conn);
		return list;
	}
}
