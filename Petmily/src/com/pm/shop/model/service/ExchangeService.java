package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.pm.shop.model.dao.ExchangeDao;
import com.pm.shop.model.vo.OrderSelect;

public class ExchangeService {

	public OrderSelect selectOrderProduct(int orderPnum) {
		Connection conn = getConnection();
		OrderSelect o = new ExchangeDao().selectOrderProduct(conn, orderPnum);

		close(conn);
		return o;
		
	}
	
	public OrderSelect selectOrderDelivery(int orderNo) {
		Connection conn = getConnection();
		OrderSelect od = new ExchangeDao().selectOrderDelivery(conn, orderNo);

		close(conn);
		return od;
	}
	
	
	
	/*
	public void select() {
		Connection conn = getConnection();
		new ExchangeDao().select(conn);

		close(conn);
		
	}
	*/
	
	
}
