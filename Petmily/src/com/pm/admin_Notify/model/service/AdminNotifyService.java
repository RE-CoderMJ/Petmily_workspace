package com.pm.admin_Notify.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Notify.model.dao.AdminNotifyDao;
import com.pm.admin_Notify.model.vo.AdminNotify;
import com.pm.common.model.vo.PageInfo;

public class AdminNotifyService {
	
	public ArrayList<AdminNotify> selectNotifyList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<AdminNotify> list = new AdminNotifyDao().selectNotifyList(conn, pi);
		
		close(conn);
		
		return list;
	}
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new AdminNotifyDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public int deleteNotify(int reportNo) {
		Connection conn = getConnection();
		int result = new AdminNotifyDao().deleteNotify(conn, reportNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
}
