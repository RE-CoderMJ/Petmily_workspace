package com.pm.admin_Mem.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

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
	public int selectBlackListCount() {
		Connection conn = getConnection();
		int listCount = new AdminMemDao().selectBlackListCount(conn);
		close(conn);
		return listCount;
	}
	public ArrayList<Member> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminMemDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	public ArrayList<Member> selectBlackList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminMemDao().selectBlackList(conn, pi);
		close(conn);
		return list;
	}
	public Member selectMember(int memNo) {
		Connection conn = getConnection();
		Member m = new AdminMemDao().selectMember(conn,memNo);
		close(conn);
		return m;
	}
	public int memDelete(int memNo) {
		Connection conn = getConnection();
		int result = new AdminMemDao().memDelete(conn,memNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	public int updateMem(Member m) {
		Connection conn = getConnection();
		int result = new AdminMemDao().updateMem(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		System.out.println(result);
		close(conn);
		
		return result;
	}
	public int updatePoint(Member mp) {
		Connection conn = getConnection();
		int result = new AdminMemDao().updatePoint(conn, mp);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		System.out.println(result);
		close(conn);
		
		return result;
	}

}
