package com.pm.shopping.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shopping.model.dao.ShoppingQnaDao;
import com.pm.shopping.model.vo.ShoppingQna;
import com.pm.common.model.vo.PageInfo;



public class ShoppingQnaService {


	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ShoppingQnaDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	

	public ArrayList<ShoppingQna> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<ShoppingQna> list = new ShoppingQnaDao().selectList(conn, pi);
		close(conn);
		return list;
	}


}

