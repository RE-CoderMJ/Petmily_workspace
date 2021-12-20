package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.pm.shop.model.dao.ExchangeDao;
import com.pm.shop.model.vo.OrderProduct;

public class ExchangeService {

	public OrderProduct selectOrderProduct(int orderPnum) {
		Connection conn = getConnection();
		OrderProduct op = new ExchangeDao().selectOrderProduct(conn, orderPnum);

		close(conn);
		return op;
		
	}
	
	
	
	/*
	public void select() {
		Connection conn = getConnection();
		new ExchangeDao().select(conn);

		close(conn);
		
	}
	*/
	
	
}
