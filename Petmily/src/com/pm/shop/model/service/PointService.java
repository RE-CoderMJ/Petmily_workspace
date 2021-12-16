package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.shop.model.vo.Point;

public class PointService {
	
	public ArrayList<Point> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Point> list = new PointDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
		
	}
	
	

}
