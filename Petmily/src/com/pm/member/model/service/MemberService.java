package com.pm.member.model.service;

import java.sql.Connection;

import static com.pm.common.JDBCTemplate.*;
import com.pm.member.model.dao.MemberDao;
import com.pm.member.model.vo.Member;

public class MemberService {

	public Member loginMember(String userEmail, String userPwd) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userEmail, userPwd);
		
		close(conn);
		return m;
	}

	public int insertMember(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else { 
			rollback(conn);
		}
		
		return result;
	}

}
