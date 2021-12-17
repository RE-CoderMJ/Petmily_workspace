package com.pm.boards.market.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.market.model.dao.MarketDao;
import com.pm.boards.market.model.vo.Market;
import com.pm.common.model.vo.Attachment;

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
	
	public ArrayList<Market> selectMarketList(){
		Connection conn = getConnection();
		ArrayList<Market> list = new MarketDao().selectMarketList(conn);
		
		close(conn);
		
		return list;
	}
}
