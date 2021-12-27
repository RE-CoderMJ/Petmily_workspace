package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.dao.OrderSelectDao;
import com.pm.shop.model.vo.OrderSelect;

public class OrderSelectService {
	
	public int selectListCount(int userNo) {
		Connection conn = getConnection();
		int listCount = new OrderSelectDao().selectListCount(conn, userNo);

		close(conn);
		return listCount;
	}
	
	public ArrayList<OrderSelect> selectList(PageInfo pi, int userNo){
		Connection conn = getConnection();
		ArrayList<OrderSelect> list = new OrderSelectDao().selectList(conn, pi, userNo);
		
		close(conn);
		
		return list;
		
		
	}
	
	public ArrayList<OrderSelect> selectDetailList(int orderNo, int userNo){
		Connection conn = getConnection();
		ArrayList<OrderSelect> osdetail = new OrderSelectDao().selectDetailList(conn, orderNo, userNo);
		
		close(conn);
		
		return osdetail;
	}
}
