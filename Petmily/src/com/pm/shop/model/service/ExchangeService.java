package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;

import com.pm.shop.model.dao.ExchangeDao;
import com.pm.shop.model.vo.Exchange;
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

	public int insertExchanage(Exchange ec) {
		Connection conn = getConnection();
		
		int result = new ExchangeDao().insertBoard(conn, ec);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	
	/*
	public void select() {
		Connection conn = getConnection();
		new ExchangeDao().select(conn);

		close(conn);
		
	}
	*/
	
	
}
