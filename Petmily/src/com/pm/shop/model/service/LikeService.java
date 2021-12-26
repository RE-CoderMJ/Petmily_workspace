package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shop.model.dao.LikeDao;
import com.pm.shop.model.vo.Like;

public class LikeService {
	public ArrayList<Like> selectList(){
		Connection conn = getConnection();
		ArrayList<Like> list = new LikeDao().selectList(conn);
		
		close(conn);
		
		return list;
		
		
	}
}
