package com.pm.shop.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.pm.shop.model.dao.ExchangeDao;

public class ExchangeService {

	public void Select() {
		Connection conn = getConnection();
		new ExchangeDao().select(conn);

		close(conn);

	}
}
