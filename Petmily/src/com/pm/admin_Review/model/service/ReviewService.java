package com.pm.admin_Review.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Review.model.dao.ReviewDao;
import com.pm.admin_Review.model.vo.Review;
import com.pm.common.model.vo.PageInfo;

public class ReviewService {
	
	/* 1. review 전체게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ReviewDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Review> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Review> list = new ReviewDao().selectList(conn, pi);
		close(conn);
		return list;
	}


}
