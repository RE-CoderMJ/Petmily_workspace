package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.shop.model.dao.CartDao;
import com.pm.shop.model.vo.Cart;
public class CartService {

	public ArrayList<Cart> selectList(){
		Connection conn = getConnection();
		ArrayList<Cart> list = new CartDao().selectList(conn);
		
		close(conn);
		
		return list;
		
		
	}
	
}
