package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shop.model.dao.LikeDao;
import com.pm.shop.model.vo.Like;

public class LikeService {
	public ArrayList<Like> selectList(int userNo){
		Connection conn = getConnection();
		ArrayList<Like> list = new LikeDao().selectList(conn, userNo);
		
		close(conn);
		
		return list;
		
		
	}
	
	
	public int deleteLike(Like l) {
		Connection conn = getConnection();
		int result = new LikeDao().deleteLike(conn, l);
		
		close(conn);
		return result;
		
	}
}
