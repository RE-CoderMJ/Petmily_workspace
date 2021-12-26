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
	
	//전체 리스트
	public ArrayList<Cancel> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Cancel> list = new CancelDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
		
	}
	
	// 기간별 조회리스트
	public ArrayList<Cancel> selectTermList(int search, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Cancel> termList = new CancelDao().selectTermList(conn, search, pi);
		
		close(conn);
		return termList;
	}
	
	
	// 상세조회
	public Cancel selectDetailList(int orderNo) {
		Connection conn = getConnection();
		Cancel c = new CancelDao().selectDetailList(conn, orderNo);
		
		close(conn);
		return c;
	}
}
