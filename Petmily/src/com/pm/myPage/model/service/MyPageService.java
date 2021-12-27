package com.pm.myPage.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.PageInfo;
import com.pm.myPage.model.dao.MyPageDao;
import com.pm.myPage.model.vo.MyPost;

public class MyPageService {

	public ArrayList<MyPost> selectList(PageInfo pi, int userNo) {
		Connection conn = getConnection();
		ArrayList<MyPost> list = new MyPageDao().selectList(conn, pi, userNo);
		
		close(conn);
		return list;
	}
	
}
