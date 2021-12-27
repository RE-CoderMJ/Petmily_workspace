package com.pm.boards.ask.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.ask.model.dao.AskDao;
import com.pm.boards.ask.model.vo.Ask;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

public class AskService {

	public int enrollAsk(Ask a, ArrayList<Attachment> list) {
		
		Connection conn = getConnection();
		
		int result1 = new AskDao().insertAsk(conn, a);
		int result2 = new AskDao().insertAttachmentList(conn, list);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public ArrayList<Ask> selectAskList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Ask> list = new AskDao().selectAskList(conn, pi);
		
		close(conn);
		return list;
	}

	public int increaseCount(int ano) {
		Connection conn = getConnection();
		int result = new AskDao().increaseCount(conn, ano);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public Ask selectAsk(int ano) {
		Connection conn = getConnection();
		Ask a = new AskDao().selectAsk(conn, ano);
		close(conn);
		return a;
	}

	public ArrayList<Attachment> selectAttachmentList(int ano) {
		Connection conn = getConnection();
		ArrayList<Attachment> list = new AskDao().selectAttachmentList(conn, ano);
		close(conn);
		return list;
	}


	public int updateAsk(Ask a, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new AskDao().updateAsk(conn, a);
		
		int result2 = 1;
		if(!list.isEmpty()) {
			for(Attachment att : list) {
				if(att.getAttachmentNo() != 0) {
					result2 = new AskDao().updateAttachment(conn, att);
				}else {
					result2 = new AskDao().insertNewAttachment(conn, att);
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

	public int deleteAsk(int ano) {
		Connection conn = getConnection();
		int result = new AskDao().deleteAsk(conn, ano);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	public int selectAskCount() {
		Connection conn = getConnection();
		int listCount = new AskDao().selectAskCount(conn);
		close(conn);
		return listCount;
	}

	public int insertReply(Reply r) {
		Connection conn = getConnection();
		int result = new AskDao().insertReply(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public int selectReplyCount(int ano) {
		Connection conn = getConnection();
		int listCount = new AskDao().selectReplyCount(conn, ano);
		close(conn);
		return listCount;
	}

	public ArrayList<Reply> selectReplyList(PageInfo pi, int ano) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new AskDao().selectReplyList(conn, pi, ano);
		close(conn);
		return list;
	}
}
