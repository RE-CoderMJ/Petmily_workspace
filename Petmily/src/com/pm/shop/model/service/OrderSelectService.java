package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.dao.OrderSelectDao;
import com.pm.shop.model.vo.OrderSelect;

public class OrderSelectService {
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new OrderSelectDao().selectListCount(conn);

		close(conn);
		return listCount;
	}
	
	public ArrayList<OrderSelect> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<OrderSelect> list = new OrderSelectDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
		
	}
}
