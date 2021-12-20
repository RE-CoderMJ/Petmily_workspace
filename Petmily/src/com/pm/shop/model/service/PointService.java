package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.dao.PointDao;
import com.pm.shop.model.vo.Point;

public class PointService {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new PointDao().selectListCount(conn);

		close(conn);
		return listCount;
	}
	
	public ArrayList<Point> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Point> list = new PointDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
		
	}
	
	public int selectPointSum() {
		Connection conn = getConnection();
		int pointSum = new PointDao().selectPointSum(conn);

		close(conn);
		return pointSum; 
		
	}
	
	

}
