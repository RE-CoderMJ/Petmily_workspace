package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shop.model.dao.CartDao;
import com.pm.shop.model.vo.Cart;
public class CartService {

	public ArrayList<Cart> selectList(int userNo){
		Connection conn = getConnection();
		ArrayList<Cart> list = new CartDao().selectList(conn, userNo);
		
		close(conn);
		
		return list;
		
		
	}
	
	public Cart selectSum(int userNo) {
		Connection conn = getConnection();
		Cart c = new CartDao().selectSum(conn, userNo);
		
		close(conn);
		return c;
	}
	
}
