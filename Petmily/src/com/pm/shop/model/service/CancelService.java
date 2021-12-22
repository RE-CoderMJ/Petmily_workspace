package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.dao.CancelDao;
import com.pm.shop.model.vo.Cancel;

public class CancelService {
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new CancelDao().selectListCount(conn);

		close(conn);
		return listCount;
	}
	
	public ArrayList<Cancel> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Cancel> list = new CancelDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
		
	}
}
