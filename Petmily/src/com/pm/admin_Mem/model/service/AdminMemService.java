package com.pm.admin_Mem.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Mem.model.dao.AdminMemDao;
import com.pm.common.model.vo.PageInfo;
import com.pm.member.model.vo.Member;

public class AdminMemService {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new AdminMemDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	public ArrayList<Member> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminMemDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	

}
