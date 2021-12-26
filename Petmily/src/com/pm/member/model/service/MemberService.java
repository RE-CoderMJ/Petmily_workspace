package com.pm.member.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;

import com.pm.member.model.dao.MemberDao;
import com.pm.member.model.vo.Member;

public class MemberService {

	public Member loginMember(String userEmail, String userPwd) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userEmail, userPwd);
		
		close(conn);
		return m;
	}
	
	/*
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
	

	public int insertPetsroom() {
		Connection conn = getConnection();
		int result = new MemberDao().insertPetsroom(conn);
		
		close(conn);
		
		return result;
	}
	*/
	
	public int insertMember(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		int pResult = new MemberDao().insertPetsroom(conn);
		
		if(result * pResult > 0) {
			commit(conn);
		} else { 
			rollback(conn);
		}
		
		return result * pResult;
	}

	public Member updateMember(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().updateMember(conn, m);
		
		/*
		int atResult = 1;
		
		if(at != null) {
			if(at.getAttachmentNo() != 0) {
				atResult = new MemberDao().updateProfileImg(conn, at);
				System.out.println("3");
			} else { 
				atResult = new MemberDao().insertNewProfileImg(conn, at);
				System.out.println("4");				
			}
		}
		*/
		
		Member updateMem = null;	
		int memNo = m.getMemNo();
		
		if(result > 0) {
			commit(conn);
			updateMem = new MemberDao().selectMember(conn, memNo);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return updateMem;
	}

	public int nicknameCheck(String checkNick) {
		Connection conn = getConnection();
		int count = new MemberDao().nicknameCheck(conn, checkNick);
		
		close(conn);
		return count;
	}

	public String findEmail(String userName, String phone) {
		Connection conn = getConnection();
		String email = new MemberDao().findEmail(conn, userName, phone); 
		
		close(conn);
		
		
		return email;
	}

	public int deleteMember(int userNo, String userPwd, String delReason) {
		Connection conn = getConnection();
		int result = new MemberDao().deleteMember(conn, userNo, userPwd, delReason);
		
		if(result > 0) {
			commit(conn);
		} else { 
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	

}
