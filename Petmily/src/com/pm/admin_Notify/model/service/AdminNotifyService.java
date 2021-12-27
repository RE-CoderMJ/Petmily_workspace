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
	public int selectWarningListCount() {
		Connection conn = getConnection();
		int listCount = new AdminNotifyDao().selectWarningListCount(conn);
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
	public int updateReportCount(int reportNo) {
		
		Connection conn = getConnection();
		int result = new AdminNotifyDao().updateReportCount(conn, reportNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		//System.out.println(result);
		close(conn);
		
		return result;
		
	}
	public ArrayList<AdminNotify> selectNfWarningList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<AdminNotify> list = new AdminNotifyDao().selectNfWarningList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
}
