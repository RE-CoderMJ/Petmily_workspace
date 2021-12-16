package com.pm.admin_Faq.model.service;

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
