package com.pm.admin_Faq.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Faq.model.dao.FaqDao;
import com.pm.admin_Faq.model.vo.Faq;

public class FaqService {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new FaqDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Faq> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectList(conn, pi);
		close(conn);
		return list;
		

}
