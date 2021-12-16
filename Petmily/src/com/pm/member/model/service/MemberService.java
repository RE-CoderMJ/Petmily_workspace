package com.pm.member.model.service;

import java.sql.Connection;

import com.pm.common.JDBCTemplate;
import com.pm.member.model.dao.MemberDao;
import com.pm.member.model.vo.Member;

public class MemberService {

	public Member loginMember(String userEmail, String userPwd) {
		
		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().loginMember(conn, userEmail, userPwd);
		
		JDBCTemplate.close(conn);
		return m;
	}

}
