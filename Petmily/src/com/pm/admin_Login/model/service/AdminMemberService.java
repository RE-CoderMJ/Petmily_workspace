package com.pm.admin_Login.model.service;

import java.sql.Connection;

import com.pm.admin_Login.model.dao.AdminMemberDao;
import com.pm.admin_Login.model.vo.AdminMember;

import static com.pm.common.JDBCTemplate.*;

public class AdminMemberService {
	
	public AdminMember loginAdmin(String managerId, String managerPwd) {
			
			Connection conn = getConnection();
			AdminMember m = new AdminMemberDao().loginAdmin(conn, managerId, managerPwd);
			
			close(conn);
			return m;
		}

}
