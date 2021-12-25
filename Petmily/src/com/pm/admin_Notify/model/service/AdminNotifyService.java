package com.pm.admin_Notify.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Notify.model.dao.AdminNotifyDao;
import com.pm.admin_Notify.model.vo.AdminNotify;

public class AdminNotifyService {
	
	public ArrayList<AdminNotify> selectNotifyList() {
		Connection conn = getConnection();
		
		ArrayList<AdminNotify> list = new AdminNotifyDao().selectNotifyList(conn);
		
		close(conn);
		
		return list;
	}
	
}
