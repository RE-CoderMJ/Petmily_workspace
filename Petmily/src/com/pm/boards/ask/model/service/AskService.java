package com.pm.boards.ask.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.ask.model.dao.AskDao;
import com.pm.boards.ask.model.vo.Ask;
import com.pm.boards.market.model.dao.MarketDao;
import com.pm.common.model.vo.Attachment;

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
	
	public ArrayList<Ask> selectAskList(){
		Connection conn = getConnection();
		
		ArrayList<Ask> list = new AskDao().selectAskList(conn);
		
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

}
