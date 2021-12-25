package com.pm.admin_Market.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Market.model.dao.MarketDao;
import com.pm.admin_Market.model.vo.Market;
import com.pm.common.model.vo.PageInfo;


public class MarketService {

	/* 1. <중고거래> 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new MarketDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Market> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Market> list = new MarketDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	/* 4. <중고거래> 조회 */
	public Market selectMarket(int marketNo) {
		Connection conn = getConnection();
		Market m = new MarketDao().selectMarket(conn, marketNo);
		close(conn);
		return m;
	}
	
	/* 6. <중고거래> 삭제 */
	public int deleteMarket(int marketNo) {
		Connection conn = getConnection();
		int result = new MarketDao().deleteMarket(conn, marketNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
