package com.pm.boards.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.qna.model.dao.QnaDao;
import com.pm.boards.qna.model.vo.Qna;
import com.pm.common.model.vo.PageInfo;

import static com.pm.common.JDBCTemplate.*;

public class QnaService {

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new QnaDao().selectListCount(conn);
		
		close(conn);
		return listCount;
	}

	public ArrayList<Qna> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Qna> list = new QnaDao().selectList(conn, pi);
		
		close(conn);
		return list;
	}

}
