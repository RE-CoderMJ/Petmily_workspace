package com.pm.boards.market.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.ask.model.dao.AskDao;
import com.pm.boards.ask.model.vo.Ask;
import com.pm.boards.market.model.dao.MarketDao;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;

public class MarketService {

	public int enrollMarket(Market m, ArrayList<Attachment> list) {
		
		Connection conn = getConnection();
		
		int result1 = new MarketDao().insertMarket(conn, m);
		int result2 = new MarketDao().insertAttachmentList(conn, list);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public ArrayList<Market> selectMarketList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Market> list = new MarketDao().selectMarketList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public int increaseCount(int marketNo) {
		
		Connection conn = getConnection();
		int result = new MarketDao().increaseCount(conn, marketNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	public Market selectMarket(int marketNo) {
		Connection conn = getConnection();
		Market m = new MarketDao().selectMarket(conn, marketNo);
		
		close(conn);
		return m;
	}
	
	public ArrayList<Attachment> selectAttachmentList(int marketNo){
		Connection conn = getConnection();
		ArrayList<Attachment> list = new MarketDao().selectAttachmentList(conn, marketNo);
		close(conn);
		return list;
	}
	
	public int updateMarket(Market m, ArrayList<Attachment> list) {
		
		Connection conn = getConnection();
		
		int result1 = new MarketDao().updateMarket(conn, m);
		
		int result2 = 1;
		if(!list.isEmpty()) {
			for(Attachment att: list) {
				if(att.getAttachmentNo()!= 0) {
					result2 = new MarketDao().updateAttachment(conn, att);
				}else {
					result2 = new MarketDao().insertNewAttachment(conn, att);
				}
				
				if(!(result2>0)){
					   result2 = 0;
					   break; // for문 돌면서 sql문 실행시키는걸 빠져나가도록
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
	
	public int deleteMarket(int marketNo) {
		
		Connection conn = getConnection();
		int result = new MarketDao().deleteMarket(conn, marketNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int selectMarketCount() {
		Connection conn = getConnection();
		int listCount = new MarketDao().selectMarketCount(conn);
		close(conn);
		return listCount;
	}

	public int insertReply(Reply r) {
		Connection conn = getConnection();
		int result = new MarketDao().insertReply(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public int selectReplyCount(int mno) {
		Connection conn = getConnection();
		int replyCount = new MarketDao().selectReplyCount(conn, mno);
		close(conn);
		return replyCount;
	}

	public ArrayList<Reply> selectReplyList(PageInfo pi, int mno) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new MarketDao().selectReplyList(conn, pi, mno);
		close(conn);
		return list;
	}

	public ArrayList<Market> selectMainList() {
		Connection conn = getConnection();
		ArrayList<Market> mMarketList = new MarketDao().selectMainList(conn);
		close(conn);
		return mMarketList;
	}
}
